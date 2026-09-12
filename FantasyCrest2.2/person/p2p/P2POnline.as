package person.p2p
{
   import SystemComponent.*;
   import SystemEye.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.net.*;
   import person.text.*;
   
   public class P2POnline
   {
      
      private static var $nc:NetConnection;
      
      private static var $Group:NetGroup;
      
      private static var $funciton:Function;
      
      private static var _nsing:NetStream;
      
      private static var _ns:NetStream;
      
      private static var $openFunction:Function;
      
      private static const SERVER:String = "rtmfp://p2p.rtmfp.net/";
      
      private static const DEVKEY:String = "eab5eb35df059722f1670741-b0cbffefae78";
      
      private static var $text:TextWord = new TextWord("无",new Point(),new Rectangle(0,0,100,24));
      
      public static var $connectNum:int = 0;
      
      public function P2POnline()
      {
         super();
      }
      
      public static function set open(param1:Function) : void
      {
         $openFunction = param1;
         $nc = new NetConnection();
         $nc.connect(SERVER + DEVKEY);
         $nc.addEventListener(NetStatusEvent.NET_STATUS,netStatus);
      }
      
      public static function getNearID() : String
      {
         if($nc)
         {
            return $nc.nearID;
         }
         return "";
      }
      
      private static function netStatus(param1:NetStatusEvent) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:* = null;
         switch(param1.info.code)
         {
            case "NetConnection.Connect.Success":
               _nsing = new NetStream($nc,NetStream.DIRECT_CONNECTIONS);
               _nsing.addEventListener(NetStatusEvent.NET_STATUS,netStatus);
               _nsing.publish("mygame");
               _loc2_ = new Object();
               _loc2_.down = key;
               _loc2_.up = key;
               _loc2_.event = key;
               _nsing.client = _loc2_;
               $openFunction();
               break;
            case "NetGroup.Connect.Success":
               _loc3_ = $connectNum + 1;
               $connectNum = _loc3_;
               toFunction(param1);
               break;
            case "NetGroup.Connect.Closed":
               $connectNum = 0;
               toFunction(param1);
               break;
            case "NetGroup.Neighbor.Connect":
               _loc3_ = $connectNum + 1;
               $connectNum = _loc3_;
               toFunction(param1);
               break;
            case "NetGroup.Posting.Notify":
               toFunction(param1);
               break;
            case "NetGroup.Neighbor.Disconnect":
               _loc3_ = $connectNum - 1;
               $connectNum = _loc3_;
               toFunction(param1);
               break;
            case "NetStream.Connect.Success":
               ComponentResourcesManage.$stage.$box.$api.addShow("创建房间","有伙伴连接到你的纹章",true);
         }
         $text.setText = "在线人数：" + $connectNum;
      }
      
      private static function toFunction(param1:NetStatusEvent) : void
      {
         if($funciton !== null)
         {
            $funciton(param1,$Group);
         }
      }
      
      public static function sendPlayGame(param1:Object) : void
      {
      }
      
      public static function closeGroup() : void
      {
         if(_ns)
         {
            _ns.close();
         }
         if($nc)
         {
            $nc.close();
         }
         $nc = null;
         _ns = null;
         $connectNum = 0;
      }
      
      public static function connect(param1:String, param2:Function) : void
      {
         $funciton = param2;
         if(_ns)
         {
            _ns.close();
            _ns = null;
         }
         _ns = new NetStream($nc,param1);
         _ns.addEventListener(NetStatusEvent.NET_STATUS,netStatuEvent);
         _ns.play("mygame");
         var _loc3_:* = new Object();
         _loc3_.down = key;
         _loc3_.up = key;
         _loc3_.event = key;
         _ns.client = _loc3_;
      }
      
      public static function key(param1:String, param2:int, param3:Object) : void
      {
         $funciton(param1,param2,param3);
      }
      
      public static function send(param1:String, param2:String, param3:int, param4:Object = null) : *
      {
         var _loc5_:* = null;
         if(_nsing)
         {
            if(ComponentResourcesManage.$word)
            {
               _loc5_ = ComponentResourcesManage.$word.$elementsOb["role" + SystemP2P.$FightIP];
               if(!param4)
               {
                  param4 = new Object();
               }
               if(_loc5_)
               {
                  param4.point = new Point(_loc5_.$x,_loc5_.$y);
               }
            }
            _nsing.send(param1,param2,param3,param4);
         }
      }
      
      private static function netStatuEvent(param1:NetStatusEvent) : void
      {
         ComponentResourcesManage.$stage.$box.$api.addShow("创建房间","创建成功",true);
      }
      
      public static function show(param1:Object) : void
      {
         param1.addChild($text);
         $text.x = param1.stage.stageWidth - 100;
         $text.y = param1.stage.stageHeight - 24;
      }
   }
}

