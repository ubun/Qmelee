#include "player.h"
#include "engine.h"
#include "room.h"
#include "client.h"
#include "standard.h"
#include "meleecard.h"
#include "settings.h"

Player::Player(QObject *parent)
    :QObject(parent), owner(false), ready(false), general(NULL), general2(NULL),
    hp(-1), mp(0), max_hp(-1), state("online"), seat(0), alive(true), //modify by ce add
    phase(NotActive),
    weapon(NULL), armor(NULL), defensive_horse(NULL), offensive_horse(NULL), relic(NULL), //modify by ce add
    face_up(true), chained(false)
{
}

void Player::setScreenName(const QString &screen_name){
    this->screen_name = screen_name;
}

QString Player::screenName() const{
    return screen_name;
}

bool Player::isOwner() const{
    return owner;
}

void Player::setOwner(bool owner){
    if(this->owner != owner){
        this->owner = owner;
        emit owner_changed(owner);
    }
}

bool Player::isReady() const{
    return ready;
}

void Player::setReady(bool ready){
    if(this->ready != ready){
        this->ready = ready;
        emit ready_changed(ready);
    }
}

void Player::setHp(int hp){
    if(hp <= max_hp && this->hp != hp){
        this->hp = hp;
        emit state_changed();
    }
}

int Player::getHp() const{
    return hp;
}

//modify by ce add
void Player::setMp(int mp){
    this->mp = mp;
    emit state_changed();
}

int Player::getMp() const{
    return mp;
}

int Player::getMaxHP() const{
    return max_hp;
}

void Player::setMaxHP(int max_hp){
    if(this->max_hp == max_hp)
        return;

    this->max_hp = max_hp;
    if(hp > max_hp)
        hp = max_hp;

    emit state_changed();
}

int Player::getLostHp() const{
    return max_hp - qMax(hp, 0);
}

bool Player::isWounded() const{
    if(hp < 0)
        return true;
    else
        return hp < max_hp;
}

General::Gender Player::getGender() const{
    if(general)
        return general->getGender();
    else
        return General::Neuter;
}

int Player::getSeat() const{
    return seat;
}

void Player::setSeat(int seat){
    this->seat = seat;
}

bool Player::isAlive() const{
    return alive;
}

bool Player::isDead() const{
    return !alive;
}

void Player::setAlive(bool alive){
    this->alive = alive;
}

QString Player::getFlags() const{
    QStringList flags_list;
    foreach(QString flag, flags)
        flags_list << flag;

    return flags_list.join("+");
}

void Player::setFlags(const QString &flag){
    static QChar unset_symbol('-');
    if(flag.startsWith(unset_symbol)){
        QString copy = flag;
        copy.remove(unset_symbol);
        flags.remove(copy);
    }else{
        flags.insert(flag);
    }
}

bool Player::hasFlag(const QString &flag) const{
    return flags.contains(flag);
}

void Player::clearFlags(){
    flags.clear();
}

int Player::getAttackRange() const{

    //modify by ce    
    if(hasFlag("no_range_limit") || getMark("no_range_limit"))
        return 99;
    
    int range = 1;
    
    if(weapon) {
        range = weapon->getRange();
    }
    
    if(getMark("rhinoceros")) {
        range = range + 2;
    }
    
    if(getMark("range_add_one")) {
        range = range + 1;
    }
    
    return range;
    
}

bool Player::inMyAttackRange(const Player *other) const{
    return distanceTo(other) <= getAttackRange();
}

void Player::setFixedDistance(const Player *player, int distance){
    if(distance == -1)
        fixed_distance.remove(player);
    else
        fixed_distance.insert(player, distance);
}

int Player::distanceTo(const Player *other) const{
    if(this == other)
        return 0;
        
    //modify by ce
    if(this->getMark("no_distance_limit"))
        return 1;

    if(fixed_distance.contains(other))
        return fixed_distance.value(other);

    int right = qAbs(seat - other->seat);
    int left = aliveCount() - right;
    int distance = qMin(left, right);

    distance += Sanguosha->correctDistance(this, other);

    // keep the distance >=1
    if(distance < 1)
        distance = 1;

    return distance;
}

void Player::setGeneral(const General *new_general){
    if(this->general != new_general){
        this->general = new_general;

        if(new_general && kingdom.isEmpty())
            setKingdom(new_general->getKingdom());

        emit general_changed();
    }
}

