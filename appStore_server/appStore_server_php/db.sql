CREATE TABLE `appstore_category` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `appstore_category` (`id`, `name`)
VALUES
	('1','影音娱乐'),
	('2','社交通讯'),
	('3','实用工具'),
	('4','教育'),
	('5','新闻阅读'),
	('6','拍摄美化'),
	('7','美食'),
	('8','出行导航'),
	('9','旅游住宿');

CREATE TABLE `appstore_app` (
  `id` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `logo_url` varchar(200) ,
  `screenshot_urls` varchar(1000),
  `description` varchar(1000),
  `apk_url` varchar(500),
  `file_size` VARCHAR(50),
  `download_count` VARCHAR(50),
  PRIMARY KEY (`id`)
);

INSERT INTO `appstore_app` (id,name,logo_url,screenshot_urls,description,apk_url,file_size,download_count) VALUES
	 ('1','快手极速版','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4307011609/16fc6117398cf8b3569a1f924fcfaf96.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4307011609/5e8643d95df9fb1eb5aaf2c114bca877.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4307011609/7ccdea7736b417924f80aac490cb3f90.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4307011609/acf5efdc717396bcfb170c0f9fd2e02e.png','【更快】\n小安装包，极速下载。浏览更省流量，运行丝滑流畅。\n【更赞】\n覆盖全网千万精彩原创小视频，分享真实有趣的生活。\n【更好看】\n海量视频精挑细选，智能算法推荐。看更流行的，玩更热门的，只看你想看的视频。\n主播就在眼前，第一时间与你热力互动。直播间PK新玩法频出，即时对战刺激好看，谁赢由你说了算！\n联系快手极速版：\n官方交流QQ群：827910592\n官方客服电话：01053911309 （10:00-19:00）','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/371818DD2AE80D102B14171425DE86EE.apk?fsname=com.kuaishou.nebula_10.9.30.4600_4600.apk&csr=03a5','52.6M','5.27亿次下载'),
	 ('2','腾讯视频','https://gdown.baidu.com/appcenter/source/979715264/cb20b08a5286742f4602d6040716f118/r/m-x/c.png','http://gdown.baidu.com/img/0/480_800/8440d61d43174a60c1bc8f9a5aa1341b.jpg,http://gdown.baidu.com/img/0/480_800/58461a048e179b63f3321c6b7c512ac2.jpg,http://gdown.baidu.com/img/0/480_800/85e7ec867d3d0ed45fc40997c6ea7cd9.jpg','【精彩内容，现在就要】\n《夏花》撩拨教科书！纯欲小白花撩动初代花美男言承旭\n《重紫》小乞丐逆袭，杨超越徐正溪甜虐仙侠恋\n《我们的客栈》任贤齐张柏芝重演星愿全员泪崩~唐嫣被问送命题，胡歌和罗晋她会如何抉择？\n《极限挑战宝藏行 第3季》岳云鹏和老虎对视练胆，杨超越连人带行李被扔下车？宝藏团欢乐超标。\n《今晚开放麦》杨超越张大大现场互掐，岳云鹏神还原：燕子，没有你我怎么活！\n《最强大脑10》新秀向往届脑王发起硬核挑战，庞博郭麒麟王昱珩见证巅峰对决。\n《狙击之王：暗杀》全员狠人！疯批美人扛大狙\n《抬头见喜》王鹤棣组金牌阵容笑闹新春\n《绝望主夫》常远直男变贤夫爆梗不断\n《暴走财神4》德云社&开心麻花联动迎财神《西行纪之暗影魔城》三藏黑化？西行师徒热血燃斗\n《斗罗大陆》持续更新，此生不悔入唐门！\n《地球上的一年》：无限壮观！记录动物四季生存故事，感受令人敬畏自然之力\n《风味团圆饭》：相逢即美味！庞博罗拉热闹出发，用美食开启新年好运\n《动物神探队》：一起跟特工们破解动物世界里的各种谜题吧！','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/BA34ADF01119D648E19D7670A8080242.apk?fsname=com.tencent.qqlive_8.7.71.27028_27028.apk&csr=03a5','122M','3.65亿次下载'),
	 ('3','抖音','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/794245181/d8f820d5d64fadfea9ddd3498ce634c1.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/794245181/de56d5ace99ed3939b37eaabf9c3562c.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/794245181/f8a3d5e3de4f77080942e73e61c5f30e.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/794245181/afc421bbce1e439f827f8165077e24e1.png','● 记录美好在抖音\n智能匹配音乐、一键卡点视频，还有超多原创特殊效果、滤镜、场景切换帮你一秒变大片，让你的生活轻松记录在抖音！\n● 实用内容在抖音\n生活妙招、美食做法、旅行攻略、科技知识、新闻时事、同城资讯，你需要的实用内容都在抖音！\n● 各行各业在抖音\n原创音乐人、京剧演员、中国科学院教授、非遗传承人、烧烤摊老板、快递小哥等，每个人真实的生活都在抖音！\n全民记录自我，生活的美好都在这里！','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/510BD2A9923ECA9661977C881A22CA7E.apk?fsname=com.ss.android.ugc.aweme_23.7.0_230701.apk&csr=03a5','187M','10.59亿次下载'),
	 ('4','全民K歌','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/2218384612/4e3add0097105147251c77b7309dfd0b.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/2218384612/dbc73ecf6cffaa55595a49f113cdfc77.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/2218384612/7240296d368f4cab5d926e676d645b85.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/2218384612/2dde1137123d1c18a51ec823d78bc68a.jpg','【腾讯官方唱歌交友平台，8亿人的首选】\n- 随时随地轻松创作，让你的舞台，被全世界看见\n- 海量高品质伴奏曲库，新歌热歌一网打尽，你想唱的这里都有\n- 合唱：与天南地北的朋友唱同一首歌，更能与明星同框出演\n- 直播：好看、好听、好玩的人都在这，还能自己当主播跨房间PK\n- 快唱、朗诵、清唱…… 总有你喜爱的表演方式\n\n【歌房群聊：畅聊斗歌，在线交友】\n- 歌房：欢唱交友玩游戏，实时互动趣味多\n- 群聊：作品交流互相赞，轻松遇见新歌友\n- 抢麦：抢唱歌曲拼手速，看看谁是小曲库\n- 家族：以歌会友是缘分，天下歌友一家亲\n- 声动合唱：双人匹配实时合唱，互相亮灯无限唱聊','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/AADA09F6E27BD814FBF398CDE8AD2797.apk?fsname=com.tencent.karaoke_8.6.38.278_3830.apk&csr=03a5','122M','1.53亿次下载'),
	 ('5','喜马拉雅','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4135850336/f604fa43d428955a3f5caf0cdfcabadf.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4135850336/df0e9746c2051060915a9d428e198d06.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4135850336/17409c504e6f8bfcb58d5eaebc4bf1a9.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4135850336/4291195f57a9f9788df01a29216e8971.jpg','听书、听课、听段子，6亿用户的选择！\n郭德纲、马东、吴晓波，尽在耳边！\n通勤、堵车、失眠，好无聊？快来听点有料的！\n \n排队、等人、做家务，碎片时间变黄金；\n晨跑很单调？资讯、知识随你动；\n开车怒烦躁？段子帮你减压少烦恼；\n睡前慢时光？自然声、音乐伴你好入眠；','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/76D116882E41AA50B4F08AA82ED0AE56.apk?fsname=com.ximalaya.ting.android_9.0.96.3_565.apk&csr=03a5','110M','8063万次下载'),
	 ('6','抖音极速版','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/794245181/00dc9b01a51d7cf2dcf0284afe547ce9.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/794245181/afa84210f8780f6562c1659d57b8b3cd.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/794245181/74360af8abd90db6344526a0095313f3.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/794245181/bd6d7d157b7644f60e36bc4fbf41afce.png','抖音是记录美好生活，帮助用户表达自我的原创短视频分享平台。\n【金币红包】看视频、拍视频、邀好友，均可获得专属金币红包，玩法丰富有趣，助你轻松赚钱！\n【内容精彩】看视频、聊科技、精彩内容应有尽有，智能推荐专属内容，还能及时查阅达人与好友的近期动态。\n【沉浸体验】全屏沉浸式超清画质，带给你全新视觉体验！','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/7021417ACA300B9CC6AF02DDC50FEDF1.apk?fsname=com.ss.android.ugc.aweme.lite_24.0.0_240001.apk&csr=03a5','97M','6.03亿次下载'),
	 ('7','爱奇艺','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/652787693/9ab896025112029d3b2388b2d18c6319.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/652787693/1b122868d485ce5d843d98b7f34da668.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/652787693/f189072978c9b49b5d8f3d2aa7d20fad.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/652787693/63921057de51322ac59a7aacabcdf761.jpg','【独播热播 给你想要】\n全新剧集实时看：狂飙、耀眼的你啊、我们的日子、浮图缘、向风而行、卿卿日常、对我而言危险的他、月歌行、纵有疾风起、风吹半夏、苍兰诀、人世间、罚罪、保护我方城主大人\n热播电影新上线：东北恋哥2对你爱不完、天龙八部之乔峰传、狙击之王：暗杀、抬头见喜、阿凡达、万里归途、纸人回魂、万里归途、追龙番外篇之龙争虎斗、绝望主夫、流浪地球\n热门综艺看不停：种地吧、开工了！新生活、一年一度喜剧大赛第2季、最强大脑第10季、我们民谣2022、王牌对王牌第7季、我们的客栈、萌探探探案第2季、中国说唱巅峰对决\n动漫新番随心换：航海王、苍兰诀、神澜奇域无双珠、神武天尊、少年歌行、万界至尊、万古神话、间谍过家家、我是大仙尊 动态漫画、斗罗大陆4终极斗罗、博人传 火影忍者新时代\n海外新剧新推荐：大力女子都奉顺、邪恶与疯狂、金秘书为何那样、经常请吃饭的漂亮姐姐、老友记、荒原、小谢尔顿、后裔、黑名单、非常创业、爱情迷踪、爱妻普通话版','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/4322545799E7FD17622C6B77CAB8B9EE.apk?fsname=com.qiyi.video_14.1.0_800140150.apk&csr=03a5','99M','5.29亿次下载'),
	 ('8','哔哩哔哩','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/816214945/23333a85ee8cb7405820e42150acb1b7.png','http://gdown.baidu.com/img/0/480_800/5dedf07a5bc4f69f1bc22500f88c0dd0.jpg,http://gdown.baidu.com/img/0/480_800/cb2410c8fa53f055b0ca90d9c646790b.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/816214945/d8036f3b3110817ee882d6350651b0a9.jpg','【番剧动画】\n开局封神的霸服盾娘强势回归！《因为太怕痛就全点防御力了 第二季》独家播出！\n一本正经胡说八道，《虚构推理 第二季》爆笑上演！\n最想要守护的初恋就在这里~《擅长捉弄的高木同学 剧场版》甜蜜再袭！\n人与物的牵绊，热血与纯爱的二重奏！《物之古物奇谭》独家播出！\n还有海量精彩番剧内容等着你，快来与小伙伴们一同观看吧！','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/B06744212EA744A31DC2F1BD8F6FEF78.apk?fsname=tv.danmaku.bili_7.14.1_7141100.apk&csr=03a5','100M','4亿次下载'),
	 ('9','西瓜视频','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/626411072/7602d1eddc95a2e750df9206fb0fe5ad.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/626411072/554f68f7b084cea9bd91c622cc683259.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/626411072/af2af1925e44f442505d775ba391f3f3.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/626411072/5ebdf0bf9e34f89451eeb25547ecd598.jpg','西瓜视频\n每月超过 320 万创作人、1.8 亿用户活跃在西瓜视频，和他们一起，开眼界、涨知识！\n\n【视频博物馆 想看的全都有】\n想看的内容找不到怎么办？西瓜海量视频包你满意！旅行日记、时尚穿搭、社会人文等超多品类，快来pick你的专属内容吧~\n\n【来点儿有用的 轻松涨知识】\n生活中遇到问题怎么办？别光想不做，来点儿有用的！上西瓜，承包你的休闲时间，轻松涨知识！','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/A79CD965C604D1D7CB3B27491A4FC2C6.apk?fsname=com.ss.android.article.video_7.2.8_728.apk&csr=03a5','55M','1.28亿次下载'),
	 ('10','斗鱼','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/1237033776/e7a3b85b83c71fc9be19369ad1d02e0c.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/1237033776/6a88bed48392fdc53f81b86b85dc4ea8.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/1237033776/555d4087f889532f2d862a30ac57ea94.jpg,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/1237033776/51b61c76a1721945c3e8fb81034b2ee4.jpg','【近期热点】\n英雄联盟：LPL春季赛年后火热开赛，Doinb、管泽元、米勒、微笑领衔明星主播坐镇二台，观赛极速、体验极简、二路极嗨，288016等你来看！\n王者荣耀：KPL春季赛2月10日正式开赛！Gemini、拖米、拽哥等明星解说坐镇二路，主播来电、我的主队、梦幻组合等玩法推陈出新，更多精彩锁定998直播间！\n【热门游戏 精彩看不完】\n明星跨界：叮，成果直播时间到！2月6日晚19点，再次与大家在老地方（直播间50523）相见，熟悉的地方，熟悉的味道，期待狗哥2023年斗鱼首播！\n和平精英：和平精英PEL春季赛2月9日正式开启！锁定官方直播间999，豪华观赛团齐聚，大礼送不停！\n王者荣耀：前上海RNGM职业选手虔诚入驻斗鱼，2021年度最佳射手钎城加入深圳DYG不定期开播，明星选手看不停！\n崩坏:星穹铁道：崩坏:星穹铁道内测2月23日即将来袭！超能开拓者试玩团重磅出击！还有超多福利活动等你来！','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/7B9F45B278BE4C31A8BB21970E453400.apk?fsname=air.tv.douyu.android_7.4.4_10744002.apk&csr=03a5','112M','4114万次下载'),
	 ('11','微信','https://app-center.cdn.bcebos.com/appcenter/file/upload/a7c39683dd48fe24bc9df0c4ba12d260e5e9df79-72d0-4bed-9f72-fcfff23226d7.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/5298240855/0178e373991de9ef66684764f1553db7.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/5298240855/e3c74f7342b89d966778e26cf46b1ca3.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/5298240855/5b34e06044c163757b28a7bd04229684.png','你可以通过音视频通话、群聊、朋友圈来和朋友们分享生活，可以通过公众号、视频号获得文章、视频内容，以及通过小程序方便地使用生活服务，还可以开启「关怀模式」，文字与按钮更大更清晰。','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/F77005999626919750D9F6A0D00C7BD0.apk?fsname=com.tencent.mm_8.0.32_2300.apk&csr=03a5','238M','31亿次下载'),
	 ('12','MOMO陌陌','http://gdown.baidu.com/img/0/512_512/1edf0a8aec3100d2668073df78ceaea2.png','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/446720267/2763f7676bce3c7f86bbedf59290ae65.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/446720267/f89772c41ee3a9fc19a10e80fd383780.png,https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/446720267/a79d5b0ca150605733bfa77a3f71ab77.png','【应用介绍】\nMOMO陌陌是一款开放式的移动社交应用，提供给用户全方位、沉浸式、场景化的社交体验。\n在这里，你可以随时随地的认识身边有趣的人，发现身边美好的生活，并通过丰富的动态资料和视频化的表现形式，更深入的了解他们。在这里，我们鼓励你和人成为好朋友，一起探索和创造身边的美好生活。\nMOMO陌陌，一切从开始\n\n \n【主要功能】\n-附近：看看附近，发现身边朋友。真人化，聊天更真实。\n-MOMO短：分享自己的生活瞬间，用，认识我。\n-附近的人/动态：浏览附近动态，发现身边有趣的人。','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/E6D5EA25931685E3C2E1A1457370EF99.apk?fsname=com.immomo.momo_9.6.7_9776.apk&csr=03a5','190M','1.06亿次下载'),
	 ('13','YY','https://app-center.cdn.bcebos.com/appcenter/sts/pcfile/4415324177/702403c06b129a559d083206f5c191f8.png','http://gdown.baidu.com/img/0/480_800/28d0cc9c440b4629075af95635875ea4.png,http://gdown.baidu.com/img/0/480_800/e6aa16cff2a02828ffc79727eb1f695b.png,http://gdown.baidu.com/img/0/480_800/b77b98505c755127f6b103f67cfd2572.png','YY直播全新体验：同城直播+真实短视频+附近交友的社交平台。团战乱斗、觅友聊天、颜值佳人、相亲约会、亮点小视频，您想要的这儿都有！\n海量主播、用户和你实时互动，与明星偶像从未如此靠近！足不出户，发现身边有趣的人，和附近的人在YY不期而遇！YY让您不孤单\n\n--------------------------------------\n\n【音乐现场】\n大咖艺人直播秀、明星在线零距离，YY现场直播带你领略万人现场的澎湃，感受偶像魅力！\n\n【缘分速配】\n一键发现同城附近真实帅哥美女主播，即刻畅聊，轻松查看附近的人动态、直播，新增喜好标签，遇见兴趣相投的那一位。','http://imtt.dd.qq.com/sjy.20003/sjy.00004/70F9FEB84B66FE6D/16891/apk/5BA92FA91711EF399D05A271B509BC48.apk?fsname=com.duowan.mobile_8.19.2_133453.apk&csr=03a5','58M','9253万次下载');


CREATE TABLE `appstore_app_category` (
  `id` varchar(50) NOT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `app_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


INSERT INTO `appstore_app_category` (`id`, `category_id`, `app_id`) VALUES
	('1', '1', '1'),
	('2', '1', '2'),
	('3', '1', '3'),
	('4', '1', '4'),
	('5', '1', '5'),
	('6', '1', '6'),
	('7', '1', '7'),
	('8', '1', '8'),
	('9', '1', '9'),
	('10', '1', '10'),
	('11', '2', '11'),
	('12', '2', '12'),
	('13', '2', '13');