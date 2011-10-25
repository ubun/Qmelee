-- translation for MeleeCardPackage

local t = {
    ["#SystemLog"] = "系统日志：目标：%from；信息：%arg",
    ["$SystemLog"] = "系统日志----使用者：%from；牌：%card",
    ["#Probability"] = "概率事件----目标：%from；事件： %arg ；概率值：%arg2",

    ["meleecard"] = "乱斗卡牌",
    ["relic"] = "上古遗物",
	["nu"] = "怒", 
	["qi"] = "气", 
	["ling"] = "灵", 
	["kuang"] = "狂", 
	["yuan"] = "怨", 
	["@nu"] = "怒气", 
	["@qi"] = "气劲", 
	["@ling"] = "灵力", 
	["@kuang"] = "狂暴", 
	["@yuan"] = "怨念", 
    
    ["#PunishNu"] = "%from <b style='color:#CCCCCC'>受到属性惩罚--气脉逆行</b>",
    ["#PunishQi"] = "%from <b style='color:#CCCCCC'>受到属性惩罚--毒气攻心</b>",
    ["#PunishLing"] = "%from <b style='color:#CCCCCC'>受到属性惩罚--感同身受</b>",
    ["#PunishKuang"] = "%from <b style='color:#CCCCCC'>受到属性惩罚--走火入魔</b>",
    ["#PunishYuan"] = "%from <b style='color:#CCCCCC'>受到属性惩罚--天火焚身</b>",
    
    ["normal_nature"] = "[无属性]",
    ["fire_nature"] = "[火属性]",
    ["thunder_nature"] = "[雷属性]",    
    ["air_nature"] = "[气属性]",
    ["poison_nature"] = "[毒属性]",
    ["ice_nature"] = "[冰属性]",
    ["@mp"] = "精力",
    ["@frozen"] = "冻结",
    ["@invincible"] = "无损",
    ["invincible"] = "【无损】",
    ["@armor_forbid"] = "封甲",
    ["@skill_forbid"] = "封技",
    ["skill_forbid"] = "【封技】",
    ["@card_forbid"] = "封牌",
    ["card_forbid"] = "【封牌】",
    
    ["$DamagePunish"] = "--评估伤害惩罚--",
    ["#Invincible"] = "%from 处于 <b style='color:yellow'>无损状态</b> 任何伤害和战术牌对其无效",
    ["#CountDown"] = "%from 还有 %arg 回合才能解除 %arg2 状态",
    
    ["#DamageToNormal"] = "%to 受到的 %arg 伤害转变为无属性伤害",
    ["#DamageToIce"] = "%arg 效果发动，%to 受到的伤害转变为冰属性伤害",
    ["#DamageToFire"] = "%arg 效果发动，%to 受到的伤害转变为火属性伤害",
    ["#DamageToThunder"] = "%arg 效果发动，%to 受到的伤害转变为雷属性伤害",
    ["#DamageNullify"] = "%arg 效果发动，%to 受到的伤害无效",
    ["#DamageUp"] = "%arg 效果发动，%to 受到的伤害增加 %arg2",
    ["#ChoiceSuit"] = "%from 选择了 %arg",
    ["NoEffectChoice"] = "不选择任何效果",
    ["NoChoice"] = "什么也不选",
    ["#GetMark"] = "%from 得到了 %arg2 枚 %arg 标记", 
	["#LoseMark"] = "%from 失去了 %arg2 枚 %arg 标记", 
    ["#AcquireSkill"] = "%from 获得了技能 <b style='color:yellow'>【%arg】</b>", 
    ["$Peek"] = "%from 翻开了 %card",

	["bang"] = "杀", 
	[":bang"] = "出牌阶段，对攻击范围内的任一角色使用，目标角色受到1点无属性伤害。", 
	["fire_bang"] = "火杀", 
	[":fire_bang"] = "出牌阶段，对攻击范围内的任一角色使用，目标角色受到1点火属性伤害。若造成火属性伤害且目标角色没有装备防具，弃该角色1张手牌。", 
    ["$FireBangEffect"] = "%to 的 %card 被<b>【火杀】</b>的效果破坏了 ",
    ["thunder_bang"] = "雷杀", 
	[":thunder_bang"] = "出牌阶段，对攻击范围内的任一角色使用，目标角色受到1点雷属性伤害。若造成雷属性伤害且目标角色有装备武器，进行判定。若判定牌为黑桃，弃掉装备的武器。", 
    ["$ThunderBangEffect"] = "%to 的 %card 被<b>【雷杀】</b>的效果破坏了 ", 
	["air_bang"] = "气杀", 
	[":air_bang"] = "出牌阶段，对攻击范围内的任一角色使用，目标角色受到1点气属性伤害。若造成气属性伤害且目标角色装备防具，目标角色选择弃掉防具或再减少1点体力。", 
    ["$AirBangEffect"] = "%to 的 %card 被<b>【气杀】</b>的效果破坏了 ", 
    ["AirEffectHp"] = "失去1点体力", 
    ["AirEffectArmor"] = "失去防具", 
	["poison_bang"] = "毒杀", 
	[":poison_bang"] = "出牌阶段，对你攻击范围内任一其他角色使用，目标角色受到1点毒属性伤害。若造成毒属性伤害，目标角色进行判定，为梅花则再减少1点体力。", 
	["$PoisonBangEffect"] = "<b>【毒杀】</b>效果发动",
    ["ice_bang"] = "冰杀", 
	[":ice_bang"] = "出牌阶段，对攻击范围内的任一角色使用，目标角色受到1点冰属性伤害。若造成冰属性伤害且目标角色进入濒死状态时，其他角色不能用【圣水】救回。", 
    ["#DyingByIce"] = "<b>【冰杀】</b>的效果被触发，只能 %to 自救", 
    ["dodge"] = "闪", 
    [":dodge"] = "任何时候，你可以打出用来抵销对你使用的一张【杀】的效果", 
    ["holy_water"] = "圣水", 
    [":holy_water"] = "出牌阶段，对自己使用；或在任一角色濒死时对该角色使用。目标角色回复1点体力。", 
    ["schnapps"] = "酒", 
    [":schnapps"] = "1.出牌阶段，对自己使用，你的下一张【杀】伤害+1。（每回合限使用1次）\n2.自己濒死时使用，自己回复1点体力。", 
    
    ["alien_invasion"] = "异族入侵", 
    [":alien_invasion"] = "出牌阶段，对除你以外的所有角色使用。目标角色需依次打出一张【杀】，否则该角色受到1点伤害。", 
    ["alien-invasion-slash"] = "%src 使用了【异族入侵】，请打出1张【杀】来响应", 
    ["thousands_arrows_shot"] = "万箭齐发", 
    [":thousands_arrows_shot"] = "出牌阶段，对除你以外的所有角色使用。目标角色需依次打出一张【闪】，否则该角色受到1点伤害。", 
    ["thousands-arrows-shot-jink"] = "%src 使用了【万箭齐发】，请打出1张【闪】以响应", 
    ["roar"] = "咆哮",
    [":roar"] = "出牌阶段，除你以外，所有装备区有装备的角色，依次选择弃掉1件装备或受到1点气属性伤害。",   
    ["RoarEffect1"] = "弃掉1件装备",   
    ["RoarEffect2"] = "受到1点气属性伤害",   
    
    ["wood_elf"] = "森之精灵", 
    [":wood_elf"] = "出牌阶段，对所有角色使用。各回复1点体力。", 
    ["ready_to_go"] = "整装待发", 
    [":ready_to_go"] = "出牌阶段，对所有角色使用。你从牌堆亮出等同于现存角色数量的牌，目标角色依次选择并获得其中的一张。", 
    ["poison_marish"] = "毒沼", 
    [":poison_marish"] = "出牌阶段，所有角色依次进行判定，若为梅花，则受到1点毒属性伤害。", 
    
    ["nothing_is_something"] = "无中生有", 
    [":nothing_is_something"] = "出牌阶段，对你自己使用。摸两张牌。", 
    ["destroy_all"] = "片甲不留", 
    [":destroy_all"] = "出牌阶段，对除你以外任意一名角色使用。弃掉该角色手牌、装备区或判定区里的一张牌。", 
    ["$destroy_all"] = "%card 被 %from 破坏了 ",
    ["borrow_weapon"] = "借刀杀人", 
    [":borrow_weapon"] = "出牌阶段，对除你以外，装备区里有武器牌的一名角色使用。该角色需对其攻击范围内，你指定的另一名角色使用一张【杀】，否则将武器交给你。", 
    ["borrow-weapon-slash"] = "%src 使用了【借刀杀人】，目标是 %dest，请打出一张【杀】以响应", 
    ["grab"] = "巧取豪夺", 
    [":grab"] = "出牌阶段，对除你以外，与你距离1以内的一名角色使用。获得该角色的一张牌。", 
    ["unassailable"] = "无懈可击", 
    [":unassailable"] = "在目标战术生效前，抵消其对一名角色产生的效果。", 
    ["burn"] = "焚身", 
    [":burn"] = "出牌阶段，对任一有手牌的角色使用。目标角色展示一张手牌，然后若你弃一张与所展示牌相同花色的手牌，对该角色造成1点火属性伤害。",
    ["@burn-card"] = "%src 展示的牌的花色为 %arg，请弃掉与其相同花色的牌",     
    ["pk"] = "决斗", 
    [":pk"] = "出牌阶段，对除你以外任意一名角色使用。由该角色开始，轮流打出一张【杀】。首先不出【杀】的一方受到1点伤害。",
    ["cure"] = "治疗", 
    [":cure"] = "出牌阶段，对你距离1以内的角色使用。该角色至多增加2点体力。",
    
    ["soul_chain"] = "灵魂连锁", 
    [":soul_chain"] = "出牌阶段使用，选择一至两名角色。分别附加或解除这些角色的连锁状态。", 
    ["#SoulChainDamage"] = "%from 处于灵魂连锁状态，将受到传导伤害",
    
    ["enegy_drain"] = "能量抽取", 
    [":enegy_drain"] = "出牌阶段，对除你以外，与你距离1以内的一名角色使用。置于该角色的判定区里；若判定结果不为梅花，则跳过该角色的摸牌阶段。", 
    ["soul_awe"] = "灵魂震慑", 
    [":soul_awe"] = "出牌阶段，对除你以外任意一名角色使用。置于该角色的判定区里，若判定结果不为红桃，则跳过该角色的出牌阶段。", 
    ["icebound"] = "冰封", 
    [":icebound"] = "出牌阶段，置于任一你距离1以内的角色判定区使用。角色判定阶段，选择跳过出牌阶段或受到1点冰属性伤害。", 
    ["IceboundEffect1"] = "跳过出牌阶段",
    ["IceboundEffect2"] = "受到1点冰属性伤害",    
    
    ["thunder"] = "闪电", 
    [":thunder"] = "出牌阶段，对你使用。将【闪电】置于你的判定区里。若判定结果为黑桃2-9，则你受到3点伤害，弃置它。若判定结果不在此范围，则将之移动到下家的判定区里。", 
    ["$ThunderMove"] = "%card 从 %from 移动到 %to", 
    
    ["liyao_sword"] = "离曜", 
    [":liyao_sword"] = "你使用【杀】，指定了一名异性角色为目标后，你可以令对方选择一项：自己弃一张手牌或让你从牌堆摸一张牌。", 
    ["liyao-sword-card"] = "%src 发动了离曜特效，您必须弃一张手牌或让 %src 摸一张牌", 
    ["greensteel_sword"] = "青釭剑", 
    [":greensteel_sword"] = "锁定技，每当你使用【杀】攻击一名角色时，无视该角色的防具。",
    ["soul_cane"] = "追魂杖", 
    [":soul_cane"] = "当你使用的【杀】被抵消时，你可以立即对相同的目标再使用一张【杀】。", 
    ["soulcane-slash"] = "您可以再打出一张【杀】发动追魂杖的追杀效果", 
    ["snake_spear"] = "豹尾蛇矛", 
    [":snake_spear"] = "当你需要使用或打出一张【杀】时，你可以将两张手牌当一张【杀】来使用或打出。", 
    ["pangu_axe"] = "盘古斧", 
    [":pangu_axe"] = "当你使用的【杀】被抵挡时，你可以弃两张牌，则【杀】依然造成伤害。", 
    ["wushuang_halberd"] = "无双戟", 
    [":wushuang_halberd"] = "当你使用的【杀】是你的最后一张手牌时，你可以为这张【杀】指定至多三名目标，然后依次结算之。", 
    ["deicide_bow"] = "弑神弓", 
    [":deicide_bow"] = "你使用【杀】对击中目标角色时，你可以将其装备区里的坐骑弃置", 
    ["deicide_bow:yes"] = "弃置对方的坐骑", 
    ["$DeicideBowEffect"] = "%to 的 %card 被【弑神弓】的效果破坏了", 
    ["ghost_fan"] = "鬼凤扇", 
    [":ghost_fan"] = "当你使用【杀】造成伤害时，你可以防止此伤害，改为弃置该目标角色的两张牌。", 
    ["ghost_fan:yes"] = "您可以弃掉弃两张牌", 	
    ["guding_machete"] = "古锭刀", 
    [":guding_machete"] = "锁定技，当你使用【杀】造成伤害时，若指定的目标没有手牌，该伤害+1。", 
    ["#GudingMacheteEffect"] = "%from 装备的<b>【古锭刀】</b>生效，无手牌对象 %to 的伤害从 %arg 增加到 %arg2", 	
    ["white_dragon"] = "白龙牙", 
    [":white_dragon"] = "当你使用【杀】对目标角色造成伤害，你可以选择：将伤害转为冰属性或让自己回复1点体力。", 
    ["WhiteDragonEffect1"] = "将伤害转变为冰属性",
    ["WhiteDragonEffect2"] = "回复1点体力",
    ["$WhiteDragonRecover"] = "<b style='color:yellow'>【白龙牙--归元】</b>发动，%from 回复1点体力",
    ["red_dragon"] = "红龙牙", 
    [":red_dragon"] = "当你使用【杀】对目标角色造成伤害，目标角色进行判定，若为红色，再受1点火属性伤害。",
    ["$RedDragonDamage"] = "%from <b style='color:yellow'>【红龙牙--炽炎】</b>发动",
    ["evil_dirk"] = "鬼神刺", 
    [":evil_dirk"] = "你使用的无属性【杀】造成伤害时，可以改成任意属性。", 
    ["#EvilDirkEffect"] = "<b>【鬼神刺】</b>的效果使伤害转变为 %arg",
    ["tiger_spear"] = "虎啸枪",
    [":tiger_spear"] = "自己的回合外，每当打出一张黑色的手牌，你可以对攻击范围内的任一角色打出一张【杀】。",
    ["@tiger-spear-slash"] = "【虎啸枪】效果发动，请打出1张【杀】",
    ["peacock_tear"] = "孔雀泪",
    [":peacock_tear"] = "锁定技，当你使用【杀】对任何角色造成伤害，受到伤害的角色补满5张手牌。",
    ["#PeacockTearEffect"] = "<b style='color:yellow'>【孔雀泪--哀】</b>发动，%to 补了 %arg 张手牌",
    
    ["chaos_mirror"] = "混沌镜", 
    [":chaos_mirror"] = "每当你需要使用或打出一张【闪】时，你可以进行一次判定：若判定结果为红色，则视为你使用或打出了一张【闪】。", 
    ["king_shield"] = "仁王盾", 
    [":king_shield"] = "锁定技，黑色的【杀】对你无效。", 
    ["vine_armor"] = "藤甲", 
    [":vine_armor"] = "锁定技，无属性伤害对你无效。你每次受到火属性伤害时，该伤害+1。", 
    ["#VineArmorNullify"] = "%from 装备<b>【藤甲】</b>，无属性伤害对其无效", 
    ["blood_guard"] = "血色守护", 
    [":blood_guard"] = "锁定技，你每次受到伤害时，最多承受1点伤害（防止多余的伤害）；当你失去装备区里的【血色守护】时，你回复1点体力。", 
    ["#BloodGuard"] = "%from 的防具<b>【血色守护】</b>防止了 %arg 点伤害，减至1点", 
    ["holy_wing"] = "神佑光翼", 
    [":holy_wing"] = "锁定技，必须支付1点体力为代价才能装备，只要装备区有【神佑光翼】，属性伤害对你无效。", 
    ["#HolyWingNullify"] = "%from 装备<b>【神佑光翼】</b>，属性伤害对其无效", 
    
    ["qinglin_horse"] = "青麟马", 
    [":qinglin_horse"] = "锁定技，其他角色计算与你的距离时，距离+1。受到毒属性攻击时，视为无属性。\n怨性角色的【青麟马】从装备区除去时，增加3点怨。", 
    ["rhinoceros"] = "长角犀", 
    [":rhinoceros"] = "锁定技，你计算与其他角色的距离时，距离-1。你的攻击范围+2，造成的伤害视为无属性伤害。",     
    ["#RhinocerosEffect"] = "长角犀的效果，%from 造成的伤害转变为无属性",     
    ["leopard"] = "烈焰豹", 
    [":leopard"] = "锁定技，其他角色计算与你的距离时，距离+1。受到火属性攻击时，视为无属性。\n怒性角色的【烈焰豹】从装备区除去时，增加1点怒。", 
    ["fox"] = "玄冥狐", 
    [":fox"] = "锁定技，其他角色计算与你的距离时，距离+1。受到冰属性攻击时，视为无属性。\n灵性角色的【玄冥狐】从装备区除去时，增加2点灵。", 
    ["xunlei_beast"] = "迅雷兽", 
    [":xunlei_beast"] = "锁定技，你计算与其他角色的距离时，距离-1。受到雷属性攻击时，视为无属性。\n狂性角色的【迅雷兽】从装备区除去时，增加2点狂。", 
    ["boar"] = "暴獠猪", 
    [":boar"] = "锁定技，你计算与其他角色的距离时，距离-1。\n你受到伤害时，可以弃掉装备区的【暴獠猪】，你对伤害来源造成相同的伤害。", 
    ["#BoarEffect"] = "<b style='color:yellow'>【暴獠猪--反射】</b>发动，%from 受到 %arg 点反弹伤害",  
    ["tiger"] = "圣光虎", 
    [":tiger"] = "锁定技，其他角色计算与你的距离时，距离+1。受到气属性攻击时，视为无属性。\n气性角色的【圣光虎】从装备区除去时，增加2点气。", 
    ["flood_dragon"] = "赤炼蛟龙", 
    [":flood_dragon"] = "锁定技，你计算与其他角色的距离时，距离-2。\n不受【咆哮】【毒沼】【灵魂震慑】的效果影响。摸牌阶段进行判定，若不为红色，则少摸1张牌。", 
    ["@flood_dragon"] = "蛟龙",
    ["$FloodDragonDraw"] = "<b style='color:#CCCCCC'>【赤炼蛟龙--伏】</b>发动，%from 少摸1张牌。",
    ["$FloodDragonEffect"] = "<b style='color:yellow'>【赤炼蛟龙--麟】</b>发动，%from 不受 %card 的效果影响。",
    ["deer"] = "七彩玄鹿",
    [":deer"] = "锁定技，手牌上限-1。其他角色计算与你的距离时，距离+2。你获得你的判定牌。装备区没有防具时，视为装备【混沌镜】。回合开始阶段进行判定，若不为方块，则跳过摸牌阶段。",    
    ["$DeerEffectSkip"] = "<b style='color:#CCCCCC'>【七彩玄鹿--幻】</b>发动，摸牌阶段被跳过。",
    ["spider_queen"] = "女王蛛",
    [":spider_queen"] = "锁定技，你计算与其他角色的距离时，距离-1。\n出牌阶段，你可以弃掉【女王蛛】，相当于打出【万箭齐发】。",
    ["spiderqueenskill"] = "女王蛛--千针",
    ["cattle"] = "银铠牛",
    [":cattle"] = "锁定技，其他角色计算与你的距离时，距离+1。\n任何你受到伤害的时候，你可以弃掉【银铠牛】防止这些伤害。",
    ["#CattleEffect"] = "<b style='color:yellow'>【银铠牛--无损】</b>发动，%to 受到的伤害无效",
    
    ["nvwa_stone"] = "女娲石", 
    [":nvwa_stone"] = "当装备【女娲石】的角色进入濒死状态时，先声明一种花色，然后进行判定，若结果和声明的花色相同，则回复1点体力。", 
    ["blunderbuss"] = "金火铳",
    [":blunderbuss"] = "出牌阶段，你可以弃自己2张手牌，然后再弃其他任一角色的1张装备牌。",
    ["blunderbussskill"] = "金火铳--卸甲",
    ["soul_spirit"] = "魂之精灵",
    [":soul_spirit"] = "任何时候有角色死亡，你可以立即获得死亡角色的所有手牌。",
    ["miracle"] = "上古神迹",
    [":miracle"] = "回合开始阶段，当你有且仅有3张手牌时，你可以跳过摸牌阶段，从牌堆摸4张牌，再弃2张手牌。",
    ["shtm"] = "神农鼎",
    [":shtm"] = "只能给死亡的角色装备，使死亡角色进入【复活仪式】。(其他角色可在回合开始阶段分给死亡角色1张牌做祭品，当达到4个祭品时，死亡角色复活，回复2点体力，祭品成为手牌)",
    ["@revive_rite"] = "复活仪式",
    ["revive-rite-handcard"] = "是否给出1张手牌，帮助仪式中的角色复活", 
    
}
return t;