-- gouki ---------------------------------------------------------------------------------

sgs.ai_chaofeng["gouki"] = 1

sgs.dynamic_value.damage_card["ShunyuCard"] = true

-- shankong
sgs.ai_skill_invoke.shankong = true

-- shunyu
sgs.ai_skill_use["@@shunyu"]=function(self,prompt)
    local cards = self.player:getCards("he")
    if cards:length()<4 or self.player:getMp()<18 then return "." end
	
	cards = sgs.QList2Table(cards)
	self:sortByUseValue(cards, true)
    
    local spade, heart, club, diamond
    
    for _,card in ipairs(cards) do
        if not spade and card:getSuit() == sgs.Card_Spade then
            spade = card
        elseif not heart and card:getSuit() == sgs.Card_Heart then
            heart = card
        elseif not club and card:getSuit() == sgs.Card_Club then
            club = card
        elseif not diamond and card:getSuit() == sgs.Card_Diamond then
            diamond = card
        end
    end
    
    if spade and heart and club and diamond then 
        for _,enemy in ipairs(self.enemies) do
            if self.player:distanceTo(enemy)<=1 then
                return ("@ShunyuCard=%d+%d+%d+%d->%s"):format(spade:getEffectiveId(), heart:getEffectiveId(), club:getEffectiveId(), diamond:getEffectiveId(), enemy:objectName())
            end
        end
    end
    
    return "."    
end

-- ryu ---------------------------------------------------------------------------------

sgs.ai_chaofeng["ryu"] = 2

sgs.dynamic_value.damage_card["LongjuanCard"] = true
sgs.dynamic_value.damage_card["BodongCard"] = true

-- longjuan
sgs.ai_skill_use["@@longjuan"]=function(self,prompt)
    if self:getCardsNum("Slash")<=0 then return "." end
    
    local target = nil
    local slash = self:getCardId("Slash")
    
	self:sort(self.enemies,"defense")    
    for _,enemy in ipairs(self.enemies) do
        if self.player:distanceTo(enemy) <= self.player:getAttackRange()+1 then
            if target then
                target = target.."+"..enemy:objectName()
                break
            else
                target = enemy:objectName()
            end
        end
    end
    
    if target then
        return "@LongjuanCard="..slash.."->"..target
    end
    
    return "."    
end

-- bodong
sgs.ai_skill_use["@@bodong"]=function(self,prompt)
    if self:getCardsNum("Slash")<=0 or self.player:getMp()<3 then return "." end
    
    local slash = self:getCardId("Slash")
    
	self:sort(self.enemies,"defense")    
    for _,enemy in ipairs(self.enemies) do
        if self.player:distanceTo(enemy) <= self.player:getAttackRange()+1 and not self:isEquip("HolyWing", enemy) then
            return "@BodongCard="..slash.."->"..enemy:objectName()
        end
    end
    
    return "."    
end

-- ken ---------------------------------------------------------------------------------

sgs.ai_chaofeng["ryu"] = 4

sgs.dynamic_value.damage_card["JifengCard"] = true
sgs.dynamic_value.damage_card["ShenlongCard"] = true

-- jifeng
sgs.ai_skill_choice.jifeng = function(self, choices)
    local slash_num = self:getCardsNum("Slash")
    
    if slash_num<=0 then 
        return "NoChoice" 
    elseif slash_num==1 then
        return "JifengEffect1" 
    else
        return "JifengEffect2"
    end
    
end

sgs.ai_skill_use["@@jifeng"]=function(self,prompt)
    if self:getCardsNum("Slash")<=0 then return "." end
    
    local slash
    
	self:sort(self.enemies,"defense")    
    
    if self.player:getMark("jifeng")==1 then
    
        for _,enemy in ipairs(self.enemies) do
            if self.player:distanceTo(enemy)<=1 and enemy:hasFlag("jifenged") then
                slash = self:getCardId("Slash")
                return "@JifengCard="..slash.."->"..enemy:objectName()
            end
        end
        
    elseif  self.player:getMark("jifeng")==2 then
        
        for _,enemy in ipairs(self.enemies) do
            if self.player:distanceTo(enemy)<=1 and not enemy:hasFlag("jifenged") then
                slash = self:getCardId("Slash")
                return "@JifengCard="..slash.."->"..enemy:objectName()
            end
        end
        
    end
    
    return "."    
end

-- shenglong
sgs.ai_skill_use["@@shenglong"]=function(self,prompt)
    if self:getCardsNum("Slash")<=0 or self.player:getMp()<2 then return "." end
    
    local slash = self:getCardId("Slash")
    
	self:sort(self.enemies,"defense")    
    for _,enemy in ipairs(self.enemies) do
        if self.player:inMyAttackRange(enemy) and not self:isEquip("HolyWing", enemy) and enemy:getHandcardNum()<3 then
            return "@ShenglongCard="..slash.."->"..enemy:objectName()
        end
    end
    
    return "."    
