# Navarra 汉化说明

| 项目 | 内容 |
|---|---|
| 模组名 | Navarra for BG2（纳瓦拉） |
| 作者 | Kitanna（kitannadk@yahoo.com） |
| 适用游戏 | Baldur's Gate II（SoA / ToB），支持 EET |
| 模组语言 | 英文（源码内嵌文本，无 tra 层） |
| 汉化对象 | 玩家可见文本（对话、对白、物品名与描述、安装菜单、脚本浮动字幕） |
| 汉化编码 | **UTF-8 无 BOM**（保持原文件 CRLF 换行） |
| 原文件备份 | 同目录同名 `.bak`，共 16 个 |
| 模组目录 | `D:\DNDMOD\navarra` |

---

## 一、汉化范围与边界

### 1. 已汉化

| 类型 | 文件 | 内容 |
|---|---|---|
| 对话文件 | `dialogues\kknavj.d` | 主线对话 1566 条（最大文件，186 KB） |
| 对话文件 | `dialogues\kknavrom_ed.d` | 埃德温恋爱线 135 条 |
| 对话文件 | `dialogues\kknavb.d` | 多人 banter 97 条 |
| 对话文件 | `dialogues\kknav25j.d` | ToB 开场 97 条（tp2 未编译） |
| 对话文件 | `dialogues\kkbarbtalk.d` | 蛮族姐妹线 73 条 |
| 对话文件 | `dialogues\kknav.d` | 招募对话 56 条 |
| 对话文件 | `dialogues\kkvmpnav.d` | 波迪/吸血鬼线 35 条 |
| 对话文件 | `dialogues\kknav25.d` | 22 条（tp2 未编译） |
| 对话文件 | `dialogues\kknav25b.d` | 21 条（tp2 未编译） |
| 对话文件 | `dialogues\kkshael.d` | 莎伊拉 13 条 |
| 对话文件 | `dialogues\kkbarbs.d` | 12 条 |
| 对话文件 | `dialogues\kktobedwinrom.d` | ToB 埃德温恋爱 13 条（tp2 未编译） |
| 对话文件 | `dialogues\kknfinal.d` | 0 字节空文件，无需处理 |
| TP2 | `setup-navarra.tp2` | 组件名、6 位 NPC/物品名、34 条 NPC `SAY`（含 BIO）、安装计时器菜单 12 段、2 件物品名称与描述 |
| 脚本 | `scripts\kknavar.baf` | `DisplayString`/`DisplayStringWait` 台词 2 条 |
| 脚本 | `scripts\kknar2401.baf` | `DisplayStringHead` 台词 1 条 |

合计：**2140 条对话文本 + 53 段 tp2 文本 + 3 条脚本字幕**。

### 2. 未汉化（有意保留）

- `backup\0\`：这是该模组在**别人机器上安装后留下的 WeiDU 备份目录**，不是模组本体，改动会破坏卸载逻辑，全部原样保留。
- `readme-navarra.html`：说明文档，按惯例不译。
- `audio\*.ogg`：3 个语音文件，无法汉化。
- `cre\`、`items\`、`portraits*\`、`song\`、`style\`：二进制资源，其中的名称/描述已由 tp2 的 `SAY` 覆盖为中文，文件本身无需改动。
- `lib\kknids.tph`、`lib\kkntimes.tph`、`lib\tob2soa.tph`：仅含 IDS 补丁与时间常量（如 `ONE_HOUR`），无玩家可见文本，未改。
- 其余 28 个 `.baf` 脚本：已逐个扫描，无内嵌可见文本。

---

## 二、编码说明

- 该模组 tp2 **没有 `LANGUAGE`、没有 `AUTO_TRA`、没有 `HANDLE_CHARSETS`/iconv 段**，属于"源码内嵌式"模组，只能直接改 `.d` / `.tp2` / `.baf` 源文件，不存在 tra 层或多语言目录路线。
- 写入编码统一为 **UTF-8 无 BOM**，换行保持原来的 **CRLF**（与原文件逐字节一致的部分未改动）。
- 依据：本机 EET 版 `lang\zh_CN\dialog.tlk` 需要 UTF-8 中文；同时本会话此前交付的同类源码内嵌模组（Calin、Sirene_BG2、Kvel、Pai-Na、Ophysia 等）实测均为 UTF-8 且显示正常。
- 每个被改动的文件都在同目录留有 `.bak` 原件（cp1252 原始字节），需要回退时直接改回文件名即可。

---

## 三、tp2 说明

`setup-navarra.tp2` 共 329 行，本次只替换引号内文本，**所有 WeiDU 语法、路径、IDS 补丁、2da 追加、COPY/COMPILE 列表、偏移地址一字未动**：

- 组件名：`BEGIN ~Navarra for BG2~` → `BEGIN ~纳瓦拉 NPC 模组（BG2）~`
- `SAY NAME1/NAME2`：Navarra 纳瓦拉、Amana 阿玛娜、Tressa 特蕾莎、Shaelah 莎伊拉、Deliah 德莉娅、Celinda 塞琳达
- 34 条 NPC `SAY`：MORALE、HAPPY、UNHAPPY_*、LEADER、TIRED、BORED、BATTLE_CRY1-4、DAMAGE、DYING、HURT、AREA_*、SELECT_COMMON1-6、SELECT_ACTION1-7、SELECT_RARE1-2、CRITICAL_HIT/MISS、TARGET_IMMUNE、INVENTORY_FULL、BIO（长自述全部译出）
- 安装计时器菜单：保留 `[1]`–`[6]` 编号与数字输入结构，只译描述文字；六档对应的秒数（3600/2700/1800/900/5400/7200）未动
- 物品：`Navarra's Body` → 纳瓦拉之躯；`Blade of Tempus` → 坦帕斯之刃；`UNIDENTIFIED_DESC` 与 `DESC`（含 `Usable by: Navarra` → `可使用者：纳瓦拉`）均已译

