package SystemEye
{
   import SystemComponent.GameOverLayer;
   import SystemComponent.SystemBackground;
   import SystemComponent.SystemLoading;
   import SystemComponent.SystemMucisPlay;
   import SystemComponent.SystemP2P;
   import SystemComponent.Word.SystemSelectBox1D3;
   import eye.Draw.BitmapDataDraw;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.NetStream;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import p2p2016.P2PData;
   import rainy.p2p.P2PEvent;
   import rainy.url.GetURL;
   
   public class SystemEvent
   {
      
      private static var _p2pMain:P2PMain;
      
      public static var _udptime:Timer;
      
      private static var _netStream:NetStream;
      
      private static var _set:P2PSet;
      
      public static var _pingText:TextField;
      
      public static var _playVideoArray:Array;
      
      public static var _p2ptype:String = "";
      
      public static var isLoaded:int = 0;
      
      private static var _mapData:Array = [];
      
      private static var _ping:int = 0;
      
      private static var _farPing:int = 0;
      
      private static var _pintTime:int = 0;
      
      private static var _mapDataSize:int = 0;
      
      private static var _isPlay:Boolean = false;
      
      public function SystemEvent()
      {
         super();
      }
      
      public static function update() : void
      {
      }
      
      public static function about() : void
      {
         ComponentResourcesManage.$stage.$box.$api.addShow("关于游戏","该游戏由Zygame制作组制成\n程序：左眼",true);
         ComponentResourcesManage.$stage.$box.$api.addShow("关于游戏","策划：左眼、小邪、梅林");
         ComponentResourcesManage.$stage.$box.$api.addShow("关于游戏","动作编辑：冷月、容嬷嬷、梅林");
         ComponentResourcesManage.$stage.$box.$api.addShow("关于游戏","音效处理：小邪、消失");
         ComponentResourcesManage.$stage.$box.$api.addShow("关于游戏","本次版本感谢协助：下页、阿拉、周tama、洛晨羽、A4（乐）");
         ComponentResourcesManage.$stage.$box.$api.addShow("关于游戏","然后，感谢互联网资源");
      }
      
      public static function lianJi() : void
      {
         if(GameData.$mode == "1P2P")
         {
            GameData.$mode = "1PCOM";
         }
         else if(GameData.$mode == "1PCOM")
         {
            GameData.$mode = "COMCOM";
         }
         else
         {
            GameData.$mode = "1P2P";
         }
         ComponentResourcesManage.$stage.$box.$api.addShow("战斗设定","更改模式为【" + GameData.$mode + "】");
      }
      
      public static function GROUP_VS() : void
      {
         GameData.$mode = "ONE_GROUP";
         GameData.ns_select = "none";
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"ONE_GROUP"},true);
      }
      
      public static function case_1P2P_VS_ALL() : void
      {
         SystemBackground.bitmapData = DataStorage.readImg("systemBJ");
         GameData.$mode = "TwoAll";
         GameData.ns_select = "none";
         GameData.updateFightArray();
         GameData.$fightTo = 0;
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"1P2P"},true);
      }
      
      public static function case_1P_VS_ALL() : void
      {
         if(ComponentResourcesManage.$stage.$lvexp)
         {
            ComponentResourcesManage.$stage.$lvexp.vis = false;
         }
         SystemBackground.bitmapData = DataStorage.readImg("systemBJ");
         GameData.$mode = "1PALL";
         GameData.ns_select = "none";
         GameData.updateFightArray();
         GameData.$fightTo = 0;
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"1PALL"},true);
         GameScore.initScore();
      }
      
      public static function case_SZ() : void
      {
         if(ComponentResourcesManage.$stage.$lvexp)
         {
            ComponentResourcesManage.$stage.$lvexp.vis = false;
         }
         SystemBackground.bitmapData = DataStorage.readImg("systemBJ");
         GameData.$mode = "SZ";
         GameData.ns_select = "none";
         GameData.updateFightArray();
         GameData.$fightTo = 0;
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"SZ"},true);
         GameScore.initScore();
      }
      
      public static function case_NS_Save() : void
      {
         var _loc1_:* = SharedObject.getLocal("chxwz.zygamec");
         _loc1_.data.roleData = NSGameData.ns_object;
         _loc1_.flush();
         ComponentResourcesManage.$stage.$box.$api.addShow("#000000","#Sava OK",true);
      }
      
      public static function case_NS() : void
      {
         var _loc1_:* = SharedObject.getLocal("hxwz.zygame");
         if(_loc1_.data.roleData)
         {
            NSGameData.ns_object = _loc1_.data.roleData;
         }
         else
         {
            ComponentResourcesManage.$stage.$box.$api.addShow("#000000","#Sava Error",true);
         }
         SystemBackground.bitmapData = DataStorage.readImg("systemBJ");
         GameData.$mode = "NS";
         GameData.$fightTo = 0;
         ComponentResourcesManage.askResources("SelectCard","SelectCard",null,true);
      }
      
      public static function case_1P_VS_2P() : void
      {
         SystemBackground.bitmapData = DataStorage.readImg("systemBJ");
         GameData.$mode = "1P2P";
         GameData.ns_select = "none";
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"1P2P"},true);
      }
      
      public static function case_1P_VS_SB() : void
      {
         SystemBackground.bitmapData = DataStorage.readImg("systemBJ");
         GameData.$mode = "1PSB";
         GameData.ns_select = "none";
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"1PSB"},true);
      }
      
      public static function case_1P_VS_COM() : void
      {
         SystemBackground.bitmapData = DataStorage.readImg("systemBJ");
         GameData.$mode = "1PCOM";
         GameData.ns_select = "none";
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"1PCOM"},true);
      }
      
      public static function case_COM_VS_COM() : void
      {
         SystemBackground.bitmapData = DataStorage.readImg("systemBJ");
         GameData.$mode = "COMCOM";
         GameData.ns_select = "none";
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"COMCOM"},true);
      }
      
      public static function online() : void
      {
         ComponentResourcesManage.$stage.$box.$api.addShow("联机情况","正在链接服务器...",true);
         P2PData.init(onlineTrue);
      }
      
      public static function onlineTrue() : void
      {
         GameData.$mode = "P2P";
         var _loc1_:* = new Object();
         _loc1_.onFight = onFight;
         _loc1_.onAccept = onAccept;
         _loc1_.onPlay = onPlay;
         _loc1_.onMapData = onMapData;
         _loc1_.onAcceptKeyUp = onAcceptKeyUp;
         _loc1_.onAcceptKeyDown = onAcceptKeyDown;
         _loc1_.onSelect = onSelect;
         _loc1_.test2pPing = test2pPing;
         _loc1_.on2PBack = on2PBack;
         _loc1_.onPlayGame = onPlayGame;
         P2PData.p2p.setClient(_loc1_);
         P2PData.p2p.startDirectConnect("fight");
         ComponentResourcesManage.CG();
         var _loc2_:* = new P2PMain(P2PData.p2p.getNearID());
         ComponentResourcesManage.$stage.addChild(_loc2_);
         _loc2_.x = 10;
         _loc2_.y = 10;
         _loc2_.connectCall = fight;
         _p2pMain = _loc2_;
         ComponentResourcesManage.$stage.$box.$api.addShow("联机情况","链接成功！！！",true);
         SystemEvent._p2ptype = "";
         P2PData.p2p.addEventListener(P2PEvent.P2PEVENT_NEW_CLIENT,onClient);
         P2PData.p2p.addEventListener(P2PEvent.P2PEVENT_DISCONNECT,onDisconnect);
         ComponentResourcesManage.$stage.stage.addEventListener(KeyboardEvent.KEY_UP,onUp);
         _udptime = new Timer(1000,0);
         _udptime.addEventListener(TimerEvent.TIMER,udpTimer);
         _udptime.start();
         if(Main.keyMain)
         {
            Main.keyMain.visible = true;
         }
      }
      
      private static function udpTimer(param1:TimerEvent) : void
      {
         P2PData.p2p.send("onP2P");
      }
      
      private static function onUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ESCAPE)
         {
            if(_p2pMain)
            {
               _p2pMain.parent.removeChild(_p2pMain);
            }
            if(_set)
            {
               _set.parent.removeChild(_set);
            }
            _p2pMain = null;
            _set = null;
            ComponentResourcesManage.$stage.stage.removeEventListener(KeyboardEvent.KEY_UP,onUp);
            ComponentResourcesManage.$stage.init2();
         }
      }
      
      private static function onSelect(param1:Array) : void
      {
         if(ComponentResourcesManage.$Ob["SelectRole"])
         {
            (ComponentResourcesManage.$Ob["SelectRole"] as SystemSelectBox1D3).onSelect(param1);
         }
      }
      
      private static function onAcceptKeyUp(param1:Array) : void
      {
         ComponentResourcesManage.$word.$elementsOb["role2"].toUp(param1[0]);
      }
      
      private static function onAcceptKeyDown(param1:Array) : void
      {
         ComponentResourcesManage.$word.$elementsOb["role2"].toDown(param1[0]);
      }
      
      public static function onClient(param1:P2PEvent) : void
      {
         if(_p2ptype == "fight")
         {
            return;
         }
         _netStream = param1.netStream;
         onFight([param1.netStream.farID]);
      }
      
      public static function onDisconnect(param1:P2PEvent) : void
      {
         _netStream = null;
         ComponentResourcesManage.$stage.$box.$api.addShow("联机情况","用户断开",true);
         if(_set)
         {
            _set.parent.removeChild(_set);
            _set = null;
         }
         _p2ptype = "";
      }
      
      public static function on2PBack(param1:Array) : void
      {
         _farPing = param1[0];
         ping();
         if(Boolean(ComponentResourcesManage.$word) && _pingText != null)
         {
            P2PData.p2p.send("test2pPing",_ping);
         }
      }
      
      public static function test2pPing(param1:Array) : void
      {
         _farPing = param1[0];
         P2PData.p2p.send("on2PBack",_ping);
      }
      
      public static function onFight(param1:Array) : void
      {
         var _loc2_:* = new P2PGet(accept,param1[0]);
         ComponentResourcesManage.$stage.addChild(_loc2_);
      }
      
      public static function onAccept() : void
      {
         ComponentResourcesManage.$stage.$box.$api.addShow("联机情况","握手成功",true);
         selectRole();
         if(_set)
         {
            _set.parent.removeChild(_set);
            _set = null;
         }
      }
      
      public static function onPlay() : void
      {
         var _loc1_:* = isLoaded + 1;
         isLoaded = _loc1_;
         if(isLoaded == 2)
         {
            Play();
         }
      }
      
      private static function selectRole() : void
      {
         _p2pMain.parent.removeChild(_p2pMain);
         _p2pMain = null;
         ComponentResourcesManage.askResources("SelectRole","SelectRole",{"mode":"P2P"},true);
      }
      
      private static function accept(param1:String) : void
      {
         if(param1 != null)
         {
            P2PData.p2p.connectClient(param1);
            P2PData.p2p.send("onAccept");
            _p2ptype = "accept";
            selectRole();
         }
         else
         {
            _netStream.close();
            _netStream = null;
            _p2ptype = "";
         }
      }
      
      private static function fight(param1:String) : void
      {
         _p2ptype = "fight";
         P2PData.p2p.connectClient(param1);
         _set = new P2PSet();
         ComponentResourcesManage.$stage.addChild(_set);
      }
      
      private static function onMapData(param1:Array) : void
      {
         ping();
         _mapData.push(param1[0]);
      }
      
      public static function ping() : void
      {
         var _loc1_:* = 0;
         if(_pintTime == 0)
         {
            _pintTime = new Date().getTime();
         }
         else
         {
            _loc1_ = new Date().getTime();
            _ping = _loc1_ - _pintTime;
            _pintTime = _loc1_;
            if(_pingText)
            {
               _pingText.text = _ping + "ms  " + "(" + _farPing + "ms)";
               _pingText.width = 700;
               _pingText.height = 32;
               _pingText.setTextFormat(new TextFormat(null,null,16776960));
            }
         }
      }
      
      public static function getMapData() : Object
      {
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = null;
         if(_playVideoArray)
         {
            _loc1_ = _playVideoArray[0];
            _playVideoArray.shift();
            return _loc1_;
         }
         if(_mapData.length > 0)
         {
            _loc1_ = null;
            _loc2_ = 0;
            _loc3_ = 0;
            for(_loc4_ in _mapData)
            {
               _loc1_ = JSON.parse(P2PData.extract(_mapData[_loc4_]));
               if(_loc1_.time > _loc3_)
               {
                  _loc2_ = _loc4_ as int;
                  _loc3_ = _loc1_.time;
               }
            }
            _loc1_ = JSON.parse(P2PData.extract(_mapData[_loc2_]));
            _mapData.splice(0,_mapData.length);
            return _loc1_;
         }
         return null;
      }
      
      public static function log(... rest) : void
      {
         _pingText.text = JSON.stringify(rest);
         _pingText.setTextFormat(new TextFormat(null,null,16776960));
      }
      
      public static function onPlayGame(param1:Array) : void
      {
         SystemP2P.$FightOK = true;
         SystemLoadType.loadMAP(param1[0]);
         SystemEvent.select({"name":GameData.$roleSelectArray[0]});
      }
      
      public static function getP2PType() : String
      {
         return _p2ptype;
      }
      
      public static function select(param1:Object) : void
      {
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc2_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         isLoaded = 0;
         _isPlay = false;
         _pintTime = 0;
         DataStorage.CG();
         GameData.$fightBoolean = false;
         ComponentResourcesManage.CG();
         GameData.$roleSelectArray[0] = param1.name;
         if(GameData.ns_select !== "none")
         {
            _loc2_ = XML(DataStorage.readText("NS_" + GameData.ns_select));
            _loc3_ = 0;
            while(_loc3_ < _loc2_.ns.file.data.length())
            {
               _loc7_ = _loc4_ = getDefinitionByName("SystemComponent.Word.Freak.Freak_" + _loc2_.ns.file.data[_loc3_].@target) as Class;
               _loc7_["loadData"]();
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.ns.file.boss.length())
            {
               _loc7_ = _loc4_ = getDefinitionByName("SystemComponent.Word.Role." + _loc2_.ns.file.boss[_loc3_].@target) as Class;
               _loc7_["loadData"]();
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.ns.file.show.length())
            {
               SystemLoading.addTask("File/indexFile/img/show/" + _loc2_.ns.file.show[_loc3_].@target + ".png","photo","Show_" + _loc2_.ns.file.show[_loc3_].@target);
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.ns.file.map.length())
            {
               SystemLoadType.loadMAP(_loc2_.ns.file.map[_loc3_].@target);
               _loc3_++;
            }
            SystemLoadType.loadRoleData(GameData.$roleSelectArray[0]);
            SystemLoading.startForOverOpen = toLoad;
         }
         else
         {
            _loc7_ = GameData;
            if(GameData.$mode == "1PALL" || GameData.$mode == "SZ")
            {
               if(GameData.$fightArray[GameData.$fightTo] !== undefined)
               {
                  GameData.$roleSelectArray[1] = GameData.$fightArray[GameData.$fightTo];
                  _loc8_ = _loc7_.$fightTo + 1;
                  _loc7_.$fightTo = _loc8_;
               }
               else
               {
                  _loc5_ = new GameOverLayer(_loc7_.$mode);
                  ComponentResourcesManage.$stage.addChild(_loc5_);
                  _loc5_.x = 700 / 2 - _loc5_.width / 2;
                  _loc5_.y = 450 / 2 - _loc5_.height / 2;
                  _loc5_.width *= Main.contentScale;
                  _loc5_.height *= Main.contentScale;
                  _loc6_ = new GetURL("http://zygamenet.duapp.com/web/php/4399api/updateRank.php",null,"name=" + _loc7_.getSelectName(_loc7_.$roleSelectArray[0]),"score=" + GameScore.getScore());
                  GameScore.submit(_loc7_.$roleSelectArray[0]);
                  _loc7_.$roleSelectArray[1] = "";
               }
            }
            else if(_loc7_.$mode == "TwoAll" && !SystemEvent._playVideoArray)
            {
               if(_loc7_.$fightArray[_loc7_.$fightTo + 2] !== undefined)
               {
                  _loc7_.$fightTo += 2;
               }
               else
               {
                  ComponentResourcesManage.$stage.$box.$api.addShow("挑战情况","挑战完毕！！！合作就是一件很有成功感的事！",true);
                  _loc7_.$roleSelectArray[1] = "";
                  ComponentResourcesManage.askResources("Button","EXIT",{
                     "event":exit,
                     "text":BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"),XML(DataStorage.readText("Menu")).SubTexture[9]),
                     "array":BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"),XML(DataStorage.readText("buttonUI2")))
                  });
                  ComponentResourcesManage.setXY("EXIT",new Point(SystemState.$stageWidth / 2 - 248 / 2,150));
               }
            }
            else if(!(_loc7_.$roleSelectArray[1] is String))
            {
               _loc7_.$roleSelectArray[1] = "XiaoDi";
            }
            if(_loc7_.$roleSelectArray[1] !== "")
            {
               SystemLoading.addTask("File/indexFile/img/vs/" + _loc7_.$roleSelectArray[0] + ".png","photo","FightVS" + _loc7_.$roleSelectArray[0]);
               SystemLoading.addTask("File/indexFile/img/vs/" + _loc7_.$roleSelectArray[1] + ".png","photo","FightVS" + _loc7_.$roleSelectArray[1]);
               if(_loc7_.$mode == "TwoAll")
               {
                  if(SystemEvent._playVideoArray)
                  {
                     SystemLoading.addTask("File/indexFile/img/vs/" + _loc7_.$roleSelectArray[2] + ".png","photo","FightVS" + _loc7_.$fightArray[_loc7_.$fightTo]);
                     SystemLoading.addTask("File/indexFile/img/vs/" + _loc7_.$roleSelectArray[3] + ".png","photo","FightVS" + _loc7_.$fightArray[_loc7_.$fightTo + 1]);
                  }
                  else
                  {
                     SystemLoading.addTask("File/indexFile/img/vs/" + _loc7_.$fightArray[_loc7_.$fightTo] + ".png","photo","FightVS" + _loc7_.$fightArray[_loc7_.$fightTo]);
                     SystemLoading.addTask("File/indexFile/img/vs/" + _loc7_.$fightArray[_loc7_.$fightTo + 1] + ".png","photo","FightVS" + _loc7_.$fightArray[_loc7_.$fightTo + 1]);
                  }
               }
               SystemLoading.startForOverOpen = toLoad;
            }
         }
      }
      
      public static function continueGame(param1:GameWinEvent) : void
      {
         var _loc2_:* = param1.target as GameWinLayer;
         _loc2_.parent.removeChild(_loc2_);
         if(GameData.$fightTo !== GameData.$fightArray.length && (GameData.$mode == "1PALL" || GameData.$mode == "SZ") || GameData.$mode == "TwoAll" && GameData.$fightTo < GameData.$fightArray.length - 2)
         {
            SystemLoadType.loadMAP(GameData.$mapArray[int(Math.random() * GameData.$mapArray.length)]);
         }
         SystemEvent.select({"name":GameData.$roleSelectArray[0]});
      }
      
      public static function exit() : void
      {
         ComponentResourcesManage.CG();
         ComponentResourcesManage.$stage.init2();
      }
      
      private static function toLoad() : void
      {
         ComponentResourcesManage.askResources("FightVS","FightVS",null);
      }
      
      public static function startLoad() : void
      {
         SystemLoadType.loadRoleData(GameData.$roleSelectArray[0]);
         SystemLoadType.loadRoleData(GameData.$roleSelectArray[1]);
         if(GameData.$mode == "1PALL")
         {
            SystemLoadType.loadRoleData("Saber");
         }
         if(GameData.$mode == "TwoAll")
         {
            if(_playVideoArray != null)
            {
               SystemLoadType.loadRoleData(GameData.$roleSelectArray[2]);
               SystemLoadType.loadRoleData(GameData.$roleSelectArray[3]);
            }
            else
            {
               SystemLoadType.loadRoleData(GameData.$fightArray[GameData.$fightTo]);
               SystemLoadType.loadRoleData(GameData.$fightArray[GameData.$fightTo + 1]);
            }
         }
         SystemLoading.startForOverOpen = toVS;
      }
      
      private static function toVS() : void
      {
         ComponentResourcesManage.$Ob["FightVS"].$boolean = true;
      }
      
      public static function PlayGame() : void
      {
         var _loc1_:* = undefined;
         if(!SystemP2P.$FightOK || Boolean(_playVideoArray))
         {
            Play();
         }
         else if(!_isPlay)
         {
            _isPlay = true;
            _loc1_ = isLoaded + 1;
            isLoaded = _loc1_;
            if(isLoaded == 2)
            {
               Play();
            }
            P2PData.p2p.send("onPlay");
         }
      }
      
      public static function Play() : void
      {
         SystemMucisPlay.systemMusic = DataStorage.readSound(GameData.$mapTarget);
         ComponentResourcesManage.askResources("Word","SystemWord",{"role1":GameData.$roleSelectArray[0]},true);
         ComponentResourcesManage.$word.Hei();
         if(!_pingText)
         {
            _pingText = new TextField();
            _pingText.width = 700;
         }
         ComponentResourcesManage.$stage.addChild(_pingText);
         _pingText.text = "none ms";
         _pingText.visible = false;
         _pingText.setTextFormat(new TextFormat(null,null,16776960));
         if(_p2ptype == "fight")
         {
            P2PData.p2p.send("test2pPing",0);
         }
      }
      
      public static function rank() : void
      {
         var _loc_2:* = undefined;
         try
         {
            _loc_2 = ComponentResourcesManage.$stage.parent.parent;
            _loc_2["GetPHB"]();
         }
         catch(e:Error)
         {
            ComponentResourcesManage.$stage.$box.$api.addShow("系统","暂无法登录",true);
         }
      }
      
      public static function fankui() : void
      {
         navigateToURL(new URLRequest("http://my.4399.com/583191627"),"_blank");
      }
      
      public static function loadVideo(param1:String) : void
      {
         var _loc2_:* = new URLLoader(new URLRequest("File/indexFile/data/video/" + param1));
         _loc2_.addEventListener(Event.COMPLETE,onDATAComplete);
         _loc2_.dataFormat = URLLoaderDataFormat.BINARY;
      }
      
      private static function onDATAComplete(param1:Event) : void
      {
         buildByte(param1.target.data as ByteArray,null);
      }
      
      public static function buildByte(param1:ByteArray, param2:Function) : void
      {
         var data:*;
         var swfi:int = 0;
         var loader:Loader = null;
         var byte:* = undefined;
         var onSwfComplete:* = undefined;
         byte = param1;
         onSwfComplete = param2;
         byte.uncompress();
         data = byte.readUTFBytes(byte.bytesAvailable);
         try
         {
            SystemEvent.playVideo(data);
         }
         catch(e:Error)
         {
            if(onSwfComplete == null)
            {
               return;
            }
            while(swfi < byte.length)
            {
               byte[swfi] -= swfi;
               swfi += 1;
            }
            loader = new Loader();
            loader.loadBytes(byte);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onSwfComplete);
         }
      }
      
      public static function playVideo(param1:String) : void
      {
         var _loc2_:* = null;
         param1 = param1.split("}{").join("},{");
         param1 = "[" + param1 + "]";
         _playVideoArray = JSON.parse(param1) as Array;
         var _loc3_:* = _playVideoArray[0];
         var _loc4_:* = [];
         for(_loc2_ in _loc3_.world)
         {
            if(Boolean(_loc3_.world[_loc2_].data) && _loc3_.world[_loc2_].data.type == "role")
            {
               if(_loc3_.mode == "TwoAll")
               {
                  _loc4_[int(_loc3_.world[_loc2_].name.charAt(4)) - 1] = _loc3_.world[_loc2_].data.target;
               }
               else if(_loc3_.world[_loc2_].name == "role1")
               {
                  _loc4_[0] = _loc3_.world[_loc2_].data.target;
               }
               else if(["role2","role3"].indexOf(_loc3_.world[_loc2_].name) != -1)
               {
                  _loc4_[1] = _loc3_.world[_loc2_].data.target;
               }
            }
         }
         if(_loc3_.map == null || _loc3_.mode == null)
         {
            return;
         }
         SystemP2P.$FightOK = true;
         _p2ptype = "accept";
         GameData.$mode = getMode(_loc3_.mode);
         SystemLoadType.loadMAP(_loc3_.map);
         GameData.$roleSelectArray = _loc4_;
         SystemEvent.select({"name":GameData.$roleSelectArray[0]});
      }
      
      private static function getMode(param1:String) : String
      {
         if(param1 == "SZ" || param1 == "1PALL")
         {
            return "1PCOM";
         }
         return param1;
      }
   }
}

