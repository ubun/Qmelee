-- translation for melee-ds Package

return {
    ["meleeds"] = "恶魔战士",
    
    -- 2011-09-22 +AI+SE 黑暗贵公子
    ["demitri"] = "迪米特利",
    ["~demitri"] = "记住，沉睡100年后，我会再来复仇的",
    ["zizun"] = "自尊",
    [":zizun"] = "锁定技，1回合内，当你减少大于1点体力时，从牌堆摸1张牌；造成2点以上伤害时，减少1点怒",
    ["$zizun1"] = "可恶，我怎么可能输给你这种低等生物",
    ["$zizun2"] = "哼，对付你这种低等生物，单手就够了",
    ["wuye"] = "午夜",
    [":wuye"] = "回合开始阶段，你可以消耗1点怒进行判定，若为黑色，本回合【吸血】效果加倍，且无距离限制",
    ["$wuye"] = "午夜降临，盛宴开始",
    ["xixie"] = "吸血",
    [":xixie"] = "锁定技，出牌阶段，你使用的【杀】或【决斗】对距离1以内的角色每造成1点伤害，你回复1点体力；若目标角色是女性，你减少1点怒",
    ["$xixie1"] = "这是你的荣幸",
    ["$xixie2"] = "女士的血液就是鲜美",
    ["#ZizunEffect1"] = "%from <b style='color:yellow'>【自尊】</b> 正面效果发动",
    ["#ZizunEffect2"] = "%from <b style='color:#CCCCCC'>【自尊】</b> 负面效果发动",
    ["#WuyeOn"] = "<b style='color:yellow'>【午夜】</b> 发动成功，<b style='color:yellow'>【吸血】</b>技能增强",
    ["#XixieEffect"] = "%from 对 %to 发动 <b style='color:yellow'>【吸血】</b>",
    
    -- 2011-09-23 +AI+SE 夜之女王
    ["morrigan"] = "莫莉卡",
    ["~morrigan"] = "真可惜~还有很多留恋的东西呢",
    ["haosheng"] = "好胜",
    [":haosheng"] = "锁定技，你的攻击范围内有比你体力多的男性角色时，你使用【杀】的目标只能选择这些角色；你每对男性角色造成1次伤害，摸1张牌",
    ["$haosheng"] = "男人照样败倒在我脚下",
    ["feixing"] = "飞行",
    [":feixing"] = "锁定技，其他角色计算与你的距离时，距离+1",
    ["huanying"] = "幻影",
    [":huanying"] = "回合开始阶段，你可以消耗6点灵发动，回合内你使用的基本牌和非延时战术牌相当于对同一目标使用2次",
    ["$huanying"] = "没人能超越我的速度呢",
    ["#Haosheng"] = "%from <b style='color:yellow'>【好胜】</b> 效果发动",
    ["$HuanyingEffect"] = "<b style='color:yellow'>【幻影】</b> 效果发动，%card 被使用多1次",
    
    -- 2011-09-25 +AI+SE 怪力机体
    ["victor"] = "维克多",
    ["~victor"] = "埃米莉...",
    ["guzhi"] = "固执",
    [":guzhi"] = "回合开始阶段，你可以消耗1点怒，回合内，你使用的战术牌不会被【无懈可击】响应",
    ["$guzhi"] = "（怒吼）",
    ["hecheng"] = "合成",
    [":hecheng"] = "锁定技，你造成的属性伤害视为雷属性；受到的属性伤害视为无属性",
    
    -- 2011-09-27 +AI+SE 雪之豪杰
    ["sasquatch"] = "萨斯卡茨",
    ["~sasquatch"] = "真是太不好玩了",
    ["xueqiu"] = "雪球",
    [":xueqiu"] = "锁定技，你的无属性【杀】造成的伤害视为冰属性；你的攻击范围+1",
    ["$xueqiu"] = "来打雪仗啰~",
    ["bingzhu"] = "冰柱",
    [":bingzhu"] = "出牌阶段，你可以消耗2点怒，弃2张手牌，指定任一角色，视为对其使用【冰杀】，每回合限用一次",
    ["$bingzhu"] = "你逃不掉了",
    ["$BingzhuEffect"] = "%from 发动<b style='color:yellow'>【冰柱】</b>，视为对 %to 使用<b>【冰杀】</b>",

    -- 2011-09-29 +AI+SE 水之英雄
    ["aulbath"] = "奥尔巴斯",
    ["~aulbath"] = "不能再保护我的王国了",
    ["chaoxi"] = "潮汐",
    [":chaoxi"] = "游戏开始时，你获得【涨潮】技能（手牌无上限限制，且冰属性以外的伤害对你无效）；每轮开始时，你必须切换【涨潮】和【落潮】技能（你受的到伤害+1）",
    ["zuanji"] = "钻击",
    [":zuanji"] = "你在【涨潮】状态的出牌阶段，可以消耗2点气，本回合可以多出1次【杀】，且攻击范围无限，每回合限用一次",
    ["$zuanji"] = "乘胜追击！",
    ["zhangchao"] = "涨潮",
    ["$chaoxi1"] = "打不着我了吧",
    ["luochao"] = "落潮",
    ["$chaoxi2"] = "没有保护了，危险啊",
    ["@zhangchao"] = "涨潮",
    ["@luochao"] = "落潮",
    
    -- 2011-09-30 +AI+SE 狩猎灵魂的妖虫
    ["qbee"] = "女王蜂",
    ["~qbee"] = "嗡嗯~",
    ["shihun"] = "食魂",
    [":shihun"] = "锁定技，你距离1以内的角色每受1点伤害，你增加1点狂",
    ["rongjie"] = "溶解",
    [":rongjie"] = "出牌阶段，你可以消耗3点狂，弃掉你攻击范围内的任一角色装备区的1张牌",
    ["$rongjie"] = "帮你减轻点负担吧",
    ["fanyan"] = "繁衍",
    [":fanyan"] = "回合开始阶段，你可以消耗6点狂，获得1枚【工蜂】标记，每有1枚【工蜂】标记，你手牌上限+1。受到伤害时，可以弃掉1枚【工蜂】标记来防止1点伤害",
    ["$fanyan1"] = "孩子们要勤奋点哦",
    ["$fanyan2"] = "守护我",
    ["#Shihun"] = "%from 发动了<b style='color:yellow'>【食魂】</b>",
    ["@bee"] = "工蜂",
    ["$RongjieDiscard"] = "%to 的 %card 被 <b style='color:yellow'>【溶解】</b>的效果破坏了",
    ["#fanyan-protect"] = "工蜂--守护",
    [":#fanyan-protect"] = "受到伤害时，可以弃掉1枚【工蜂】标记来防止1点伤害",
    
    -- 2011-10-02 +AI+SE 宇宙霸主
    ["pyron"] = "派隆",
    ["~pyron"] = "我怎么可能被打败~",
    ["zhengfu"] = "征服",
    [":zhengfu"] = "回合开始阶段，可以进行判定：结果为黑桃，回合内你的黑色牌可以当【片甲不留】使用；为红桃，你的红色牌可以当【火杀】使用；其他花色，手牌无上限限制",
    ["$zhengfu1"] = "要净化一切了",
    ["$zhengfu2"] = "这就是神的光芒",
    ["$zhengfu3"] = "我的力量是无穷无尽的",
    ["huimie"] = "毁灭",
    [":huimie"] = "你的黑色牌可以当【片甲不留】使用",
    ["yanbao"] = "焰爆",
    [":yanbao"] = "你的红色牌可以当【火杀】使用",
    ["wujin"] = "无尽",
    [":wujin"] = "手牌无上限限制",
    ["shenyu"] = "神语",
    [":shenyu"] = "回合外，你可以消耗1点灵，用1张手牌代替判定牌",
    ["$shenyu"] = "一切由我主宰",
    ["yanzhilingyu"] = "炎之领域",
    [":yanzhilingyu"] = "场上所有伤害有20%机率转为火属性",
    ["@shenyu-card"] = "可以使用1张手牌发动【神语】来修改 %src 的判定",
    
    -- 2011-10-04 +AI+SE 摇滚屠夫
    ["zabel"] = "萨贝鲁",
    ["~zabel"] = "（琴弦声~~）",
    ["yaogun"] = "摇滚",
    [":yaogun"] = "出牌阶段，你可以消耗X点怨（X为场上所有存活角色数，且至少为4），其他所有角色依次进行判定，若为红桃，则减少1点体力，你回复1点体力，每回合限用一次",
    ["$yaogun"] = "让我享受来自你们灵魂深处的欲望吧！",
    ["tusha"] = "屠杀",
    [":tusha"] = "锁定技，只有伤害来源是你才会增加怨，每造成1点伤害，增加6点怨",
    ["$tusha"] = "杀戮的快感",
    ["#YaogunEffect"] = "%to 受到<b style='color:yellow'>【摇滚】</b>效果的影响",
    ["#TushaEffect"] = "%from <b style='color:yellow'>【屠杀】</b>效果发动",
    ["#YaogunFail"] = "<b style='color:#CCCCCC'>%from 怨念不足，发动<b style='color:yellow'>【摇滚】</b>失败</b>",
    
    -- 2011-10-04 +AI+SE 迷失的灵魂
    ["lilith"] = "莉莉丝",
    ["~lilith"] = "还是很迷茫呢",
    ["lieqi"] = "猎奇",
    [":lieqi"] = "出牌阶段，你可以消耗1点灵，猜其他任一角色的1张手牌的花色，若猜中，你得到这张牌",
    ["$lieqi1"] = "猜一猜？",
    ["$lieqi2"] = "好像很好玩呢",
    ["guisu"] = "归宿",
    [":guisu"] = "当你死亡时，可以指定其他任一角色，该角色摸5张牌",
    ["$guisu"] = "我的灵魂归宿是你吗？",
    
    -- 2011-10-13 +AI+SE 灵幻姐妹
    ["leilei"] = "泪泪&玲玲",
    ["~leilei"] = "母亲，还是没能找到你吗",
    ["anqi"] = "暗器",
    [":anqi"] = "出牌阶段，你的武器牌可以当【杀】使用，攻击范围为4，且50%机率必中",
    ["$anqi"] = "要小心点哦~",
    ["fanxiang"] = "返响",
    [":fanxiang"] = "你的回合外，可以消耗1点灵，把以你为目标的基本牌或非延时战术牌的目标，转移给你距离1以内的角色，被转移的角色摸1张牌",
    ["$fanxiang"] = "哎呀，这不关我事呢",
    ["lingfu"] = "灵符",
    [":lingfu"] = "出牌阶段，你可以消耗2点灵，弃1张手牌，让任一其他角色进入【封技】状态X回合，X为存活角色数，每回合限用一次",
    ["$lingfu"] = "勒令~封印",
    ["@fanxiang"] = "可以指定你距离1以内的角色，发动技能【返响】",
    ["$FanxiangChange"] = "<b style='color:yellow'>【返响】</b>的效果使 %card 的目标变成 %to",
    
    -- 2011-10-13 +AI+SE 暗黑界守卫
    ["phobos"] = "福布斯",
    ["~phobos"] = "系统崩溃，指令错误",
    ["huwei"] = "护卫",
    [":huwei"] = "你的回合外，其他角色受到伤害时，你可以消耗2点气，代替其承受伤害",
    ["$huwei"] = "守护程序启动",
    ["jijia"] = "机甲",
    [":jijia"] = "锁定技，无性别，且无属性和毒属性伤害对你无效",
    ["#Huwei"] = "<b style='color:yellow'>【护卫】</b>技能发动，伤害目标由 %to 转变为 %from",
    ["huwei:yes"] = "%src 受到伤害，是否发动【护卫】为其承受伤害",
    
    -- 2011-10-17 +AI+SE 吸血鬼猎人 多诺万的跟班
    ["donovan"] = "多诺万",
    ["~donovan"] = "这该死的血统终于完结了",
    ["huoshen"] = "火神",
    [":huoshen"] = "当你的体力小于3，且灵不大于3点，你的红色牌可以当【火杀】使用",
    ["$huoshen"] = "火神降临--炎破！",
    ["leishen"] = "雷神",
    [":leishen"] = "回合开始阶段，当你的灵大于3点，你可以弃1张手牌，获得以下技能：方块【杀】可当【雷杀】使用；本回合你的【雷杀】使用次数不受限制",
    ["$leishen"] = "雷神降临--迅雷！",
    ["xueshen"] = "雪神",
    [":xueshen"] = "当你的灵大于4点，出牌阶段，你可以消耗1点灵，你的梅花【杀】当做【冰杀】使用，且无距离限制",
    ["$xueshen"] = "雪神降临--冰破！",
    ["@leishen"] = "是否弃1张手牌，发动【雷神】技能",
    ["$XueshenEffect"] = "<b style='color:yellow'>【雪神】</b>效果发动，视为 %from 对 %to 使用<b>【冰杀】</b>",
    
    ["anita"] = "随从--安妮塔",
    [":anita"] = "\
安妮塔：体力：2 \
技能：【安慰】【唤醒】 \
防御：【闪】【圣水】\
代价：-1体力上限",
    ["@anita"] = "安妮塔",
    ["$anita"] = "安妮塔，协助我吧",
    ["anita_anwei"] = "安妮塔--安慰",
    [":anita_anwei"] = "多诺万回合开始阶段消耗1点灵，安妮塔可以把全部牌给多诺万；多诺万弃牌阶段，安妮塔可以向多诺万最多取回2张手牌",
    ["$anita_anwei1"] = "我会保护你的",
    ["$anita_anwei2"] = "我知道你需要什么",
    ["anita_xisheng"] = "安妮塔--牺牲",
    [":anita_xisheng"] = "多诺万濒死时，可以牺牲安妮塔，多诺万回复2点体力，得到安妮塔的所有牌",
    ["$anita_xisheng"] = "我不要你死去~~~",
    ["attack_anita"] = "请选择攻击的对象",
    ["anita_dodge"] = "弃1张防御牌抵销对安妮塔的伤害",
    ["@card_to_anita"] = "选择1张手牌给安妮塔，【闪】和【圣水】是安妮塔的防御牌",
    ["@card_to_donovan"] = "是否要取回安妮塔的所有牌",
    ["anita_card"] = "安妮塔的牌",
    ["anitaanwei"] = "安慰",
    ["#AttackingAnita"] = "%from 选择攻击 <b style='color:yellow'>安妮塔</b>",
    ["$AnitaCancelAttack"] = "<b style='color:yellow'>安妮塔</b> 使用 %card 抵销了 %from 的攻击",
    ["#AnitaInjured"] = "<b style='color:yellow'>安妮塔</b> 受到 %from 的攻击",
    ["#AnitaDead"] = "<b style='color:yellow'>安妮塔</b> 被杀死了 凶手是 %from",
    
    -- 2011-10-18 +AI+SE 暗黑界救世主
    ["jedah"] = "杰达",
    ["~jedah"] = "救赎还未完成，怎么可以~",
    ["jiushu"] = "救赎",
    [":jiushu"] = "出牌阶段，你可以消耗26点怨，复活任一死亡角色，该角色有2点体力，获得4张手牌，和你相同阵营，在你接下的第3个回合开始阶段死亡\
    ★你也要公布阵营；你死亡后，所有被救赎角色立即死亡",
    ["$jiushu"] = "和死神缔结契约，给你永生",
    ["qiyue"] = "契约",
    [":qiyue"] = "回合开始阶段，你可以指定任一被救赎角色为契约角色，若你没有【支配】技能，则减少1点体力上限获得【支配】(出牌阶段，可以获取并任意分配契约角色的手牌)",
    ["$qiyue"] = "这是我们的约定",
    ["zhipei"] = "支配",
    ["zhipeigive"] = "支配",
    [":zhipeigive"] = "可以给回任意手牌到契约角色，可多次使用",
    [":zhipei"] = "出牌阶段，可以获取并任意分配契约角色的手牌",
    ["$zhipei"] = "我来给你指引前方的道路吧",
    ["sizhilingyu"] = "死之领域",
    [":sizhilingyu"] = "杀死别人的角色，80%机率回复体力至上限",
    ["#JiushuEffect"] = "%to 由于 %from 发动了<b style='color:yellow'>【救赎】</b>，复活了",
    ["#JiushuOn"] = "%from 在 %arg 轮后解除<b style='color:yellow'>【救赎】</b>效果而死亡",
    ["@jiushu"] = "救赎",
    ["@qiyue"] = "是否选择任一被救赎角色发动【契约】",
    ["@zhipei-give"] = "请选择任意数量的手牌",
    ["#Sizhilingyu"] = "<b style='color:yellow'>【死之领域】</b> 效果发动 %from 回复全部体力",
    ["jiushu-player"] = "选择要救赎的角色",
    
    -- 2011-10-19 +AI+SE 复活的法老
    ["anakaris"] = "阿纳卡利斯",
    ["~anakaris"] = "不要再唤醒我了！",
    ["guanwu"] = "棺舞",
    [":guanwu"] = "出牌阶段，你可以消耗5点怨，使任一角色角色翻面，并进入【无损】状态X回合，X为存活角色数，每回合限用一次",
    ["$guanwu"] = "沉睡吧",
    ["zhicai"] = "制裁",
    [":zhicai"] = "出牌阶段，你可以消耗18点怨，指定你以外任一角色发动。该角色进入【封牌】状态，直到受到伤害或经过X回合，X为存活角色数x3，每回合限用一次",
    ["$zhicai"] = "这是对神不敬的惩戒",
    ["#ZhicaiOffByDamage"] = "%from 受到伤害 <b style='color:yellow'>【制裁】</b>效果解除，退出<b style='color:yellow'>【封牌】</b>状态",
    
    -- 2011-10-19 +AI 暗黑猎人
    ["bulleta"] = "芭蕾塔",
    ["~bulleta"] = "还没赚够钱呢~~",
    ["baijin"] = "拜金",
    [":baijin"] = "摸牌阶段，你可以消耗1点狂，多摸1张牌",
    ["$baijin"] = "当然是越多越好",
    ["shoulie"] = "狩猎",
    [":shoulie"] = "任意角色的坐骑或防具从手牌或装备区进入弃牌堆时，你可以消耗1点狂，获得该牌",
    ["$shoulie"] = "丢掉可太浪费了",
    ["youbu"] = "诱捕",
    [":youbu"] = "出牌阶段，你可以让任一其他角色声明一种花色，并抽取你1张手牌，若抽取的牌的花色和声明的花色不同，该角色失去1点体力，每回合限用一次",
    ["$youbu1"] = "上当了哦",
    ["$youbu2"] = "被你跑掉了呢",
    
    -- 2011-10-20 +AI+SE 被诅咒的武者
    ["bishamon"] = "毘沙门",
    ["~bishamon"] = "下一个宿主在哪呢",
    ["banruo"] = "般若", 
    [":banruo"] = "锁定技，你的怨不会因其他角色体力增加而减少", 
    ["guiyan"] = "鬼炎",
    [":guiyan"] = "出牌阶段，你可以消耗8点怨，指定任一其他角色进行判定，若为黑色，该角色进入【封牌】状态，直到回合结束，每回合限用一次",
    ["$guiyan"] = "怨魂缠绕，颤抖吧",
    ["yuanhun"] = "元魂",
    [":yuanhun"] = "出牌阶段，你可以消耗20点怨，补满体力和手牌至上限，体力上限-1，每回合限用一次",
    ["$yuanhun"] = "这个肉身已经支撑不住了吗？",
    ["@banruo"] = "般若",
    ["#GuiyanFail"] = "%from <b style='color:yellow'>【鬼炎】</b>发动失败",
    
    -- 2011-10-20 +AI+SE 有梦想的猫娘
    ["felicia"] = "菲莉希娅",
    ["~felicia"] = "梦想中的乐园，找不到了~",
    ["leyuan"] = "乐园",
    [":leyuan"] = "出牌阶段，你的【圣水】和【治疗】可以指定至多3名角色使用，且无距离限制",
    ["$leyuan"] = "大家要一起开开心心的",
    ["huhuan"] = "呼唤",
    [":huhuan"] = "你的回合外，当你需要打出【杀】或【闪】时，可以让其他角色替你打出，每替你打出1张牌，该角色摸1张牌，你消耗1点气",
    ["$huhuan1"] = "谁来帮帮我",
    ["$huhuan2"] = "你对我太好了 喵~",
    ["@huhuan-card"] = "是否帮 %src 出牌",
    
    -- 2011-10-21 +AI+SE 疾风之人狼
    ["gallon"] = "加伦",
    ["~gallon"] = "等不到月圆之时了吗",
    ["manyue"] = "满月",
    [":manyue"] = "回合开始阶段，你可以消耗1点怒进行判定，若为红色，角色翻面，本回合摸牌阶段可以多摸2张牌，且没有手牌上限限制",
    ["$manyue"] = "A WUUU~~",
    ["huolong"] = "火龙",
    [":huolong"] = "出牌阶段，当你使用1张红色的【杀】后，还可以再使用1张红色的【杀】",
    ["$huolong"] = "再来一击",
    ["#ManyueOn"] = "%from <b style='color:yellow'>【满月】</b> 发动成功",
    ["$HuolongBang"] = "%from 发动 <b style='color:yellow'>【火龙】</b> 技能，使用了 %card",
    ["#ManyueFail"] = "%from <b style='color:yellow'>【满月】</b> 发动失败",
}
