
# 博德之门3 X FF14：占星术士

## 安装说明 Installation

    建议使用 [BG3 Mod Manager](https://bg3modmanager.net/) 进行安装。
    It's recommended to use [BG3 Mod Manager](https://bg3modmanager.net/) for installation.

    该 mod 需要 [ImpUI](https://www.nexusmods.com/baldursgate3/mods/366) 作为前置。
    This mod requires [ImpUI](https://www.nexusmods.com/baldursgate3/mods/366) as a prerequisite.

    该 mod 需要 [BG3 Script Extender](https://github.com/Norbyte/bg3se/releases) 作为前置。
    This mod requires [BG3 Script Extender](https://github.com/Norbyte/bg3se/releases) as a prerequisite.

    该 mod 提供了来自 FF14 的占星术士职业，在默认情况下，你将在占星术士 20 级时学会所有技能。
    你需要自行安装其他解锁等级上限的 mod（例如 [Expansion](https://www.nexusmods.com/baldursgate3/mods/279)）以突破游戏本身总等级 12 级的限制。
    或者，你也可以安装 [Mod Configuration Menu](https://www.nexusmods.com/baldursgate3/mods/9162)。通过其中的选项，可以将该职业的成长压缩到 12 级。
    This mod introduces the Astrologian class from FF14. By default, you unlock all the features at Astrologian Level 20 (20-level progression).
    You still need other mods (like [Expansion](https://www.nexusmods.com/baldursgate3/mods/279)) to extend max level beyond 12 (base game limit).

    该 mod 兼容一些常见法术拓展 mod，例如 [5e Spells](https://www.nexusmods.com/baldursgate3/mods/125)。
    This mod is compatible with some common used spell extension mod such as [5e Spells](https://www.nexusmods.com/baldursgate3/mods/125).

    该 mod 支持简体中文、繁体中文和英语。
    This mod supports Simplified Chinese, Traditional Chinese and English.



## 奥秘卡 Arcana

### 概述 Overview

    奥秘卡充能允许占星术士使用职业动作抽卡，从牌组中抽取一张奥秘卡。同一时刻只能持有一张奥秘卡。
    Arcana Charge enables astrologians to use the Draw class action, which draws an arcanum from the divining deck. Only one arcanum can be held at a time.

    奥秘卡共有 6 种：太阳神之衡，世界树之干，放浪神之箭，河流神之瓶，战争神之枪，命运神之塔。每一种都有其独特的效果。
    There are 6 types of arcanum: The Balance, The Bole, The Arrow, The Ewer, The Spear, The Spire. Each one has its unique effect.

    解锁重抽后，每次抽卡限一次，可以使用职业动作将抽取的奥秘卡替换为另一张不同的随机奥秘卡。
    After unlocking Redraw, once per draw, you can use the class action to replace the drawn arcanum with a different random arcanum.

    解锁暂留后，可以使用职业动作将持有的奥秘卡暂留下来。同一时刻只能暂留一张奥秘卡。
    After unlocking Spread, you can use the class action to add the currently drawn arcanum to your spread. Only one arcanum can be spread at a time.

    解锁神圣路后，可以使用职业动作将持有的奥秘卡废弃，同时获得一项对应的神圣路加成。同一时刻只能获得一种神圣路加成。
    神圣路加成可以让下一张发出的奥秘卡的效果发生改变，无论是手卡还是暂留卡。
    注意：只有手卡可以转换为神圣路，暂留卡不行。
    After unlocking Royal Road, you can use the class action to return the currently drawn arcanum to the deck and gain a royal road buff corresponding to the type of the arcanum. Only one royal road buff can be activated at a time.
    The royal road buff will alter the effect of your next played arcanum, whether it's held arcanum or spread arcanum.
    Note: Only held arcanum can be turned into the royal road buff; spread arcanum cannot.

    解锁小奥秘卡后，每次短休限一次，可以使用职业动作随机抽取一张小奥秘卡：王冠之领主或王冠之贵妇。小奥秘卡不消耗奥秘卡充能。同一时刻只能持有一张小奥秘卡。
    After unlocking Minor Arcana, once per short rest, you can use the class action to draw a random minor arcanum: the Lord of the Crowns and the Lady of the Crowns. Minor Arcana does not cost Arcana Charge. Only one minor arcanum can be held at a time.

    解锁袖内抽卡后，每次长休限一次，可以使用职业动作一次性补满手卡、暂留卡、神圣路、小奥秘卡。不会替换掉已抽取的奥秘卡。
    After unlocking Sleeve Draw, once per long rest, you can use the class action to execute Draw, Royal Road, Spread and Minor Arcana in succession. Will not overwrite currently saved arcanum.


### 神圣路效果 Effects of Royal Roads

    共有三种类型的神圣路，由六张对应的奥秘卡转换而来。
    There are 3 types of royal roads, transformed from 6 corresponding types of arcanums.

    神圣路（效果强化）：下次使用奥秘卡时，其效果将会得到强化。
    由太阳神之衡或世界树之干转变而来。
    Royal Road (Potency): The next time an arcanum is played, its effect is intensified.
    Transformed from The Balance or The Bole.

    神圣路（时间延长）：下次使用奥秘卡时，其有效时间将会延长。
    由放浪神之箭或战争神之枪转变而来。
    Royal Road (Duration): The next time an arcanum is played, its duration is extended.
    Transformed from The Arrow or The Spear.

    神圣路（范围效果）：下次使用奥秘卡时，其将会对附近所有盟友生效，但效果可能降低。
    由河流神之瓶或建筑神之塔转变而来。
    Royal Road (Area): The next time an arcanum is played, its effect expands to an area while potentially reduced.
    Transformed from The Ewer or The Spire.


### 奥秘卡效果 Effects of Arcanas

    太阳神之衡：造成伤害时，可以额外造成 1d8 光耀伤害。
    效果强化：造成伤害时，可以额外造成 1d6 光耀伤害，并可作为反应动作再次造成 1d6 光耀伤害。
    范围效果：造成的伤害提升 1d4 光耀。
    The Balance: Deals an additional 1d8 Radiant when dealing damage.
    Potency: Deals an additional 1d6 Radiant when dealing damage, and deals an additional 1d6 Radiant as a Reaction.
    Area: Deals an additional 1d4 Radiant.

    世界树之干：豁免检定和护甲等级获得等同于施法者熟练项加值的加值，并且不会受到重击。
    效果强化：豁免检定和护甲等级获得等同于施法者熟练项加值两倍的加值，并且不会受到重击。
    范围效果：豁免检定和护甲等级获得等同于施法者熟练项加值的加值。
    The Bole: Receives a bonus to Saving Throw and Armour Class, which equals to the Proficiency Bonus of the astrologian. Attackers can't land Critical Hits on you.
    Potency: Receives a bonus to Saving Throw and Armour Class, which equals to twice the Proficiency Bonus of the astrologian. Attackers can't land Critical Hits on you.
    Area: Receives a bonus to Saving Throw and Armour Class, which equals to the Proficiency Bonus of the astrologian.

    放浪神之箭：获得一个额外的附赠动作。
    效果强化：获得两个额外的附赠动作。
    范围效果：（效果不变）获得一个额外的附赠动作。
    The Arrow: Gain 1 additional Bonus Action Point.
    Potency: Gain2 additional Bonus Action Point.
    Area: (Unchanged) Gain 1 additional Bonus Action Point.

    河流神之瓶：施放法术时，获得等同于法术环位两倍的星力充能。
    效果强化：施放法术时，获得等同于法术环位三倍的星力充能。
    范围效果：施放法术时，获得等同于法术环位的星力充能。
    奥秘卡效果结束时会清空星力充能。
    星力充能可用于恢复消耗的法术位：每 1 环消耗 4 点。
    The Ewer: When you cast a spell, you gain Astrodyne Charges equal to the spell level * 2.
    Potency: When you cast a spell, you gain Astrodyne Charges equal to the spell level * 3.
    Area: When you cast a spell, you gain Astrodyne Charges equal to the spell level.
    Unused Astrodyne Charges will be cleared when arcanum effect ends.
    Astrodyne Charges can be used to restore used spell slot: 4 charges per spell slot level.

    战争神之枪：攻击掷骰获得优势。
    效果强化：攻击掷骰获得优势，并且攻击触发重击所需的点数减少 1 点。
    范围效果：攻击掷骰至少掷出 5 点。
    The Spear: Attack Roll has Advantage.
    Potency: Attack Roll has Advantage. Reduce the number you need to roll a Critical Hit while attacking by 1.
    Area: Attack Roll must be 5 or higher.

    建筑神之塔：移动速度翻倍，并且移动不会触发借机攻击。
    效果强化：移动速度翻倍，并且移动不会触发借机攻击，跳跃不再消耗附赠动作。
    范围效果：移动速度翻倍。
    The Spire: Movement Speed doubles, and moving doesn't provoke Opportunity Attacks.
    Potency: Movement Speed doubles, and moving doesn't provoke Opportunity Attacks. Jumping does not cost Bonus Action Point.
    Area: Movement Speed doubles.



## 职业信息 Class Information

    HP: 初始为 8+体质调整值，每级增加 5+体质调整值
    HP: starts with 8+Constitution modifier, increases 5+Constitution modifier per level.

    施法关键属性：感知
    Spellcasting Ability: Wisdom

    豁免熟练项：感知，魅力
    Saving Throw proficiencies: Wisdom, Charisma

    装备熟练项: 简易武器
    Equipment proficiencies: Simple weapons

    技能熟练项（选择三项）: 奥秘, 历史, 自然, 察觉, 医药, 洞悉, 求生, 欺瞒, 表演, 游说
    Skills with proficiency (Choose 3): Arcana, History, Nature, Insight, Medicine, Perception, Survival, Deception, Performance, Persuasion


### 职业成长：20级版本 Level Progression: 20-Level

#### 1 级
    从占星术士戏法表中选择2个戏法
    从占星术士法术表中选择3个法术
    学会 [烧灼] [凶星] [吉星] [康复]

    烧灼: 戏法, 18m, 动作, 魅力豁免, 令敌人获得3回合烧灼debuff（每回合D8伤害戏法）
    凶星: 一环, 18m, 动作, 魅力豁免, 3d8随机属性伤害, 每升环+1d8
    吉星: 一环, 18m, 动作, 1d6+施法调整值 生命值, 每升环+1d6
    康复: 一环, 18m, 附赠动作, 随机移除一个疾病、中毒、瘫痪、目盲
        二环: 随机移除一个疾病、中毒、瘫痪、目盲、诅咒
        三环：随机移除一个疾病、中毒、瘫痪、目盲、魅惑、石化、震慑、诅咒

#### 2 级
    [抽卡]
    奥秘卡充能:3 短休充能

    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [即刻咏唱] [光速] [时间膨胀]

    即刻咏唱: 可切换被动特性, 短休充能, 消耗动作的法术转而消耗附赠动作
    光速: 职业动作, 短休充能, 附赠动作, 三回合内, 每回合可以进行两次免费的奥秘卡动作
    时间膨胀: 职业动作, 短休充能, 18m, 令一名盟友拥有的来自你的占星术状态的剩余持续时间延长2回合

#### 3 级
    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [吉星相位] [阳星] [生辰]

    选择占星学派: 白昼学派, 黑夜学派

    吉星相位: 二环, 18m, 动作, 2d4+施法调整值 生命值, 每升环+1d4
        白昼学派额外效果: 3回合内, 每回合额外恢复 2d4 生命值, 每升环+1d4
        黑夜学派额外效果: 赋予 10 层黑夜守御, 每升环+6层
        黑夜守御: 每层降低1点所受伤害, 每次受到伤害层数减半
    阳星: 二环, 9m, 动作, 2d4+施法调整值 生命值, 每升环+1d4
    生辰: 二环, 18m, 3m, 动作, 复活一名同伴, 使其以1生命值归来, 并获得虚弱
        以三环及以上施法时, 复活的目标不会获得虚弱

#### 4 级
    选择一个专长

    [重抽]

    从占星术士戏法表中选择1个戏法
    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [醒梦] [先天禀赋]

    醒梦: 职业动作, 短休充能, 附赠动作, 2回合内, 敌人攻击你时承受劣势, 你每回合恢复1个一环法术位, 效果结束时再恢复1个二环法术位
    先天禀赋: 职业动作, 18m, 短休充能, 附赠动作/反应, 基础治疗量为 2*占星术士等级, 目标生命值比例越低, 治疗量越高, 低于30%时达到最大值 5*占星术士等级, 可以在盟友受到非致命伤害后作为反应使用

#### 5 级
    奥秘卡充能:3->4
    [小奥秘卡]

    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [重力]

    [烧灼]变为[炽灼]: 伤害提高到D10戏法, 持续伤害时间延长到4回合
    [凶星]变为[灾星]: 在凶星的基础上, 每环额外造成2点随机属性伤害
    [吉星]变为[福星]: 治疗量从 d6 增长到 d10

    重力: 三环, 18m, 4m, 动作, 魅力豁免, 3d6光耀+2d6力场, 每升环+1d6光耀+1d6力场, 命中目标获得重力灵光, 使其及其盟友获得重力状态(移动速度减半,攻击掷骰和敏捷豁免劣势,对其进行的攻击优势)

#### 6 级
    [暂留]

    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [天星冲日] [命运之轮]

    天星冲日: 职业动作, 短休充能, 9m, 附赠动作, 令自身及附近盟友拥有的来自你的占星术状态的剩余持续时间延长1回合, 并使附近敌人震慑1回合
    命运之轮: 职业动作, 短休充能, 附赠动作, 专注, 以自身为中心产生一道命运之轮
        白昼学派: 自身及18m内的盟友立即获得 命运之轮：昼, 持续3回合
            自身获得 命运之轮：夜 灵光, 灵光生效期间, 自身及 9m 内的盟友获得 命运之轮：夜
        黑夜学派: 自身及18m内的盟友立即获得 命运之轮：夜, 持续3回合
            自身获得 命运之轮：昼 灵光, 灵光生效期间, 自身及 9m 内的盟友获得 命运之轮：昼
        施法和移动会打断对灵光的专注
        命运之轮：昼: 每回合恢复1d4生命值
        命运之轮：夜: 受到的所有伤害减少1d4

#### 7 级
    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [阳星相位] [沉稳咏唱] [营救]

    阳星相位: 四环, 9m, 动作, 2d4+施法调整值 生命值, 每升环+1d4
        白昼学派额外效果: 3回合内, 每回合额外恢复 2d4 生命值, 每升环+1d4
        黑夜学派额外效果: 赋予 10 层黑夜守御, 每升环+6层
    沉稳咏唱: 职业动作, 长休充能, 1回合内, 你不会被蛮力移动, 专注豁免获得优势,
        可以在即将受到伤害或击退/吸引时作为反应动作使用
    营救: 职业动作, 长休充能, 18m, 将一名目标吸引到自己身边

    先天禀赋精通: 先天禀赋每次短休可使用两次，并且可以在生命值较低的盟友即将受到伤害时作为反应动作使用

#### 8 级
    选择一个专长

    奥秘卡充能:4->5
    [神圣路]

    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [占卜] [地星]

    占卜: 职业动作, 长休充能, 9m, 附赠动作, 3回合内, 附近的盟友造成伤害时, 额外造成一次 1d4 光耀伤害（A类）
    地星: 职业动作, 短休充能, 18m, 9m, 附赠动作, 放置地星, 可随时引爆, 1回合后效果增加, 再过1回合后自动爆炸
        地星效果: ((等级+1)/2)d8 伤害, ((等级+1)/2)d8 治疗
        巨星效果: ((等级+1)/2)d12 伤害, ((等级+1)/2)d12 治疗

#### 9 级
    从占星术士法术表中选择1个法术,并可以替换1个法术

    [灾星]变为[祸星]: 在灾星的基础上, 每环额外造成1d4点随机属性伤害

#### 10 级
    [袖内抽卡]

    从占星术士戏法表中选择1个戏法
    从占星术士法术表中选择1个法术,并可以替换1个法术

    先天禀赋精通II: 可以使用反应动作, 在盟友(不包括自身)因受到伤害倒地时, 对其使用先天禀赋

#### 11 级
    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [中间学派]

    中间学派: 职业动作, 长休充能, 附赠动作, 3回合内, 可以同时触发白昼学派和黑夜学派的效果

#### 12 级
    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [星河满天]

    星河满天: 职业动作, 长休充能, 附赠动作, 附近敌人在3回合内造成的伤害降低, 攻击掷骰获得减值, 附近盟友在3回合内伤害提升, 攻击掷骰获得加值

#### 13 级
    奥秘卡充能:5->6

    从占星术士法术表中选择1个法术,并可以替换1个法术

    [炽灼]变为[焚灼]: 伤害提高到D12戏法, 持续伤害时间延长到 5 回合
    [祸星]变为[煞星]: 在祸星的基础上, 每环额外造成1d6点随机属性伤害

#### 14 级
    从占星术士法术表中选择1个法术,并可以替换1个法术
    获得 [天星交错]

    天星交错: 被动, 天星冲日追加效果
        白昼学派: 受影响的盟友每回合恢复 1d4 生命值, 持续 3 回合
        黑夜学派: 受影响的盟友获得 4 层黑夜守御

#### 15 级
    从占星术士法术表中选择1个法术,并可以替换1个法术
    获得 [天宫图]

    天宫图: 被动, 先攻+1, 当你进行先攻掷骰时，补充奥秘卡槽和暂留卡槽

#### 16 级
    从占星术士法术表中选择1个法术,并可以替换1个法术

    使用[占卜]后, 可以使用一次[神谕]

    神谕: 对 18m 内的敌人造成 20d8 光耀伤害

#### 17 级
    奥秘卡充能:6->7

    从占星术士法术表中选择1个法术,并可以替换1个法术
    学会 [大宇宙]

    [煞星]变为[落陷凶星]: 在煞星的基础上, 每环额外造成1d8点随机属性伤害
    [重力]变为[中重力]: 相较于重力，光耀伤害降低1d6，但是对每个命中的目标再释放一次次级重力
        次级重力: 相较于重力，范围缩小到3m，伤害为三环1d6力场，每升环+1d6
    [阳星相位]变为[阳星合相]: 效果提高一环

    大宇宙: 职业动作, 长休充能, 附赠动作, 为自身和18m内的盟友附加大宇宙状态
        大宇宙: 持续时间内积蓄所受的伤害次数。效果结束后, 恢复 ((等级+1)/2)d4 * 所受伤害次数的一半

#### 18 级
    从占星术士法术表中选择1个法术,并可以替换1个法术

#### 19 级
    从占星术士法术表中选择1个法术,并可以替换1个法术

    使用[中间学派]后, 可以使用一次[太阳星座]

    太阳星座: 令自身和18m内的盟友获得对所有伤害的抗性, 持续2回合

#### 20 级
    从占星术士法术表中选择1个法术,并可以替换1个法术
    获得 [星天开门]

    星天开门: 被动, 星河满天追加效果, 范围扩大, 同时可以复活并治疗范围内的盟友



## 开发

- 模组管理器 [BG3MM](https://github.com/LaughingLeader/BG3ModManager)
- 多功能工具 [Multitool](https://github.com/ShinyHobo/BG3-Modders-Multitool)
- 打包工具 [lslib](https://github.com/Norbyte/lslib)
- 调试工具 [数据查询修改工具](https://pan.baidu.com/s/1f3Nq2ao6QGKi4ub-BQjAHQ?pwd=6q2y)
- [BG3 Search Engine](https://bg3.norbyte.dev/search)
- [BG3 Stats Validator](https://bg3.norbyte.dev/stats-validator)
- [BG3 LSX Validator](https://bg3.norbyte.dev/lsx-validator)
- [龙山以雪的分析文档](https://jcn7dphgr6k2.feishu.cn/wiki/LeUOwPv9aizs1BkQwN1cIrymn3c)