end

-- chunli ---------------------------------------------------------------------------------
sgs.ai_chaofeng["gouki"] = 4

sgs.dynamic_value.damage_card["BailieCard"] = true
sgs.dynamic_value.control_card["QigongCard"] = true

-- qigong
sgs.ai_skill_use["@@qigong"]=function(self,prompt)
    if self:getCardsNum("Slash")<=0 or self.player:getMp()<1 then return "." end

	self:sort(self.enemies,"defense")    
    for _,enemy in ipairs(self.enemies) do
        if self.player:inMyAttackRange(enemy) and enemy:getArmor() then
            return "@QigongCard=.->"..enemy:objectName()
        end
    end
    
    return "."    
end

-- jiqi
sgs.ai_skill_use["@@jiqi"]=function(self,prompt)
    
    local num = self:getCardsNum("Slash");
    
    for _,friend in ipairs(self.friends_noself) do
        if self:getCardsNum("BasicCard", friend)>1 then
            num = num+1
        end
    end
    
    if num>3 or (self.player:getHandcardNum()-self.player:getHp()>2) then return "@JiqiCard=.->." end
    
    return "."    
end

-- bailie
sgs.ai_skill_use["@@bailie"]=function(self,prompt)
    if self:getCardsNum("Slash")<2 then return "." end

	self:sort(self.enemies,"defense")    
    for _,enemy in ipairs(self.enemies) do
        if self.player:inMyAttackRange(enemy) then
            return "@BailieCard=.->"..enemy:objectName()
        end
    end
    
    return "."    
end

-- blank ---------------------------------------------------------------------------------
sgs.ai_chaofeng["blank"] = -4

sgs.blank_keep_value = {
	ThunderBang = 4,
}

sgs.dynamic_value.damage_card["DianjiCard"] = true

-- dianji
local dianji_skill={}
dianji_skill.name="dianji"
table.insert(sgs.ai_skills,dianji_skill)
dianji_skill.getTurnUseCard=function(self)
    if self.player:hasUsed("DianjiCard") or self:getCardsNum("ThunderBang")<=0 or self.player:getMp()<2 then return end
    
    local good, bad = 0, 0
    local who = self.player   
    
    for _, friend in ipairs(self.friends_noself) do
        if friend:getHandcardNum()<2 and self:damageIsEffective("thunder", friend) then 
            if friend:getHp() == 1 then 
                bad = bad + 5
            end
            bad = bad + 3
        end
    end

    for _, enemy in ipairs(self.enemies) do
        if enemy:getHandcardNum()<2 and self:damageIsEffective("thunder", enemy) then 
            if enemy:getHp() == 1 then 
                good = good + 5
            end
            good = good + 3
        end
    end
    
    if good < bad then return nil end
    
    local cards = player:getCards("he")
	cards = sgs.QList2Table(cards)
    
    for _, card in ipairs(cards) do
        if card:inherits("ThunderBang") then
            return sgs.Card_Parse(("@DianjiCard=%d."):format(card:getEffectiveId()))
        end
    end

end

sgs.ai_skill_use_func["DianjiCard"]=function(card,use,self)
    use.card = card
end


-- dhaisim ---------------------------------------------------------------------------------
sgs.ai_chaofeng["dhaisim"] = 6

sgs.dhaisim_keep_value = {
	Weapon = 0,
    FireBang = 2,
}

sgs.dynamic_value.damage_card["HuoyanCard"] = true

-- huoyan
local huoyan_skill={}
huoyan_skill.name="huoyan"
table.insert(sgs.ai_skills,huoyan_skill)
huoyan_skill.getTurnUseCard=function(self)
    if self.player:hasUsed("HuoyanCard") or not self.player:canSlashWithoutCrossbow() or self.player:getMp()<2 then return end
    
    local cards = self.player:getCards("h")
	cards = sgs.QList2Table(cards)
    
    for _, card in ipairs(cards) do
        if card:inherits("Slash") and not card:inherits("FireBang") then
            return sgs.Card_Parse(("@HuoyanCard=%d."):format(card:getEffectiveId()))
        end
    end
    
end

sgs.ai_skill_use_func["HuoyanCard"]=function(card,use,self)
        
        self:sort(self.enemies,"defense")
        for _,enemy in ipairs(self.enemies) do
            if self:damageIsEffective("fire", enemy) then
                use.card = card
                if use.to then 
                    use.to:append(enemy) 
                end
                break
            end
        end
    
end