void Player::setGeneralName(const QString &general_name){
    const General *new_general = Sanguosha->getGeneral(general_name);
    setGeneral(new_general);
}

QString Player::getGeneralName() const{
    if(general)
        return general->objectName();
    else
        return "";
}

void Player::setGeneral2Name(const QString &general_name){
    const General *new_general = Sanguosha->getGeneral(general_name);
    if(general2 != new_general){
        general2 = new_general;

        emit general2_changed();
    }
}

QString Player::getGeneral2Name() const{
    if(general2)
        return general2->objectName();
    else
        return "";
}

const General *Player::getGeneral2() const{
    return general2;
}

QString Player::getState() const{
    return state;
}

void Player::setState(const QString &state){
    if(this->state != state){
        this->state = state;
        emit state_changed();
    }
}

void Player::setRole(const QString &role){
    if(this->role != role){
        this->role = role;
        emit role_changed(role);
    }
}

QString Player::getRole() const{
    return role;
}

Player::Role Player::getRoleEnum() const{
    static QMap<QString, Role> role_map;
    if(role_map.isEmpty()){
        role_map.insert("lord", Lord);
        role_map.insert("loyalist", Loyalist);
        role_map.insert("rebel", Rebel);
        role_map.insert("renegade", Renegade);
    }

    return role_map.value(role);
}

const General *Player::getAvatarGeneral() const{
    if(general)
        return general;

    QString general_name = property("avatar").toString();
    if(general_name.isEmpty())
        return NULL;
    return Sanguosha->getGeneral(general_name);
}

const General *Player::getGeneral() const{
    return general;
}

bool Player::isLord() const{
    return getRole() == "lord";
}

bool Player::hasSkill(const QString &skill_name) const{
    //modify by ce
    const Skill *skill = Sanguosha->getSkill(skill_name);
    if(getMark("@skill_forbid") && skill && skill->canForbid())
        return false;

    return hasInnateSkill(skill_name) || acquired_skills.contains(skill_name);
}

bool Player::hasInnateSkill(const QString &skill_name) const{
    if(general && general->hasSkill(skill_name))
        return true;

    if(general2 && general2->hasSkill(skill_name))
        return true;

    return false;
}

bool Player::hasLordSkill(const QString &skill_name) const{
    if(acquired_skills.contains(skill_name))
        return true;

    QString mode = getGameMode();
    if(mode == "06_3v3" || mode == "02_1v1" || mode == "02p")
        return false;

    if(isLord())
        return hasInnateSkill(skill_name);
	
	/* modify by ce del
    if(hasSkill("weidi")){
        foreach(const Player *player, parent()->findChildren<const Player *>()){
            if(player->isLord())
                return player->hasLordSkill(skill_name);
        }
    }
	*/
    return false;
}

void Player::acquireSkill(const QString &skill_name){
    acquired_skills.insert(skill_name);
}

void Player::loseSkill(const QString &skill_name){
    acquired_skills.remove(skill_name);
}

void Player::loseAllSkills(){
    acquired_skills.clear();
}

QString Player::getPhaseString() const{
    switch(phase){
    case Start: return "start";
    case Judge: return "judge";
    case Draw: return "draw";
    case Play: return "play";
    case Discard: return "discard";
    case Finish: return "finish";
    case NotActive:
    default:
        return "not_active";
    }
}

void Player::setPhaseString(const QString &phase_str){
    static QMap<QString, Phase> phase_map;
    if(phase_map.isEmpty()){
        phase_map.insert("start",Start);
        phase_map.insert("judge", Judge);
        phase_map.insert("draw", Draw);
        phase_map.insert("play", Play);
        phase_map.insert("discard", Discard);
        phase_map.insert("finish", Finish);
        phase_map.insert("not_active", NotActive);
    }

    setPhase(phase_map.value(phase_str, NotActive));
}

void Player::setEquip(const EquipCard *card){
    switch(card->location()){
        case EquipCard::WeaponLocation: weapon = qobject_cast<const Weapon*>(card); break;
        case EquipCard::ArmorLocation: armor = qobject_cast<const Armor*>(card); break;
        // case EquipCard::DefensiveHorseLocation: defensive_horse = qobject_cast<const Horse*>(card); break;
        // case EquipCard::OffensiveHorseLocation: offensive_horse = qobject_cast<const Horse*>(card); break;
        //modify by ce
        case EquipCard::HorseLocation: {
            
            const Horse *horse = qobject_cast<const Horse*>(card);
            
            if(horse->getCorrect() > 0) {
                defensive_horse = horse;
            }else {
                offensive_horse = horse;
            }    
            
            break;
        }
        case EquipCard::RelicLocation: relic = qobject_cast<const Relic*>(card); break;
    }
}

