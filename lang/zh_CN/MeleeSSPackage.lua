-- translation for melee-ss Package

return {
    ["meleess"] = "经典侍魂",
    
    -- 2011-09-08 +AI 豪放不拘
    ["haohmaru"] = "霸王丸",
    ["~haohmaru"] = "呃... 真想再喝一口酒...",
    ["jiuqi"] = "酒气",
    [":jiuqi"] = "出牌阶段，你可以把你的黑桃手牌当酒使用，但不能用于濒死自救",
    ["$jiuqi"] = "好酒！",
    ["tianba"] = "天霸",
    [":tianba"] = "必杀技，消耗3点怒，对攻击范围内的任一角色使用1张【杀】，目标角色需要2张【闪】才能抵销，否则受到3点无属性伤害；目标角色可以弃2张手牌或1张装备区的牌来抵销1点伤害",
    ["$tianba"] = "奥义——天--霸--封--神--斩",
    ["@tianba"] = "可以使用1张【杀】，指定1目标角色，发动必杀技——天霸封神斩",
    ["@tianba-jink-1"] = "【天霸】效果发动，你需要打出2张【闪】",
    ["@tianba-jink-2"] = "【天霸】效果发动，你需要再打出1张【闪】",
    ["TianbaEffect1"] = "弃2张手牌抵销【天霸】的1点伤害",
    ["TianbaEffect2"] = "弃1张装备抵销【天霸】的1点伤害",
    
    -- 2011-09-10 +AI 大自然守护者
    ["nakoruru"] = "娜可露露",
    ["~nakoruru"] = "玛玛哈哈... 大自然只能靠大家守护了... 父亲... ",
    ["goutong"] = "沟通",
    [":goutong"] = "出牌阶段，你可以消耗X点灵，和任一其他角色交换X张牌（该角色手牌须不小于X）",
    ["$goutong"] = "听到了吗？大自然的声音",
    ["yingxuan"] = "鹰悬",
    [":yingxuan"] = "出牌阶段，你可以弃1张手牌，进入【悬空】状态 (其他角色计算与你的距离+2)，每回合限用一次",
    ["$yingxuan"] = "玛玛哈哈!",
    ["chongci"] = "冲刺",
    [":chongci"] = "锁定技，【悬空】状态中，你使用的牌不受距离限制；你使用1张非装备牌后，【悬空】状态解除",
    ["$chongci"] = "玛玛哈哈，冲刺！",
    ["@xuankong"] = "悬空",
    ["xuankong"] = "悬空",
    [":xuankong"] = "其他角色计算与你的距离+2",
    ["#Chongci"] = "%from <b style='color:yellow;'>【冲刺】</b>技能触发",
    
    -- 2011-09-10 +AI 居合剑客
    ["ukyo"] = "桔右京",
    ["~ukyo"] = "圭... 我等你... 咳咳...",
    ["xuruo"] = "虚弱",
    [":xuruo"] = "锁定技，当你失去最后1张手牌时，失去1点体力，摸5张牌",
    ["$xuruo"] = "咳...",
    ["juhe"] = "居合",
    [":juhe"] = "出牌阶段，你有装备武器时，对目标角色使用【杀】时，可以消耗1点气，令此【杀】不可抵销",
    ["$juhe"] = "（挥剑声~）",
    ["liulian"] = "六连",
    [":liulian"] = "必杀技，消耗4点气和1点体力，指定攻击范围内任一角色发动，从牌堆翻牌（至多6次），直到出现方块花色，造成等于翻牌次数的无属性伤害",
    ["$liulian"] = "有破绽，飞燕六连",
    ["#Xuruo"] = "%from <b style='color:#CCCCCC;'>【虚弱】</b>技能触发",
    ["@liulian"] = "是否发动必杀技——飞燕六连",
    
    -- 2011-09-11 +AI 追求极致的舞者
    ["kyoshiro"] = "千两狂死郎",
    ["~kyoshiro"] = "艺术... 就是用生命换取的美感",
    ["quwu"] = "曲舞",
    [":quwu"] = "出牌阶段，你弃1张手牌发动，其他角色须依次展示与弃牌同花色的手牌，每展示1次，你+1狂。若不展示，则该角色-1精力，每回合限用一次",
    ["$quwu"] = "来欣赏舞蹈的艺术吧",
    ["yanwu"] = "宴舞",
    [":yanwu"] = "必杀技，消耗8点狂，弃1张手牌，其他角色须依次弃与之同花色的手牌，每弃1张手牌，你+1体力。若不弃，该角色-1体力",
    ["$yanwu"] = "来吧，一起狂欢吧，啊哈哈",
    ["@quwu-card-show"] = "%src的【曲舞】效果发动，你是否展示花色为 %arg的1张手牌",
    ["$QuwuCardShow"] = "%from 显示了 %card",
    ["@yanwu"] = "是否发动必杀技——血肉宴舞",
    ["@yanwu-card-discard"] = "%src的【宴舞】效果发动，你是否弃置花色为 %arg的1张手牌",
    
    -- 2011-09-12 +AI 怨之花牌
    ["genjuro"] = "牙神幻十郎",
    ["~genjuro"] = "可恶... 我还要更强大的力量",
    ["yinghua"] = "樱华",
    [":yinghua"] = "摸牌阶段，你可以消耗3点怨，跳过此阶段，和任一角色拼点；若你赢，摸X张牌（X为拼点牌差值，且最多为4）",
    ["$yinghua"] = "没有赌博的人生是无趣的",
    ["sudi"] = "宿敌",
    [":sudi"] = "回合开始阶段，你可以给体力与你相等的任一其他角色添加【宿敌】标记，直至其死亡。场上同时只能有1个标记 \
    ★游戏开始时，若有霸王丸在场，则给霸王丸添加【宿敌】标记",
    ["$sudi"] = "从此刻开始，将你斩杀就是我的人生", 
    ["zhansha"] = "斩杀",
    [":zhansha"] = "回合结束阶段，你可以消耗X点怨，拥有标记【宿敌】的角色直接死亡。（X为当前存活角色数x5，且至少为30）",
    ["$zhansha"] = "成为梅莺毒的食物吧！",
    ["meet_haohmaru"] = "霸王丸，今天就是我们最后的对决",
    ["kill_haohmaru"] = "霸王丸... 剑道就是斩杀的道理懂了没有！",
    ["@yinghua"] = "是否发动【樱华】，和一名角色进行拼点",
    ["@sudi"] = "是否发动【宿敌】，选择一名和你当前体力相等角色为目标",
    ["@sudimark"] = "宿敌",
    
    -- 2011-09-14 +AI 风间一族最强忍者 水之化身
    ["sogetsu"] = "风间苍月",
    ["~sogetsu"] = "任务完成不了了...",
    ["fuyue"] = "浮月",
    [":fuyue"] = "锁定技，其他角色计算与你的距离时，距离+1",
    ["yueyin"] = "月隐",
    [":yueyin"] = "你的回合外，当你被指定为非延时效果的目标时，若该效果能被无效，你可以弃2张牌，让效果无效，并增加1点灵",
    ["$yueyin"] = "隐！",
    ["jiefang"] = "解放",
    [":jiefang"] = "回合开始阶段，你可以消耗3点灵，变身为【水邪】",
    ["$jiefang"] = "从束缚中解放吧！青龙！",
    ["@jiefang"] = "是否变身为【水邪】",
    ["#Yueyin"] = "%from 发动<b style='color:yellow'>【月隐】</b>，效果失去目标而无效",
    
    ["suija"] = "水邪",
    ["~suija"] = "又被封印了吗？",
    ["yuelun"] = "月轮",
    [":yuelun"] = "锁定技，你使用的【冰杀】无距离限制",
    ["$yuelun"] = "神是无所不能的",
    ["siyue"] = "死月",
    [":siyue"] = "出牌阶段，你可以消耗2点灵，使任意1张手牌当成【冰杀】使用，且不受【杀】的次数限制",
    ["$siyue"] = "觉悟吧",
    ["fengyin"] = "封印",
    [":fengyin"] = "回合结束阶段，你可以消耗1点灵，变身为【风间苍月】",
    ["$fengyin"] = "暂时休息一下",
    ["$SiyueEffect"] = "<b style='color:yellow'>【死月】</b>效果发动，视为 %from 对 %to 使用<b>【冰杀】</b>",
    
    -- 2011-09-16 +AI 爆炎忍者 炎之化身
    ["kazuki"] = "风间火月",
    ["~kazuki"] = "叶月... 哥哥不能再照顾你了...",
    ["rexue"] = "热血",
    [":rexue"] = "锁定技，回合结束阶段，你增加1点怒",
    ["$rexue"] = "战斗的感觉太棒了！",
    ["yanmie"] = "炎灭",
    [":yanmie"] = "锁定技，你的无属性【杀】视为【火杀】; 造成的火属性伤害后，若有怒，必须消耗1点怒，且20%机率弃目标角色1张牌",
    ["$yanmie1"] = "（爆炸声）",
    ["$yanmie2"] = "燃烧吧！朱雀之力",
    ["juexing"] = "觉醒",
    [":juexing"] = "锁定技，回合开始阶段，当你的怒大于4点时，角色变为【炎邪】",
    ["$juexing"] = "控制不住体内无尽的力量了...",
    ["#Rexue"] = "%from <b style='color:yellow'>【热血】</b>效果发动",
    ["#Juexing"] = "%from 抑制不住体内怒气，<b style='color:yellow'>【觉醒】</b>效果发动",
    ["$YanmieDiscard"] = "<b style='color:yellow'>【炎灭--爆】</b>发动 %to 的 %card 被破坏",
    ["#YanmieFail"] = "<b style='color:#CCCCCC'>%from <b style='color:yellow'>【炎灭--爆】</b>发动失败</b>",
    
    ["enja"] = "炎邪",
    ["~enja"] = "啊~~~~~~~~",
    ["fanshi"] = "反蚀",
    [":fanshi"] = "锁定技，回合结束阶段，你必须选择减少1点怒或体力",
    ["$fanshi"] = "（低吼声...）",
    ["yanmie_high"] = "炎灭",
    [":yanmie_high"] = "锁定技，造成的任何伤害视为火属性，并可弃目标角色1张牌",
    ["$yanmie_high"] = "爆！",
    ["baosha"] = "爆杀",
    [":baosha"] = "出牌阶段，你可以消耗2点怒，使用的【杀】，目标为攻击范围内所有角色，每回合限用一次",
    ["$baosha"] = "吼~~全部都变成灰烬吧！",
    ["FanshiEffect1"] = "减少1点怒气",
    ["FanshiEffect2"] = "失去1点体力",
    ["#Fanshi"] = "%from 受到<b style='color:#CCCCCC'>【反蚀】</b>效果影响",
    ["#Baosha"] = "%from 对攻击范围内的所有人发动<b style='color:yellow'>【爆杀】</b>",
    ["yanmie_bao"] = "炎灭--爆",
    
    -- 2011-09-16 +AI 碧眼忍者
    ["galford"] = "加尔福特",
    ["~galford"] = "就这么倒下了... 对不起爱慕我的姑娘们啊...",
    ["renquan"] = "忍犬",
    [":renquan"] = "出牌阶段，你可以弃1张基本牌，指定距离2以内的一名角色，你进行判定，若为红色，造成目标角色1点伤害；若为黑色，弃目标角色1张牌，每回合限用一次",
    ["$renquan"] = "GO~ Poppy",
    ["dianguang"] = "电光",
    [":dianguang"] = "出牌阶段，你可以消耗3点气，进入【电光】状态（雷属性伤害对你无效，你造成的无属性伤害视为雷属性，受到伤害可弃伤害来源装备区的武器）直到受到伤害为止",
    ["$dianguang"] = "与闪电化为一体！",
    ["dianguang_on"] = "电光状态",
    [":dianguang_on"] = "锁定技，雷属性伤害对你无效，你造成的无属性伤害视为雷属性，受到伤害可弃伤害来源装备区的武器",
    ["@dianguang"] = "电光",
    ["$RenquanDiscard"] = "%to 的 %card 被<b style='color:yellow'>【忍犬】</b>破坏",
    ["$DianguangEffect"] = "%from 的 %card 被<b style='color:yellow'>【电光】</b>的效果破坏",

    -- 2011-09-17 +AI 冰之精灵
    ["rimururu"] = "莉姆露露",
    ["~rimururu"] = "果然我还是不够成熟...",
    ["bingren"] = "冰刃",
    [":bingren"] = "出牌阶段，你可以消耗3点灵，指定任一装备武器的角色，目标角色进入【冰刃】状态（无属性【杀】视为【冰杀】）直到弃掉武器为止，每回合限用一次",
    ["$bingren"] = "克恩鲁！请帮助我们！",
    ["chuixue"] = "吹雪",
    [":chuixue"] = "出牌阶段，你可以消耗5点灵，视为对其他角色依次使用【杀】，造成的伤害视为冰属性，每回合限用一次",
    ["$chuixue"] = "呀~~生气啦！",
    ["shenjing"] = "神镜",
    [":shenjing"] = "锁定技，你不能装备防具，受到伤害时判定，若为黑色，伤害无效且增加1点灵",
    ["$shenjing"] = "克恩鲁，保护我",
    ["bingren_on"] = "冰刃--封",
    [":bingren_on"] = "锁定技，无属性【杀】视为【冰杀】",
    ["@bingren"] = "冰刃",
    ["chuixue-jink"] = "%src 发动【吹雪】，请打出1张【闪】响应",
    ["#BingrenOff"] = "%from 失去武器，<b style='color:yellow'>【冰刃】</b>状态解除",
    ["$Shenjing"] = "%from 发动<b style='color:yellow'>【神镜】</b>效果",
    ["chuixuebang"] = "吹雪",
    
    -- 2011-09-19 +AI 名门贵族
    ["charlotte"] = "夏洛特",
    ["~charlotte"] = "流下第一滴血时，我就已经失败了...",
    ["pokong"] = "破空",
    [":pokong"] = "出牌阶段，当你使用【杀】造成目标角色伤害时，可以弃掉目标角色装备区的【坐骑】",
    ["$pokong"] = "哦~嗬嗬 跪倒在我脚下吧！",
    ["xunguang"] = "迅光",
    [":xunguang"] = "出牌阶段，当你使用的【杀】结算完时，可以消耗1点气，翻开牌堆第1张牌，若能使用则必须使用，每回合限用一次",
    ["$xunguang"] = "哼！别想停下来",
    ["$PokongEffect"] = "%to 的 %card 被<b style='color:yellow'>【破空】</b>的效果破坏了",
    ["$XunguangThrow"] = "%from 无法使用 %card，弃置之",
    ["@xunguang"] = "必须使用【迅光】效果翻出来的牌",
    
    -- 2011-09-21 +AI 伊贺的统帅
    ["hanzo"] = "服部半藏",
    ["~hanzo"] = "主公，部下告退了...",
    ["kongchan"] = "空蝉",
    [":kongchan"] = "当你受到伤害时，可以弃1张装备牌来抵销此伤害，此时若伤害有来源，可以再向来源目标使用1张【杀】",
    ["$kongchan"] = "空蝉之术--天舞",
    ["yingwu"] = "影舞",
    [":yingwu"] = "你使用的【杀】造成伤害后，可以消耗1点气，你进入【影舞】状态（被指定为效果的目标时，若效果可以被无效，有50%机率无效），直到你使用1张牌",
    ["$yingwu"] = "忍法--影分身",
    ["chenyin"] = "尘隐",
    [":chenyin"] = "必杀技，消耗3点气，与距离1以内的任一角色拼点，若你赢，造成目标角色1点伤害，并使其进入【封技】状态X回合，X为存活角色数x2",
    ["$chenyin"] = "秘技--爆炎~微尘隐",
    ["@kongchan"] = "是否发动【空蝉--天舞】弃1张装备牌，抵销这次伤害",
    ["@kongchan-bang"] = "是否发动【空蝉--地听】对伤害来源 %src 使用【杀】",
    ["#KongchanBang"] = "%from 发动技能<b style='color:yellow'>【空蝉--地听】</b>",
    ["@yingwu"] = "影舞",
    ["yingwu_on"] = "影舞状态",
    [":yingwu_on"] = "锁定技，被指定为效果的目标时，若效果可以被无效，有50%机率无效",
    ["$Yingwu"] = "%from <b style='color:yellow'>【影舞】</b>效果发动，%card 效果因没有正确的目标而失效",
    ["#YingwuOff"] = "%from 解除了<b style='color:yellow'>【影舞】</b>状态",
    ["@chenyin"] = "是否发动必杀技——爆炎微尘隐，选择1张用于拼点的手牌",
    
    -- 2011-09-21 +AI 新阴流宗师
    ["jubei"] = "柳生十兵卫",
    ["~jubei"] = "柳生新阴流已经到尽头了吗...",
    ["xinyan"] = "心眼",
    [":xinyan"] = "锁定技，你没装备武器时，装备武器的角色使用的【杀】对你无效",
    ["$xinyan"] = "你的一切行动已经被我洞悉了",
    ["erdao"] = "二刀",
    [":erdao"] = "出牌阶段，若你没获得【双月】，可以消耗2点气，把手牌中1张武器牌移出，获得技能【双月】（可以交换武器，再使用1次【杀】），直到失去装备区的武器",
    ["$erdao"] = "见识一下柳生二刀流的厉害吧",
    ["daoqu"] = "刀取",
    [":daoqu"] = "回合结束阶段，你可以弃1张手牌，获得距离1以内任一角色装备区的武器",    
    ["$daoqu"] = "空手入白刃",
    ["shuangyue"] = "双月",
    [":shuangyue"] = "出牌阶段，可以交换装备区和双月武器区的武器，若如此做，该回合可以多使用1次【杀】，每回合限用一次",
    ["$XinyanEffect"] = "%from <b style='color:yellow'>【心眼】</b> 效果发动，%to 使用的 %card 无效",
    ["@daoqu"] = "是否发动【刀取】",
    ["erdao_weapon"] = "双月武器",
    ["#ShuangyueOff"] = "%from <b style='color:#CCCCCC'>失去技能【双月】</b>",
    
    -- 2011-11-15 +AI 复仇与追忆
    ["shizumaru"] = "绯雨闲丸",
    ["~shizumaru"] = "这种孤独的感觉还要持续多久....",
    ["wuyu"] = "雾雨",
    [":wuyu"] = "当你受到伤害后，可以弃置X张黑桃牌，回复X点体力",
    ["$wuyu"] = "对伤痛已经没有感觉了",
    ["meiyu"] = "梅雨",
    [":meiyu"] = "出牌阶段，你可以消耗1点狂，弃置1张梅花手牌，摸2张牌",
    ["$meiyu"] = "小心点，我要开始认真了",
    ["baoyu"] = "暴雨",
    [":baoyu"] = "必杀技，消耗5点狂，弃置所有X张黑色牌并翻面，指定你攻击范围内任一角色，对其造成X次无属性伤害，每次1点；目标角色每次都可以打出1张【闪】来防止伤害",
    ["$baoyu"] = "暴雨狂风斩！",
    ["@wuyu"] = "是否弃置黑桃牌来回复体力",
    ["@baoyu"] = "是否弃置所有黑色牌发动必杀技：【暴雨狂风斩】",
    ["@baoyu-jink"] = "%src 对你使用【暴雨】，请打出1张【闪】来防止伤害",
    
    -- 2011-11-16 +AI 人魔混血
    ["genan"] = "不知火幻庵",
    ["~genan"] = "夫人... 孩子们... 无能为力了~",
    ["chaoxiu_get"] = "朝秀",
    [":chaoxiu_get"] = "专属技，出牌阶段，可以使用任一武器牌为祭品，召唤【朝秀】到你的手牌中",
    ["$chaoxiu_get"] = "朝秀！一起撕裂敌人吧！",
    ["duchui"] = "毒吹",
    [":duchui"] = "出牌阶段，你可以消耗4点狂，指定你攻击范围内的任一角色，视为对其使用【毒杀】，不受【杀】使用次数限制，每回合限用一次",
    ["$duchui"] = "咦~嘻 嘻 嘻~",
    ["#ChaoxiuGet"] = "%from 发动专属技能，召唤了<b style='color:yellow'>【朝秀】</b>",
    ["#DuchuiEffect"] = "视为 %from 对 %to 使用 <b>【毒杀】</b>",
    
}