数值、`.2da` 行、`WRITE_ASCII` 偏移、脚本文件名全部保持原样，安装行为与英文原版完全一致。

---

## 四、安装

1. 将 `navarra` 文件夹放入游戏根目录（与 `setup-navarra.tp2` 同级）。
2. 运行 `setup-navarra.exe`（WeiDU），选择组件 `纳瓦拉 NPC 模组（BG2）`。
3. 安装过程会要求输入 `1`–`6` 选择对话计时器速度，中文菜单已翻译，输入数字不变。
4. EET 环境请安装在 **EET_End 之前**；跨模组对话（Edwin、Bodhi 线等）建议在相关 NPC 模组之后安装。

---

## 五、校验结果

对 13 个 `.d` 文件逐个做了自动校验（脚本 `nav_verify.py`）：

| 校验项 | 结果 |
|---|---|
| 文本段数量 | 2140 / 2140，与提取清单逐文件一致（0 偏差） |
| 每条文本与译文对应 | 2140 条全部匹配（含 3 条 `UNSOLVED_JOURNAL` 多行文本） |
| 非文本骨架（语法/条件/动作/标签） | 逐文件逐字节一致 |
| `~` 配对数量 | 每个文件改前改后相同 |
| 占位符集合 | `<CHARNAME>`、`<DAYNIGHT>`、`<HE/SHE>`、`<he/she>` 全部保留，无增无减 |
| 编码 | UTF-8 严格解码通过，无 BOM |
| 换行 | CRLF 数量逐文件一致 |

tp2 与 2 个 `.baf` 同样校验：由 `~` 切分后的段落数与全部非文本段完全一致，换行数一致，UTF-8 严格解码通过。

---

## 六、译名表

| 英文 | 中文 |
|---|---|
| Navarra | 纳瓦拉 |
| Osarena（Chieftain） | 奥萨雷娜（族长） |
| Amana | 阿玛娜 |
| Tressa | 特蕾莎 |
| Shaelah | 莎伊拉 |
| Deliah | 德莉娅 |
| Celinda | 塞琳达 |
| Narfell | 纳尔费尔 |
| Nar | 纳人 |
| Tempus / Blade of Tempus | 坦帕斯 / 坦帕斯之刃 |
| Cyric | 塞瑞克 |
| Thay / Thayvian | 塞伊 / 塞伊人 |
| Bodhi | 波迪 |
| Irenicus | 艾瑞尼卡斯 |
| Imoen | 爱蒙 |
| Cowled Wizards | 斗篷法师 |
| Shadow Thieves | 影贼 |
| Copper Coronet | 铜冠酒馆 |
| Den of Seven Vales | 七谷客栈 |
| Waukeen's Promenade | 沃金长廊（简称「长廊」） |
| Small Teeth Pass | 小齿隘口 |
| Candlekeep | 烛堡 |
| Gorion | 葛立安 |
| Sarevok | 萨瑞沃克 |
| Alaundo | 阿兰多 |
| Anomen | 阿诺门 |
| Viconia | 维康妮亚 |
| Edwin / Edwina / Eddie | 埃德温 / 埃德温娜 / 「埃迪」 |
| Oghma（Binder of What is Known） | 欧格玛（「已知之物的编纂者」） |
| Amaunator / Lanthorn | 阿曼纳托 / 灯笼 |
| Bhaal / Bhaalspawn / God of Murder | 巴尔 / 巴尔之子 / 谋杀之神 |
| Lust chambers | 欢愉室 |
| tenday | 十日 |
| waymeet | 路会 |
| my fair hummingbird | 我美丽的蜂鸟 |
| my dear wren | 我亲爱的小鹪鹩 |

文风处理：女性视角对白保持原文的强硬与轻蔑语气；男性主角线保持原文的调侃与克制；舞台指示统一为「（……）」，原文括号内的人称错误（如对纳瓦拉用 him）照原文译，不擅自"修正"。

---

## 七、备注

1. `dialogues\kknfinal.d` 原文件为 0 字节，属作者遗留空文件，tp2 亦未编译，保持原样。
2. `kknav25.d`、`kknav25j.d`、`kknav25b.d`、`kktobedwinrom.d`、`kknfinal.d` 这 5 个 `.d` **未被 tp2 编译**（作者未纳入 COMPILE 列表，可能是旧版本残留），本次仍一并汉化，不影响安装；若日后启用可直接使用。
3. 备份清单（16 个 `.bak`）：13 个 `dialogues\*.d.bak`、`scripts\kknavar.baf.bak`、`scripts\kknar2401.baf.bak`、`setup-navarra.tp2.bak`。
4. 若需要改为 ANSI(GBK) 版本，把 `.d`、`.tp2`、2 个 `.baf` 整体重编码即可，文本内容无需再改。