-- chuansong
sgs.ai_skill_use["@@chuansong"]=function(self,prompt)

    local target = self.room:getCurrent();
    
    if target:getNext() ~= self.player then
        return "@ChuansongCard=.->"..target:objectName()
    end
    
    return "."
    
end


-- honda ---------------------------------------------------------------------------------

sgs.ai_chaofeng["honda"] = 1

-- xushi
sgs.ai_skill_invoke.xushi = function(self, data)
    
    local has_armor, has_dhorse
    local slash, dodge, water = 0, 0, 0
    
    local cards = self.player:getCards("h")
	cards = sgs.QList2Table(cards)
    
    for _, card in ipairs(cards) do
        if not self.player:getArmor() and card:inherits("Armor") then return false end
        if not self.player:getDefensiveHorse() and card:inherits("DefensiveHorse") then return false end
        
        if card:inherits("Slash") then 
            slash = slash+1 
        elseif card:inherits("Dodge") then
            dodge = dodge+1
        elseif card:inherits("HolyWater") then
            water = water+1
        end
    end
    
    self.room:writeToConsole("xushi----------")
    self.room:writeToConsole("hp mp num slash dodge water")
    self.room:writeToConsole(self.player:getHp())
    self.room:writeToConsole(self.player:getMp())
    self.room:writeToConsole(#cards)
    self.room:writeToConsole(slash)
    self.room:writeToConsole(dodge)
    self.room:writeToConsole(water)
    self.room:writeToConsole("----------------")
    
    if self.player:getHp()+self.player:getMp() > #cards and slash>1 then return true end
    if self.player:getHp()==1 and self.player:getMp()>1 and water == 0 then return true end
    
end

-- wushuang
sgs.ai_skill_invoke.wushuang = function(self, data)
    return self:getCardsNum("Slash") > 1
end

-- zangief ---------------------------------------------------------------------------------

sgs.ai_chaofeng["zangief"] = 6

sgs.zangief_keep_value = {
	PK = 4,
}

sgs.dynamic_value.control_card["XuanfengCard"] = true
sgs.dynamic_value.control_card["DazhuangCard"] = true

-- xuanfeng
sgs.ai_skill_use["@@xuanfeng"]=function(self, prompt)
    if self.player:getCards("he"):length() <2 then return "." end
    
	local cards = self.player:getCards("he")
	cards = sgs.QList2Table(cards)
    self:sortByUseValue(cards)
    
    if self:getUseValue(cards[2])>5 then return "." end
    
    local data = prompt:split(":")
    local card = sgs.Sanguosha:getCard(data[2])
    local target = nil
    
    for _, p in sgs.qlist(self.room:getAllPlayers()) do
        if p:objectName() == data[3] then
            target = p
        end
    end
    if self:isFriend(target) then return "." end
    
    if self.player:inMyAttackRange(target) or card:inherits("Cure") or card:inherits("Grab") or card:inherits("WoodElf") then
        return ("@XuanfengCard=%d+%d->"):format(cards[1]:getEffectiveId(), cards[2]:getEffectiveId())
    end
    
    return "."
end

-- dazhuang
sgs.ai_skill_use["@@dazhuang"]=function(self, prompt)
    if self.player:getMp()<3 then return "." end
    
    local card_str = "@DazhuangCard="
    local pk = self:getCardId("PK")
    
    if self.player:getMp()>=6 then
        card_str = card_str..".->"
    elseif pk then
        card_str = card_str..pk.."->"
    else
        return "."
    end
    
	self:sort(self.enemies,"defense")    
    for _,enemy in ipairs(self.enemies) do
        if self.player:distanceTo(enemy) <= 1 and self:damageIsEffective("normal", enemy) then
            return card_str..enemy:objectName()
        end
    end
    
    return "."
end

-- guile ---------------------------------------------------------------------------------

sgs.ai_chaofeng["guile"] = 8

sgs.zangief_keep_value = {
	Dodge = 3,
}

sgs.dynamic_value.damage_card["JiaodaoCard"] = true


-- jiaodao
sgs.ai_skill_use["@@jiaodao"]=function(self, prompt)

	local cards = sgs.QList2Table(cards)
    self:sortByUseValue(cards, true)
    
    local first, second
    
    for _, card in ipairs(cards) do
        if (card:inherits("Slash") or card:inherits("Dodge")) and card:isRed() then
            if first then
                second = card
            else
                first = card
            end
        end
    end
    
    if second then
        return ("@JiaodaoCard=%d+%d->"):format(first:getEffectiveId(), second:getEffectiveId())
    end
    
    return "."
end

-- yinsu
sgs.ai_skill_invoke.yinsu = function(self, data)
    return self:needHelp(data)
end