void Player::removeEquip(const EquipCard *equip){
    switch(equip->location()){
        case EquipCard::WeaponLocation: weapon = NULL; break;
        case EquipCard::ArmorLocation: armor = NULL; break;
        // case EquipCard::DefensiveHorseLocation: defensive_horse = NULL; break;
        // case EquipCard::OffensiveHorseLocation: offensive_horse = NULL; break;
        //modify by ce
        case EquipCard::HorseLocation: {
            defensive_horse = NULL;
            offensive_horse = NULL;
            break;
        }
        case EquipCard::RelicLocation: relic = NULL; break;
    }
}

bool Player::hasEquip(const Card *card) const{
    return weapon == card || armor == card || defensive_horse == card || offensive_horse == card || relic == card; //modify by ce add
}

bool Player::hasEquip() const{
    return weapon || armor || defensive_horse || offensive_horse || relic; //modify by ce add
}

const Weapon *Player::getWeapon() const{
    return weapon;
}

const Armor *Player::getArmor() const{
    return armor;
}

//modify by ce add
const Horse *Player::getHorse() const{
    if(defensive_horse) {
        return defensive_horse;
    }else {
        return offensive_horse;
    }
}

const Horse *Player::getDefensiveHorse() const{
    return defensive_horse;
}

const Horse *Player::getOffensiveHorse() const{
    return offensive_horse;
}

//modify by ce add
const Relic *Player::getRelic() const{
    return relic;
}

QList<const Card *> Player::getEquips() const{
    QList<const Card *> equips;
    if(weapon)
        equips << weapon;
    if(armor)
        equips << armor;
    if(defensive_horse)
        equips << defensive_horse;
    if(offensive_horse)
        equips << offensive_horse;
    //modify by ce
    if(relic)
        equips << relic;

    return equips;
}

const EquipCard *Player::getEquip(int index) const{
    switch(index){
    case 0: return weapon; break;
    case 1: return armor; break;
    //modify by ce
    case 2: {
        if(defensive_horse) 
            return defensive_horse; 
        return offensive_horse;
        break;
    }
    case 3: return relic; break;
    default:
        break;
    }

    return NULL;
}

bool Player::hasWeapon(const QString &weapon_name) const{
    return weapon && weapon->objectName() == weapon_name;
}

//modify by ce add
bool Player::hasRelic(const QString &relic_name) const{
    return relic && relic->objectName() == relic_name;
}

bool Player::hasArmorEffect(const QString &armor_name) const{
    return armor && getMark("qinggang") == 0 && armor->objectName() == armor_name;
}

QList<const Card *> Player::getJudgingArea() const{
    return judging_area;
}

Player::Phase Player::getPhase() const{
    return phase;
}

void Player::setPhase(Phase phase){
    if(this->phase != phase){
        this->phase = phase;

        emit phase_changed();
    }
}

bool Player::faceUp() const{
    return face_up;
}

void Player::setFaceUp(bool face_up){
    if(this->face_up != face_up){
        this->face_up = face_up;

        emit state_changed();
    }
}

int Player::getMaxCards() const{
    /*
    int extra = 0;
    if(Config.MaxHpScheme == 2 && general2){
        int total = general->getMaxHp() + general2->getMaxHp();
        if(total % 2 != 0)
            extra = 1;
    }

    int juejing = hasSkill("juejing") ? 2 : 0;

    int xueyi = 0;
    if(hasLordSkill("xueyi")){
        QList<const Player *> players = parent()->findChildren<const Player *>();
        players.removeOne(this);
        foreach(const Player *player, players){
            if(player->isAlive() && player->getKingdom() == "qun")
                xueyi += 2;
        }
    }

    int shenwei = 0;
    if(hasSkill("shenwei"))
        shenwei = 2;

    return qMax(hp,0) + extra + juejing + xueyi + shenwei;
    */
    //modify by ce
    if(getMark("no_handcard_limit")) {
        return 999;
    }
    
    int reward = hasFlag("two_more_card")?2:0;
    
    int bee = getMark("@bee");
    
    int deer = hasSkill("deer")?1:0;
    int mask = this->hasArmorEffect("violent_mask")?1:0;
    
    int xushi = 0;
    if(getMark("@xuli") && getKingdom() == "nu") {
        xushi = getMp();
    }
    
    return qMax(hp,0) + bee - deer - mask + xushi + reward;
}

