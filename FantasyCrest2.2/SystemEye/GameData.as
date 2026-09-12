package SystemEye
{
   import SystemComponent.SystemLoading;
   import flash.ui.Keyboard;
   import game2016.GameWinMessage;
   
   public class GameData
   {
      
      public static var select_xml:XML;
      
      public static var ns_end:Object;
      
      public static var _select_array:Array;
      
      public static var _lock_array:Object;
      
      public static var $danmu:Boolean = true;
      
      public static var tipsArray:Array = ["我被折断过翅膀,但我也把翅膀接了回去——左眼","让你们的名字为世人传颂,让你们的事绩广传千里 ——小邪","黑暗之后,总有光明 ——小邪","雄者谈论观念,愚者谈论事件——自黑","矛盾构造人格,没有冲突没有生命——自黑","活着本就不是为了某种意义,仅仅是为了活着罢了——自黑","我们只不过是被时间之流这个野兽偶然看见的一个微不足道的景物——自黑","即使在最黑暗的时代,只要点亮烛火,光明就会再现——自黑","幻纹,一个让我们相聚的游戏。幻纹,一个带给我们欢乐的游戏。幻纹 ( ゜- ゜)つロ乾杯——雪狼","一个人的心需要另一个人来点亮——蔚蓝","世界的模样,取决于你凝视它的目光——自黑","如果寿命打从一开始就是个定数,我一定会尽全力的过好每一分每一秒——芸殿","死并非生的对立面,而是作为生的一部分永存——自黑","重要的不是享受温暖春天的时刻,而是你为此在寒冬中坚守的过程——自黑","屌丝终有逆袭日,木耳再无回粉时——真理","自己想要的东西,不择手段地去取得,和上天赐给自己有何不同？——芸殿","我并非不想被理解,而是因为被理解不是一厢情愿所能做到的——自黑","谦虚是一种美德,但过分贬低自己则是一种傲慢——芸殿","真正的贵族不是财产无数地位崇高的达官显贵,而是具有骑士精神的高尚者——自黑","神都不愿意去做的事情,终究要人类亲自去做——芸殿","奇迹的真正价值体现在它发生的那一刻——芸殿","一味渴望外物的人永远无法满足,唯有探寻自我的存在,才能从中获得精神饱满的状态——自黑","正所谓生命是有限的,才可以活出精彩——M™ ","时光的断痕并没能把往事切割,如歌的行板,那些细节久久的不肯离去——M™ ","智者顺时而谋,愚者逆时而动——M™ ","记忆不会消失,它只是在心之海底潜伏——自黑","寻找意义的一生——zz","所有的繁华都不过是死前的的一刻喧嚣——自黑","不要活在过去的阴影里,把每天当作人生的新一天,生活才会多彩多姿——巅峰","承受着痛苦相信未来, 在向前方 ,更向前方 ——巅峰","去想,去做,无所谓嘲讽与挫折——天上地下全国全宇宙总冠军","不是人生中有梦想,而是梦想造就人生——烧饼剑神","不要根据自己的能力界定自己的欲望,要根据自己的欲望来提升自己的能力——自黑"
      ,"以脚印刻出长路,以恒心斩开迷茫,以梦想创造未来——烧饼剑神","剑断之人,弱者也；心钝之人,怯者也；吾以剑铸心,以心斩敌,王者也——中二烧饼剑神","“聪明人”被世人遗忘,“疯子”被世人赞颂,你想当哪个——贱贱","正因为生来什么都没有,因此我们能拥有一切——蔚蓝","以梦为马,借此得度一生的茫茫黑夜——自黑","难道你要等待穿越、重生的好运来摆脱现有的不幸?没有决绝的心志和过硬的个人能力,去哪里都是死路一条 ——小邪","人们总是盲目的崇拜强者,依赖强者;但正如鱼离开水就无法存活一样,人离开了可以依靠的对象也无法存活——中二不是病","你的背后不存在支持的手的话,自己撑起自己便好——成哥","微笑地面对即将来临的暴风雨,只为迎接那一抹七色的彩虹——五解","坚强不是面对悲伤有多坚强,而是愿意将笑容挂在自己的脸上——五解","失败算什么,只是我脚下又一颗渺小的沙石罢了——五解","困惑于黑暗的可悲之影,诋毁伤害他人,沉溺于罪恶的灵魂——旧梦","对于自己的人生,你我都不是读者,而是作者——坂田银时","不要认为你的幸福是“得来的”,你要有自信,相信自己是幸福的——佚名","光,比如像蝴蝶一样,闪着光芒羽毛,心是一阵强风也自由——自黑","我们最大的恐惧不是没有能力,而是我们拥有着无与伦比的力量——自黑","真正应该在意的不是过去,而是永恒的现在——自黑","即使被关在果壳之中,也当认为自己是无限空间之王——自黑","把追寻的幻光当作幻光,终将坠入无尽深渊——自黑","无须在意他人的目光,只要坚定走在没有铺满鲜花的荣誉之路上就够了——自黑","永远在出走的人感受不到悲哀——自黑","生命的价值,在对两难问题做出抉择的时候被决定——自黑","世界是个运转的齿轮,即使天寒地冻,路遥马亡,也不会停止——自黑","人生,就是不可抗拒的前进 ——小邪","路堵了,心可别堵 ——小邪","家势再大,该走的路一步不差 ——小邪","都说笨鸟先飞,却不知枪打出头鸟么 ——小邪","欺软怕硬,是因为自己不够硬 ——小邪","迷路的时候,想想心在哪 ——小邪","跑得快,不如跑得稳 ——小邪","莫因喜怒,断人善恶 ——小邪","不成为狼,只能被狼吃掉 ——小邪","羊群只能被奴役,而狼却可以奴役猎物——小邪","不论你在什么时候开始,重要的是开始之后就不要停止——巅峰","不论你在什么时候结束,重要的是结束之后就不要悔恨——巅峰"
      ,"人的价值,在遭受诱惑的一瞬间被决定——巅峰","别小看任何人,越不起眼的人,往往会做些让人想不到的事——巅峰","命运如同手中的掌纹,无论多曲折,终掌握在自己手中——巅峰","直觉只是一种选择——天江衣","我走得很慢,但我从不后退——巅峰","千里之行,始于足下","当一个人被活着的人忘记时,这个人才算真正死亡——奈波","其实,人生就是一场游戏,只不过这场游戏你想玩也得玩,不想玩也得玩——洛洛","心存希望,生命不息——小邪","所有的胜利,与征服自己的胜利比起来,都是微不足道——巅峰","读书或是旅行…身或心,总有一个要在路上——佚名","让你害怕的不是未知的未来,而是不断重复着过去的错误——史蒂文斯","神将火元素才是幻想纹章第一神将——黄瓜","是场我找了茬,你还了手的架——自黑","万人战争和宿敌争斗的本源,都是暴力与残酷——自黑","深藏于阴影之中潜伏十七年,只为一个夏天的繁华璀璨——自黑","纵使一次次的被践踏于他人脚下,我仍不会低下我仰望的目光和追逐巅峰的信念——自黑","月华之下必伴随着群星之芒,萤烛之光——自黑","如果一个默默无闻的小卒能让世界刮目相看,那么我想,我做到了——x金x巫","如果我控制住了世俗的欲望,那是神圣；但即使我未曾做到,我也曾纵情享乐——UNBROKEN的享乐主义","无论多强大,都要知道自己也是一个人,也是一条人命,只有悟得了自己的生命之重,才能悟得奥义———光腚局的痒局长","王者的孤寂,是你们无法懂的————剑心控者","鸟的翅膀在空气里振动。那是一种喧嚣而凛冽的,充满了恐惧的声音。一种不确定的归宿的流动——翔爷","反派的魅力,不在于外在和实力。而是对世界极度失望后,能更好的认清现实的态度与手段——无名","没有了恐惧,紧张感随之消失,生命也因放松而崩解——自黑","以洒脱诠释恬淡。世事无常,岁月无痕,然而,岁月因经历而懂得,生命因懂得而厚重。掬一捧岁月,书一笔清远,盈一眸淡恬。愿时光静好,心永远微笑——抹在满意","努力挥霍你所拥有的一切吧,只要你不后悔,怎么挥霍也不算浪费——飞鱼","人生为棋,我愿为卒,行动虽慢,永不后退——飞鱼"].concat(GameWinMessage.data.split(","));
      
      public static var max_data:Array = [2000,1000,35,10,10,5,5,25];
      
      public static var ns_select:String = "none";
      
      public static var ns_ob:Object = new Object();
      
      public static var $roleArray:Array = ["LianDao","ShuangDao","ZuoZhu","TongRen","PaoJie","NanMoFa","NvGuiJian","GuiJianShi","HuoYuanSu","YiHu","NaZi","Wo","LuFei","LaoDie","JinLong","GeDouJia","GuaiYiLong","DaBai","Ace","NingCi","XiaoDi","JianBa","JianXin","GangJi"];
      
      public static var $hredArray:Array = ["JinMu","WuTianKeSi","HeiYiRen","ALong","WuKong","BeiJiTa","BoRen","SuoNiKe","You","TuFang","NaMei","YinTuoLuo","BaiYiHu","KuBa","ChangMen","ShenLie","Doge","Lock","HuaJi","BuLuKe","New","ALS","Luo","KaKaXi","ZouTian","XiaoWu","DaiTu","EVE","LunHuiYanZuoZhu","SuoLong","XiangJi","LiangNianLuFei","HeJin","WanJieDongShiLang","Ulquiorra","ZhenXiaNa","NiuTou","LvMao","ZhenTongRen","Freak_LaoGeBuLin","CaiHongMie","YingZuo","QuanYeCha","BeiJiTe","LianDao","ShuangDao","ZuoZhu","PaoJie","TongRen","NanMoFa","NvGuiJian","GuiJianShi","HuoYuanSu","YiHu","Ying","HeiMao","NoKown","Saber","SanBen","HongFa","XiaNa","ShuangDaoYiHu","Ban","NaZi","Wo","LuFei","Lang","LaoDie","JinLong","GeDouJia","GuaiYiLong","XianMing","You","DongShiLang","JinFa","HongJuJian","XuanWoMingRen","Mingren","CaoNiMa","DaBai","Ace","NingCi","XiaoDi","JianBa","JianXin","ShuiShu","GeLei","JianShi","WuJiTa","GangJi","XiaoWu","AiNieLu","JinMing","JinQiang","MoHuaJianXin"];
      
      public static var $keyArray1P:Array = new Array(Keyboard.A,Keyboard.D,Keyboard.S,Keyboard.W,Keyboard.J,Keyboard.K,Keyboard.L,Keyboard.U,Keyboard.I,Keyboard.O,Keyboard.P);
      
      public static var $keyArray2P:Array = new Array(Keyboard.LEFT,Keyboard.RIGHT,Keyboard.DOWN,Keyboard.UP,Keyboard.NUMPAD_1,Keyboard.NUMPAD_2,Keyboard.NUMPAD_3,Keyboard.NUMPAD_4,Keyboard.NUMPAD_5,Keyboard.NUMPAD_6,Keyboard.NUMPAD_9);
      
      public static var $fightArray:Array = ["GuaiYiLong","JianBa","NingCi","XiaoDi","LuFei","Ace","GangJi","Wo","LaoDie","DaBai","JinLong","GeDouJia","NanMoFa","NvGuiJian","TongRen","PaoJie","JianXin","CaoNiMa","SanBen","Saber","Mingren","XuanWoMingRen","JinMing"];
      
      public static var $allFightArray:Array = ["YingZuo","TongRen","GuaiYiLong","JianBa","NingCi","XiaoDi","LuFei","Ace","GangJi","Wo","LaoDie","DaBai","ShuangDao","Ying","HeiMao","HongFa","JinLong","GeDouJia","NanMoFa","NvGuiJian","PaoJie","JianXin","CaoNiMa","SanBen","Saber","Mingren","XuanWoMingRen","JinMing"];
      
      public static var $boosFightArray:Array = ["Doge","HuaJi","CaiHongMie","CaoNiMa","Freak_LaoGeBuLin"];
      
      public static var $fightTo:int = 0;
      
      public static var $mapArray:Array = ["map11","map12","map13","map15","map10","map9","map8","map7","map6","map5","map1","map3","map2"];
      
      public static var $mode:String = "1P2P";
      
      public static var $lv:int = 95;
      
      public static var $game_time:int = 99;
      
      public static var $mapTarget:String = "";
      
      public static var $1PALLSelect:Boolean = false;
      
      public static var $boss:String = "none";
      
      public static var $keyBoolean:Object = true;
      
      public static var $fightBoolean:Boolean = false;
      
      public static var $stageBoolean:Boolean = true;
      
      public static var $KaBoolean:Boolean = false;
      
      public static var $KaTime:int = 0;
      
      public static var $roleSelectArray:Array = new Array();
      
      public static var $roleNengLi:Object = new Object();
      
      public static var SZRoleObject:Object = new Object();
      
      public function GameData()
      {
         super();
      }
      
      public static function get $xmlData() : XML
      {
         return <xml>
				<select name="全新角色">
					<role name="金木研" new="" win="0" message="技能设计：虚伪" head="JinMu" hp="1660" mp="600" fang="4" li="20" kt="2" speed="5" zl="1" jump="18"/> 		
					<role name="阿龙" new="" win="0" message="技能设计：沐颉" head="ALong" hp="1700" mp="600" fang="10" li="26" kt="2" speed="5" zl="1" jump="18"/> 		
					<role name="悟空" new="" win="0" message="技能设计：小研En" head="WuKong" hp="1700" mp="600" fang="6" li="26" kt="2" speed="5" zl="1" jump="18"/> 		
					<role name="贝吉塔" new="" win="0" message="技能设计：小小鸟" head="BeiJiTa" hp="1600" mp="600" fang="5" li="26" kt="2" speed="5" zl="1" jump="18"/> 		
					<role name="博人" new="" win="0" message="技能设计：小研En" head="BoRen" hp="1400" mp="600" fang="4" li="26" kt="2" speed="5" zl="1" jump="18"/> 		
					<role name="狼毒" new="" win="0" message="技能设计：小邪" head="HeiYiRen" hp="1650" mp="600" fang="4" li="18" kt="2" speed="5" zl="1" jump="18"/> 		
					<role name="索尼克" new="" win="0" message="技能设计：小小鸟" head="SuoNiKe" hp="1500" mp="600" fang="4" li="26" kt="2" speed="5" zl="1" jump="18"/> 		
					<role name="悟天克斯" new="" win="0" message="技能设计：虚伪" head="WuTianKeSi" hp="1600" mp="600" fang="5" li="26" kt="2" speed="5" zl="1" jump="18"/> 		
				</select>
				<select name='黑猫'>
					<role name="伊芙" new="" head="EVE" hp="1400" mp="400" fang="6" li="26" kt="2" speed="4" zl="1" jump="21" bq='有翼达人' message='技能设计：小小鸟'/>
					<role name="托雷·哈特涅特" head="HeiMao" hp="1450" mp="350" fang="3" li="24" kt="2" speed="4" zl="1" jump="20" bq='远近备兼'/>
				</select>
				<select name='剑心集合'>
					<role name='雷电·合金剑心' pkg='HeJin_2' head='HeJin' hp='1400' mp='500' fang='3' li='20' kt='2' speed='5' zl='1' jump='19' bq='雷电合金皮肤、雷电变身' message='技能设计：小小鸟；素材改：小小鸟'/>
					<role name='剑心' head='JianXin' hp='1300' mp='350' fang='3' li='29' kt='2' speed='4' zl='1' jump='19' bq='乱按也能连击、EX技能、DPS、新手'/>
					<role name='喰种剑心' win="0" head='MoHuaJianXin' hp='1500' mp='350' fang='3' li='29' kt='2' speed='4' zl='1' jump='19' bq='喰种、魔化技能、利世的心脏'/>
				</select>

				<select name='魔法禁书目录'>
					<role name='神裂火织' win="0" hurt="0.3" head='ShenLie' hp='1500' mp='600' fang='3' li='27' kt='2' speed='6' zl='1' jump='20' bq='七闪' message='技能设计：声音の绚烂'/>
					<role name='御坂美琴' head='PaoJie' hp='1600' mp='620' fang='4' li='25' kt='2' speed='4' zl='1' jump='20' bq='麻痹、最终的电磁炮'/>
					<role name='后方之水' win="0" head='ShuiShu' hp='1700' mp='460' fang='6' li='30' kt='2' speed='7' zl='1' jump='17' bq='曾经的BOSS'/>
				</select>


				<select name='火影忍者'>
					<role name='鼬' message="技能设计：肥叶" head='You' hp='1650' mp='450' fang='3' li='26' kt='2' speed='5' zl='1' jump='19' bq='须佐、写轮眼'/>
					<role name='长门' new="" head='ChangMen' hp='1770' mp='750' fang='4' li='20' kt='3' speed='5' zl='1' jump='18' bq='神罗天征' message='技能设计：残殇'/>
					<role name='卡卡西' new="" head='KaKaXi' hp='1600' mp='550' fang='4' li='27' kt='3' speed='6' zl='1' jump='19' bq='雷切、火遁' message='技能设计：残殇'/>
					<role name='日向雏田' win="0" head='ZouTian' hp='1300' mp='500' fang='7' li='23' kt='3' speed='6' zl='1' jump='18' bq='连击、白眼、不弃之心' message='技能设计：小研En'/>
					<role name='带土' win="0" head='DaiTu' hp='1450' mp='600' fang='4' li='26' kt='3' speed='6' zl='1' jump='18' bq='神威、回魔、火遁、木遁' message='技能设计：小研En'/>
					<role name='轮回眼佐助' win="0" head='LunHuiYanZuoZhu' hp='1650' mp='600' fang='3' li='30' kt='3' speed='8' zl='1' jump='18' bq='轮回眼' message='技能设计：残殇'/>
					<role name='斑' win="0" head='Ban' hp='1550' mp='600' fang='6' li='30' kt='3' speed='7' zl='1' jump='18' bq='幻纹1.7首次登场 纪念火影完结'/>
					<role name='革命者佐助' head='YingZuo' hp='1650' mp='600' fang='3' li='30' kt='2' speed='5' zl='1' jump='19' bq='革命者、须佐必杀'/>
					<role name='漩涡鸣人' head='Mingren' hp='1650' mp='400' fang='3' li='28' kt='2' speed='4' zl='1' jump='18' bq='九尾化、暴走、影分身'/>
					<role name='金鸣' head='JinMing' hp='1550' mp='500' fang='5' li='20' kt='2' speed='7' zl='1' jump='18' bq='压制、瞬闪'/>
					<role name='宁次' head='NingCi' hp='1650' mp='600' fang='7' li='27' kt='2' speed='5' zl='1' jump='18' bq='高连击、爆发、霸体、破防、抓取'/>
					<role name='小迪' head='XiaoDi' hp='1500' mp='500' fang='4' li='27' kt='2' speed='4' zl='1' jump='18' bq='蓄爆、极高爆发、召唤、控制'/>
					<role name='佐助' head='ZuoZhu' hp='1550' mp='400' fang='3' li='30' kt='2' speed='7' zl='1' jump='19' bq='小连击、伪爆发'/>
				</select>

				<select name='海贼王'>
					<role name='布鲁克' win="0" head='BuLuKe' hp='1700' mp='500' fang='6' li='20' kt='2' speed='4' zl='1' jump='17' bq='Hit加成、BUFF增幅力量跳跃' message='技能设计：小研En'/>
					<role name='两年后娜美' win="0" head='NaMei' hp='1400' mp='600' fang='4' li='20' kt='2' speed='4' zl='1' jump='18' bq='气泡辅助' message='技能设计：巅峰'/>
					<role name='两年后罗' new="" head='Luo' hp='1500' mp='550' fang='6' li='22' kt='2' speed='4' zl='1' jump='18' bq='治疗、ROOM' message='技能设计：小研En'/>
					<role name='两年后索隆' win="0" head='SuoLong' hp='1600' mp='400' fang='4' li='28' kt='2' speed='5' zl='1' jump='18' bq='两年后、武器' message='技能设计：巅峰'/>
					<role name='两年后山治' new="" win="0" head='XiangJi' hp='1400' mp='500' fang='4' li='25' kt='2' speed='5' zl='1' jump='20' bq='两年后、腿功' message='技能设计：巅峰'/>
					<role name='两年路飞' head='LiangNianLuFei' hp='1800' mp='500' fang='8' li='30' kt='2' speed='5' zl='1' jump='18' bq='两年后、皮厚' message='技能设计：巅峰'/>
					<role name="香克斯" head="HongFa" hp="1700" mp="400" fang="8" li="28" kt="2" speed="4" zl="1" jump="20" bq='红色霸气'/>
					<role name='路飞' head='LuFei' hp='1800' mp='400' fang='1' li='30' kt='2' speed='4' zl='1' jump='18' bq='测试挨打1号、空战、破霸、霸王色'/>
					<role name='艾斯' head='Ace' hp='1400' mp='600' fang='4' li='28' kt='2' speed='6' zl='1' jump='19' bq='范围'/>
					<role name='爱德华·纽盖特' head='LaoDie' hp='1600' mp='400' fang='3' li='29' kt='2' speed='4' zl='4' jump='18' bq='霸体、对空压制、必杀爆发'/>
				</select>
				
				<select name='死神'>
					<role name='白一护' win="0" pkg="NiuTouBaiYiHu" head='BaiYiHu' hp='1550' mp='600' fang='3' li='29' kt='2' speed='6' zl='2' jump='20' bq='牛头化' message='白一护技能设计：小小鸟  牛头白一护技能设计：声音の绚烂'/>
					<role name='乌尔奇奥拉' new="" win="0" head='XiaoWu' hp='1400' mp='400' fang='4' li='24' kt='2' speed='4' zl='2' jump='18' bq='范围' message='技能设计：小邪'/>
					<role name='乌尔奇奥拉·归刃' head='Ulquiorra' hp='1400' mp='400' fang='4' li='27' kt='2' speed='6' zl='2' jump='19' bq='范围' message='技能设计：空白'/>				
					<role name='卍解冬狮郎' head='WanJieDongShiLang' hp='1350' mp='600' fang='10' li='22' kt='2' speed='4' zl='2' jump='19' bq='防御增幅' message='技能设计：残殇；素材改：云雀'/>
					<role name='牛头一护' head='NiuTou' hp='1200' mp='900' fang='4' li='27' kt='2' speed='4' zl='2' jump='19' bq='范围、回血'/>
					<role name='朽木白哉' head='DaBai' hp='1500' mp='700' fang='4' li='27' kt='2' speed='4' zl='2' jump='19' bq='控制、卍解、位移、空蝉'/>
					<role name='剑八' head='JianBa' hp='1600' mp='400' fang='3' li='29' kt='2' speed='4' zl='3' jump='18' bq='遇强则强、抓取、极高爆发、攻速增加'/>
					<role name='一护' head='YiHu' hp='1450' mp='400' fang='3' li='25' kt='2' speed='6' zl='3' jump='18' bq='月牙强化、卍解、卍解全屏锁定'/>
					<role name='冬狮郎' head='DongShiLang' hp='1350' mp='600' fang='6' li='24' kt='2' speed='6' zl='3' jump='20' bq='多段攻击、连击、范围、突进'/>
					<role name='双刀一护' head='ShuangDaoYiHu' hp='1650' mp='600' fang='6' li='19' kt='2' speed='7' zl='3' jump='20' bq='二刀流、强制位移、大范围'/>
				</select>

				

				<select name="妖精的尾巴">
					<role name='小艾露莎' new="" win="0" head='ALS' hp='1550' mp='750' fang='6' li='28' kt='2' speed='4' zl='1' jump='20' bq='全能' message='技能设计：小小鸟'/>
					<role name='纳兹' head='NaZi' hp='1600' mp='420' fang='2' li='29' kt='2' speed='4' zl='1' jump='19' bq='霸体、雷炎龙模式'/>
				</select>

				<select name="任天堂系列">
					<role name="库巴" new="" win="0" message="技能设计：沐颉" head="KuBa" hp="1600" mp="400" fang="8" li="20" kt="2" speed="5" zl="1" jump="18" bq='马里奥大BOSS'/>	
					<role name="小绿帽" head="LvMao" hp="1500" mp="400" fang="6" li="24" kt="2" speed="9" zl="1" jump="18" bq='后宫之王'/>	
				</select>

				<select name="银魂">
					<role name="土方十四郎" new="" win="0" message="技能设计：沐颉" head="TuFang" hp="1400" mp="500" fang="4" li="26" kt="2" speed="5" zl="1" jump="18" bq='老烟枪'/> 		
					<role name="银" head="Ying" hp="1550" mp="400" fang="6" li="24" kt="2" speed="7" zl="1" jump="18" bq='恶搞技能'/> 		
				</select>
				
				<select name='独立派'>
					<role name="桐谷和人" head="ZhenTongRen" hp="1650" mp="450" fang="6" li="26" kt="2" speed="4" zl="1" jump="18" bq='刀剑、快刀流'/>	
					<role name="夏娜" head="XiaNa" hp="1660" mp="500" fang="3" li="28" kt="2" speed="6" zl="1" jump="20" bq='炎'/>
					<role name="夏娜（真）" new="" head="ZhenXiaNa" hp="1550" mp="500" fang="3" li="28" kt="2" speed="4" zl="1" jump="20" bq='炎'/>
					<role name="犬夜叉" head="QuanYeCha" hp="1850" mp="500" fang="5" li="27" kt="2" speed="7" zl="1" jump="20" bq='高HP'/>	
					<role name="鬼剑士·桐人" head="TongRen" hp="1650" mp="450" fang="6" li="26" kt="2" speed="4" zl="1" jump="18" bq='刀剑、快刀流'/>	
					<role name='悟吉塔' head='WuJiTa' hp='1650' mp='420' fang='2' li='26' kt='2' speed='6' zl='1' jump='20' bq='悟空贝吉塔合体'/>
					<role name="Saber" win="0" head="Saber" hp="1800" mp="650" fang="3" li="32" kt="2" speed="4" zl="1" jump="19" bq='魔力外放'/>
				</select>

				
		
				<select name='苍翼默示录'>
					<role name='拉格纳' head='HongJuJian' hp='1390' mp='400' fang='6' li='27' kt='2' speed='4' zl='1' jump='16' bq='苍之力、体力吸收'/>
					<role name='如月琴恩' head='JianShi' hp='1500' mp='300' fang='4' li='24' kt='2' speed='4' zl='1' jump='20' bq='拔刀流、会心一击'/>
				</select>
				
				
				
				<select name='地下城与勇士'>
					<role name='女格斗家' head='GeDouJia' hp='1800' mp='350' fang='3' li='35' kt='2' speed='4' zl='1' jump='20' bq='破霸、霸体、瞬发'/>
					<role name='男鬼剑士' head='GuiJianShi' hp='1500' mp='450' fang='5' li='27' kt='2' speed='4' zl='1' jump='18' bq='范围、多职业'/>
					<role name='女鬼剑士' head='NvGuiJian' hp='1400' mp='550' fang='4' li='26' kt='2' speed='4' zl='1' jump='19' bq='火属性'/>
					<role name='火元素' head='HuoYuanSu' hp='1550' mp='550' fang='3' li='27' kt='2' speed='4' zl='2' jump='18' bq='自爆、飞行、装B神将'/>
					<role name='金龙' head='JinLong' hp='1250' mp='850' fang='2' li='30' kt='2' speed='4' zl='1' jump='18' bq='雷电、飞行'/>
					<role name='男魔法师' head='NanMoFa' hp='1400' mp='800' fang='5' li='30' kt='2' speed='4' zl='1' jump='18' bq='冰雹、落地'/>
				</select>

				<select name='家庭教师'>
					<role name='纲吉' head='GangJi' hp='1400' mp='600' fang='5' li='28' kt='2' speed='4' zl='1' jump='19' bq='宠物小纳兹、高爆发、突进、连击'/>
					<role name='巴吉尔' head='Wo' hp='1440' mp='550' fang='3' li='20' kt='2' speed='4' zl='1' jump='18' bq='宠物小海、召唤、大范围、连击'/>
					<role name="山本武" message="技能设计：虚伪" new="0" head="SanBen" hp="1650" mp="500" fang="7" li="25" kt="2" speed="4" zl="1" jump="18" bq='水之力'/>
				</select>
				
				<select name='其他'>
					<role name='奇葩龙' head='GuaiYiLong' hp='1600' mp='350' fang='3' li='27' kt='2' speed='4' zl='3' jump='18' bq='中毒、神瞬步、新手、范围'/>
					<role name="二刀流" new="" message="技能设计：沐颉" head="ShuangDao" hp="1600" mp="400" fang="4" li="25" kt="2" speed="4" zl="1" jump="17" bq='二刀流'/>
				</select>

				<select name='随机角色'>
					<role name='随机' win="0" head='NoKown' hp='0' mp='0' fang='0' li='0' kt='0' speed='0' zl='0' jump='0' bq='这一定是卖萌的选项！'/>
				</select>
				
				
				<select name='BOSS库'>
					<role name='Doge' message="技能设计：沐颉" new="" win="700000" head='Doge' hp='2500' mp='500' fang='3' li='50' kt='1' speed='9' zl='1' jump='18'/>
					<role name='滑稽' message="技能设计：巅峰" new="" win="600000" head='HuaJi' hp='2500' mp='1000' fang='3' li='28' kt='1' speed='9' zl='1' jump='18'/>
					<role name="彩虹咩" message="技能设计：左眼" new="" win="500000" head="CaiHongMie" hp="1660" mp="500" fang="3" li="0" kt="2" speed="6" zl="1" jump="20" bq='炎'/>
					<role name='草泥马' message="技能设计：左眼" new="" win="400000" head='CaoNiMa' hp='1800' mp='350' fang='15' li='17' kt='2' speed='4' zl='3' jump='18'/>
					<role name='老哥布林' message="技能设计：左眼" new="" win="300000" head='Freak_LaoGeBuLin' hp='2500' mp='50' fang='0' li='8' kt='1' speed='2' zl='1' jump='10'/>
				</select>
			</xml>;
      }
      
      public static function getSelectName(param1:String) : String
      {
         var _loc2_:* = 0;
         while(_loc2_ < select_xml.select.role.length())
         {
            if(select_xml.select.role[_loc2_].@head == param1)
            {
               return select_xml.select.role[_loc2_].@name;
            }
            _loc2_++;
         }
         return "???";
      }
      
      public static function loadPkg(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = $xmlData.select.child("role");
         for(_loc2_ in _loc5_)
         {
            if(String(_loc5_[_loc2_].@head) == param1)
            {
               if(_loc5_[_loc2_].@pkg != undefined)
               {
                  _loc3_ = String(_loc5_[_loc2_].@pkg).split(",");
                  for(_loc4_ in _loc3_)
                  {
                     if(_loc3_[_loc4_] != "" && _loc3_[_loc4_] != "undefined")
                     {
                        SystemLoading.addTask("File/indexFile/roledata/" + _loc3_[_loc4_] + ".data","data",_loc3_[_loc4_]);
                     }
                  }
               }
               break;
            }
         }
      }
      
      public static function getLockString(param1:int) : String
      {
         var _loc3_:* = undefined;
         var _loc2_:String = "";
         for(_loc3_ in GameData._lock_array)
         {
            if(GameData._lock_array[_loc3_] <= param1)
            {
               _loc2_ += "【" + getSelectName(_loc3_) + "】";
            }
         }
         if(_loc2_ != "")
         {
            _loc2_ = "\n新人物解锁：" + _loc2_;
         }
         else
         {
            _loc2_ = "\n再接再厉，加油!";
         }
         return _loc2_;
      }
      
      public static function NDString() : String
      {
         switch(GameData.$lv)
         {
            case 95:
               return "普通";
            case 80:
               return "普通";
            case 65:
               return "王者";
            case 50:
               return "疯狂";
            case 35:
               return "英雄";
            default:
               return "无效等级";
         }
      }
      
      public static function updateFightArray() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         if($mode == "SZ")
         {
            $fightArray = ["HuoYuanSu","JinLong","NvGuiJian","GuaiYiLong","GuiJianShi","Wo","Ying","JianBa","WuJiTa","NaZi","Mingren","DongShiLang","DaBai","ShuangDao","XiaoDi","ZuoZhu","HongJuJian","NanMoFa","JianShi","GeDouJia","NingCi","GangJi","PaoJie","SanBen","LuFei","TongRen","MoHuaJianXin","JianXin","JinMing","LaoDie","XiaNa","Saber","YiHu","ShuangDaoYiHu","ShuiShu","Ace","QuanYeCha","Ban","Freak_LaoGeBuLin","XiaoWu","CaoNiMa"];
            return;
         }
         GameData.ns_select = "none";
         var _loc4_:* = $allFightArray.concat();
         var _loc5_:* = $mode == "SZ" ? _loc4_.length : 10;
         _loc4_.splice(_loc4_.indexOf("CaoNiMa"),1);
         var _loc6_:* = _loc4_.length - _loc5_;
         while(_loc6_ > 0)
         {
            _loc4_.splice(int(Math.random() * _loc4_.length),1);
            _loc6_--;
         }
         var _loc7_:* = 0;
         while(_loc7_ < _loc5_)
         {
            _loc1_ = int(Math.random() * _loc4_.length);
            _loc2_ = int(Math.random() * _loc4_.length);
            if(_loc1_ !== _loc2_)
            {
               _loc3_ = _loc4_[_loc1_];
               _loc4_[_loc1_] = _loc4_[_loc2_];
               _loc4_[_loc2_] = _loc3_;
            }
            _loc7_++;
         }
         $fightArray = _loc4_.concat(GameData.$mode == "TwoAll" ? [$boosFightArray[int(Math.random() * $boosFightArray.length)],$boosFightArray[int(Math.random() * $boosFightArray.length)]] : $boosFightArray[int(Math.random() * $boosFightArray.length)]);
         $boss = getSelectName($fightArray[$fightArray.length - 1]);
      }
      
      public static function configLoad() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in $hredArray)
         {
            SystemLoading.addTask("File/indexFile/img/ui/select/" + $hredArray[_loc1_] + ".png","photo","Hred" + $hredArray[_loc1_],true);
         }
         for(_loc1_ in $mapArray)
         {
            SystemLoading.addTask("File/indexFile/img/map/select/" + $mapArray[_loc1_] + ".png","photo","MAP" + $mapArray[_loc1_],true);
         }
      }
      
      public static function getRoleFromTarget(param1:String) : XML
      {
         var _loc2_:* = null;
         var _loc3_:* = $xmlData.select.child("role");
         for(_loc2_ in _loc3_)
         {
            if(String(_loc3_[_loc2_].@head) == param1)
            {
               return _loc3_[_loc2_];
            }
         }
         return null;
      }
      
      public static function getTips() : String
      {
         return tipsArray[int(Math.random() * tipsArray.length)];
      }
   }
}

