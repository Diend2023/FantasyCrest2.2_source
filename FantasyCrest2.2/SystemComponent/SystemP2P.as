package SystemComponent
{
   import SystemEye.*;
   import eye.Draw.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.net.*;
   import person.p2p.*;
   import person.text.*;
   
   public class SystemP2P
   {
      
      private static var $text1:TextWord;
      
      private static var $textRe:TextWord;
      
      private static var $textOpp:TextWord;
      
      public static var $FightOK:Boolean = false;
      
      public static var $FightIP:int = -1;
      
      private static var $mode:String = "ROOT";
      
      private static var $privilege:String = "Tourist";
      
      public static var $frameString:String = "";
      
      public static var $gameLoadOK:Boolean = false;
      
      public function SystemP2P()
      {
         super();
      }
      
      public static function toSystemP2P() : void
      {
         ComponentResourcesManage.askResources("Button","ADD",{
            "event":add,
            "text":BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"),XML(DataStorage.readText("Menu")).SubTexture[6]),
            "array":BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"),XML(DataStorage.readText("buttonUI2")))
         });
         ComponentResourcesManage.askResources("Button","EXIT",{
            "event":exit,
            "text":BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"),XML(DataStorage.readText("Menu")).SubTexture[9]),
            "array":BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"),XML(DataStorage.readText("buttonUI2")))
         });
         ComponentResourcesManage.setXY("ADD",new Point(SystemState.$stageWidth / 2 + 239 / 3,50));
         ComponentResourcesManage.setXY("EXIT",new Point(SystemState.$stageWidth / 2 + 239 / 3,100));
         ComponentResourcesManage.$Ob["Text1"] = new TextWord("",new Point(50,50),new Rectangle(0,0,360,24));
         ComponentResourcesManage.$Ob["Text2"] = new TextWord(P2POnline.getNearID(),new Point(50,80),new Rectangle(0,0,360,24));
         ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text1"]);
         ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text2"]);
         $text1 = ComponentResourcesManage.$Ob["Text1"];
         $text1.setColor = 16711680;
         $text1.setInput();
         ComponentResourcesManage.$Ob["Text2"].setColor = 16711680;
         ComponentResourcesManage.$Ob["Text2"].setInput();
      }
      
      private static function toRoom() : void
      {
         ComponentResourcesManage.CG();
         ComponentResourcesManage.askResources("Button","RE",{
            "event":reGame,
            "text":BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"),XML(DataStorage.readText("Menu")).SubTexture[10]),
            "array":BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"),XML(DataStorage.readText("buttonUI2")))
         });
         ComponentResourcesManage.setXY("RE",new Point(SystemState.$stageWidth / 2 + 239 / 3,50));
         ComponentResourcesManage.askResources("Button","EXIT",{
            "event":exit,
            "text":BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"),XML(DataStorage.readText("Menu")).SubTexture[8]),
            "array":BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"),XML(DataStorage.readText("buttonUI2")))
         });
         ComponentResourcesManage.setXY("EXIT",new Point(SystemState.$stageWidth / 2 + 239 / 3,100));
         ComponentResourcesManage.$Ob["Text1"] = new TextWord("test",new Point(50,50),new Rectangle(0,0,100,24));
         ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text1"]);
         $text1 = ComponentResourcesManage.$Ob["Text1"];
         $text1.setColor = 16711680;
         ComponentResourcesManage.$Ob["Text2"] = new TextWord("未准备",new Point(50,100),new Rectangle(0,0,100,24));
         ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text2"]);
         $textRe = ComponentResourcesManage.$Ob["Text2"];
         $textRe.setColor = 16711680;
         ComponentResourcesManage.$Ob["Text3"] = new TextWord("未准备",new Point(50,150),new Rectangle(0,0,400,24));
         ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text3"]);
         $textOpp = ComponentResourcesManage.$Ob["Text3"];
         $textOpp.setColor = 16711680;
      }
      
      private static function reGame() : void
      {
         $FightOK = !$FightOK;
         if($FightOK)
         {
            $textRe.setText = "已准备";
         }
         else
         {
            $textRe.setText = "未准备";
         }
         var _loc1_:* = new Object();
         _loc1_.type = "FightOK";
         _loc1_.bool = $FightOK;
         _loc1_.string = "123" + Math.random();
         P2POnline.sendPlayGame(_loc1_);
      }
      
      private static function exit() : void
      {
         P2POnline.closeGroup();
         ComponentResourcesManage.CG();
         ComponentResourcesManage.$stage.init();
      }
      
      private static function add() : void
      {
         if(!SystemP2P.$FightOK)
         {
            $mode = "God";
            P2POnline.connect($text1.text,key);
            ComponentResourcesManage.$stage.$box.$api.addShow("创建房间","正在创建...",true);
         }
      }
      
      private static function join() : void
      {
         $mode = "Add";
         P2POnline.connect($text1.text,key);
         ComponentResourcesManage.$stage.$box.$api.addShow("加入房间","正在加入...",true);
      }
      
      private static function key(param1:String, param2:int, param3:*) : *
      {
         var _loc4_:* = null;
         if(param1 == "start" || param1 == "start too")
         {
            if(param1 == "start too")
            {
               SystemEvent.Play();
            }
            else if(SystemP2P.$gameLoadOK)
            {
               P2POnline.send("down","start too",0);
            }
            else
            {
               SystemP2P.$gameLoadOK = true;
               P2POnline.send("down","start",0);
            }
            return;
         }
         if(param1 == "play" || param1 == "play too")
         {
            SystemP2P.$FightIP = 1;
            if(param1 == "play")
            {
               SystemP2P.$FightIP = 2;
               P2POnline.send("down","play too",71);
            }
            PlayGame();
            return;
         }
         if(ComponentResourcesManage.$Ob["Text1"])
         {
            ComponentResourcesManage.$Ob["Text1"].setText = String(param2);
         }
         else if(ComponentResourcesManage.$word)
         {
            if(ComponentResourcesManage.$word.$elementsOb["role" + String(SystemP2P.$FightIP == 1 ? 2 : 1)])
            {
               _loc4_ = ComponentResourcesManage.$word.$elementsOb["role" + String(SystemP2P.$FightIP == 1 ? 2 : 1)];
               if(param1 == "down")
               {
                  _loc4_.toDown(param2);
               }
               else
               {
                  _loc4_.toUp(param2);
               }
               if(param3)
               {
                  _loc4_.$x = param3.point.x;
                  _loc4_.$y = param3.point.y;
               }
            }
         }
      }
      
      private static function returnData(param1:NetStatusEvent, param2:NetGroup) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(param1.info.code == "NetGroup.Connect.Success")
         {
            switch($mode)
            {
               case "God":
                  if(param2.estimatedMemberCount >= 3)
                  {
                     $privilege = "Tourist";
                     $mode = "Root";
                     param2.close();
                     ComponentResourcesManage.$stage.$box.$api.addShow("创建房间","创建失败，该房间不允许创建",true);
                  }
                  else
                  {
                     toRoom();
                     $privilege = "Master";
                     ComponentResourcesManage.$stage.$box.$api.addShow("创建房间","创建成功，你是这房间的房主",true);
                  }
                  break;
               case "Add":
                  if(param2.estimatedMemberCount == 1 || param2.estimatedMemberCount >= 3)
                  {
                     $privilege = "Tourist";
                     $mode = "Root";
                     param2.close();
                     ComponentResourcesManage.$stage.$box.$api.addShow("加入房间","房间不存在",true);
                  }
                  else
                  {
                     toRoom();
                     $privilege = "Guest";
                     ComponentResourcesManage.$stage.$box.$api.addShow("加入房间","加入成功，游戏快乐",true);
                  }
            }
         }
         else if(param1.info.code == "NetGroup.Neighbor.Connect")
         {
            $text1.setText = "在线人数：" + P2POnline.$connectNum;
            $text1.setColor = 16711680;
         }
         else if(param1.info.code == "NetGroup.Posting.Notify")
         {
            if(param1.info.message.type == "FightOK")
            {
               _loc3_ = "";
               if(param1.info.message.bool)
               {
                  _loc3_ = "对手已经准备好了";
                  $textOpp.setText = "对手码：" + param1.info.message.sender;
                  if($FightOK)
                  {
                     _loc4_ = new Object();
                     _loc4_.type = "FightOpen";
                     P2POnline.sendPlayGame(_loc4_);
                     $FightIP = 1;
                     PlayGame();
                  }
               }
               else
               {
                  _loc3_ = "对手取消了准备";
                  $textOpp.setText = "";
               }
               ComponentResourcesManage.$stage.$box.$api.addShow("消息",_loc3_,true);
            }
            else if(param1.info.message.type == "FightOpen")
            {
               $FightIP = 2;
               PlayGame();
            }
            else if(param1.info.message.type == "GameRole")
            {
               _loc5_ = ComponentResourcesManage.$word.$elementsOb[param1.info.message.name];
               _loc5_.$fx = param1.info.message.point.x;
               _loc5_.$fy = param1.info.message.point.y;
               _loc5_.$scaleX = param1.info.message.$scaleX;
               if(Boolean(param1.info.message.$hitBoolean) && _loc5_.$frameString !== param1.info.message.frameString)
               {
                  _loc5_.stopSkill();
                  _loc5_.hitString = param1.info.message.frameString;
               }
               else
               {
                  _loc5_.$frameString = param1.info.message.frameString;
               }
               _loc5_.$down = param1.info.message.$down;
               _loc5_.$up = param1.info.message.$up;
               _loc5_.$left = param1.info.message.left;
               _loc5_.$right = param1.info.message.right;
            }
            else if(param1.info.message.type == "GameTrue")
            {
               if($gameLoadOK)
               {
                  P2POnline.sendPlayGame({"type":"PlayGame"});
                  SystemEvent.Play();
               }
            }
            else if(param1.info.message.type == "PlayGame")
            {
               SystemEvent.Play();
            }
         }
         else if(param1.info.code == "NetGroup.Neighbor.Disconnect")
         {
            $text1.setText = "在线人数：" + P2POnline.$connectNum;
            $text1.setColor = 16711680;
         }
      }
      
      private static function PlayGame() : void
      {
         if(!SystemP2P.$FightOK)
         {
            SystemP2P.$FightOK = true;
            SystemLoadType.loadMAP(GameData.$mapArray[1]);
            GameData.$roleSelectArray = ["LaoDie","JianXin"];
            SystemEvent.select({"name":GameData.$roleSelectArray[0]});
         }
      }
   }
}