QString Player::getKingdom() const{
    if(kingdom.isEmpty() && general)
        return general->getKingdom();
    else
        return kingdom;
}

void Player::setKingdom(const QString &kingdom){
    if(this->kingdom != kingdom){
        this->kingdom = kingdom;
        emit kingdom_changed();
    }
}

QString Player::getKingdomIcon() const{
    return QString("image/kingdom/icon/%1.png").arg(kingdom);
}

QString Player::getKingdomFrame() const{
    return QString("image/kingdom/frame/%1.png").arg(kingdom);
}

bool Player::isKongcheng() const{
    return getHandcardNum() == 0;
}

bool Player::isNude() const{
    return isKongcheng() && !hasEquip();
}

bool Player::isAllNude() const{
    return isNude() && judging_area.isEmpty();
}

void Player::addDelayedTrick(const Card *trick){
    judging_area << trick;
    delayed_tricks << DelayedTrick::CastFrom(trick);
}

void Player::removeDelayedTrick(const Card *trick){
    int index = judging_area.indexOf(trick);
    if(index >= 0){
        judging_area.removeAt(index);
        delayed_tricks.removeAt(index);
    }
}

const DelayedTrick *Player::topDelayedTrick() const{
    if(delayed_tricks.isEmpty())
        return NULL;
    else
        return delayed_tricks.last();
}

QList<const DelayedTrick *> Player::delayedTricks() const{
    return delayed_tricks;
}

bool Player::containsTrick(const QString &trick_name) const{
    foreach(const DelayedTrick *trick, delayed_tricks){
        if(trick->objectName() == trick_name)
            return true;
    }

    return false;
}

bool Player::isChained() const{
    return chained;
}

void Player::setChained(bool chained){
    if(this->chained != chained){
        this->chained = chained;
        emit state_changed();
    }
}

void Player::addMark(const QString &mark){
    int value = marks.value(mark, 0);
    value++;
    setMark(mark, value);
}

void Player::removeMark(const QString &mark){
    int value = marks.value(mark, 0);
    value--;
    value = qMax(0, value);
    setMark(mark, value);
}

void Player::setMark(const QString &mark, int value){
    if(marks[mark] != value){
        marks[mark] = value;
    }
}

int Player::getMark(const QString &mark) const{
    return marks.value(mark, 0);
}

bool Player::canSlash(const Player *other, bool distance_limit) const{
    //modify by ce
    if(other->getMark("@hidden"))
        return false;
        
    if(hasSkill("haosheng")) {
        QList<const Player *> targets;

        foreach(const Player *p, parent()->findChildren<const Player *>()){
            if(p!=this && p->getGeneral()->isMale() && p->getHp()>getHp() && distanceTo(p) <= getAttackRange()) {
                targets << p;
            }
        }
        
        if(targets.length()) {
            return targets.contains(other);
        }
        
    }

    if(other == this)
        return false;
    
    if(hasSkill("yujia"))
        return true;
    
    if(distance_limit)
        return distanceTo(other) <= getAttackRange();
    else
        return true;
}

int Player::getCardCount(bool include_equip) const{
    int count = getHandcardNum();

    if(include_equip){
        if(weapon)
            count ++;

        if(armor)
            count ++;

        if(defensive_horse)
            count ++;

        if(offensive_horse)
            count ++;
        //modify by ce add
        if(relic)
            count ++;
    }

    return count;
}

QList<int> Player::getPile(const QString &pile_name) const{
    return piles[pile_name];
}

QString Player::getPileName(int card_id) const{
    foreach(QString pile_name, piles.keys()){
        QList<int> pile = piles[pile_name];
        if(pile.contains(card_id))
            return pile_name;
    }

    return QString();
}

void Player::addHistory(const QString &name, int times){
    history[name] += times;
}

int Player::getSlashCount() const{
    // return history.value("Slash", 0)
            // + history.value("ThunderSlash", 0)
            // + history.value("FireSlash", 0);
    //modify by ce
    return history.value("Bang", 0)
            + history.value("ThunderBang", 0)
            + history.value("FireBang", 0)
            + history.value("AirBang", 0)
            + history.value("PoisonBang", 0)
            + history.value("IceBang", 0);
}

void Player::clearHistory(){
    history.clear();
}

bool Player::hasUsed(const QString &card_class) const{
    return history.value(card_class, 0) > 0;
}

int Player::usedTimes(const QString &card_class) const{
    return history.value(card_class, 0);
}

QSet<const TriggerSkill *> Player::getTriggerSkills() const{
    QSet<const TriggerSkill *> skills;
    if(general)
        skills += general->getTriggerSkills();

    if(general2)
        skills += general2->getTriggerSkills();

    foreach(QString skill_name, acquired_skills){
        const TriggerSkill *skill = Sanguosha->getTriggerSkill(skill_name);
        if(skill)
            skills << skill;
    }

    return skills;
}

QSet<const Skill *> Player::getVisibleSkills() const{
    return getVisibleSkillList().toSet();
}

QList<const Skill *> Player::getVisibleSkillList() const{
    QList<const Skill *> skills;
    if(general)
        skills << general->getVisibleSkillList();

    if(general2)
        skills << general2->getVisibleSkillList();

    foreach(QString skill_name, acquired_skills){
        const Skill *skill = Sanguosha->getSkill(skill_name);
        if(skill->isVisible())
            skills << skill;
    }

    return skills;
}

QSet<QString> Player::getAcquiredSkills() const{
    return acquired_skills;
}

bool Player::isProhibited(const Player *to, const Card *card) const{
    return Sanguosha->isProhibited(this, to, card);
}

bool Player::canSlashWithoutCrossbow() const{
    // modify by ce
    // if(hasSkill("paoxiao"))
        // return true;

    int slash_count = getSlashCount();
    // if(hasFlag("tianyi_success"))
        // return slash_count < 2;
    // else
        // return slash_count < 1;
    
    if(hasFlag("no_bang_limit"))
        return true;
    
    if(hasFlag("one_more_bang"))
        return slash_count < 2;

    return slash_count < 1;
}

void Player::jilei(const QString &type){
    if(type == "basic")
        jilei_set << Card::Basic;
    else if(type == "equip")
        jilei_set << Card::Equip;
    else if(type == "trick")
        jilei_set << Card::Trick;
    else
        jilei_set.clear();
}

bool Player::isJilei(const Card *card) const{
    Card::CardType type = card->getTypeId();
    if(type == Card::Skill){
        if(!card->willThrow())
            return false;

        foreach(int card_id, card->getSubcards()){
            const Card *c = Sanguosha->getCard(card_id);
            if(jilei_set.contains(c->getTypeId()))
                return true;
        }

        return false;
    }else
        return jilei_set.contains(type);
}

bool Player::isCaoCao() const{
    QString general_name = getGeneralName();
    return general_name == "caocao" || general_name == "shencaocao" || general_name == "shencc";
}

void Player::copyFrom(Player* p)
{
    Player *b = this;
    Player *a = p;

    b->marks            = QMap<QString, int> (a->marks);
    b->piles            = QMap<QString, QList<int> > (a->piles);
    b->acquired_skills  = QSet<QString> (a->acquired_skills);
    b->flags            = QSet<QString> (a->flags);
    b->history          = QHash<QString, int> (a->history);

    b->hp               = a->hp;
    b->mp               = a->mp; //modify by ce add
    b->max_hp           = a->max_hp;
    b->kingdom          = a->kingdom;
    b->role             = a->role;
    b->seat             = a->seat;
    b->alive            = a->alive;

    b->phase            = a->phase;
    b->weapon           = a->weapon;
    b->armor            = a->armor;
    b->defensive_horse  = a->defensive_horse;
    b->offensive_horse  = a->offensive_horse;
    b->relic  = a->relic; //modify by ce add
    b->face_up          = a->face_up;
    b->chained          = a->chained;
    b->judging_area     = QList<const Card *> (a->judging_area);
    b->delayed_tricks   = QList<const DelayedTrick *> (a->delayed_tricks);
    b->fixed_distance   = QHash<const Player *, int> (a->fixed_distance);
    b->jilei_set        = QSet<Card::CardType> (a->jilei_set);

    b->tag              = QVariantMap(a->tag);
}

QList<const Player *> Player::getSiblings() const{
    QList<const Player *> siblings;
    if(parent()){
        siblings = parent()->findChildren<const Player *>();
        siblings.removeOne(this);
    }

    return siblings;
}
