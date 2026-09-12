package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.SystemMucisPlay;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class XiaNa
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function XiaNa()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/xiana.png","photo","XiaNa");
         SystemLoading.addTask("File/indexFile/img/role/xiana.xml","text","XiaNa");
         SystemLoadType.loadRoleSkillData("XN/C");
         SystemLoadType.loadRoleSkillData("XN/R");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("XN/X");
         SystemLoadType.loadRoleSkillData("XN/K");
         SystemLoadType.loadRoleSkillData("XN/Z");
         SystemLoadType.loadRoleSkillData("XN/Y");
         SystemLoadType.loadRoleSkillData("XN/BG");
         SystemLoadType.loadRoleSkillData("XN/S");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("XN/C1");
         SystemLoadType.loadRoleSkillData("XN/C2");
         var _loc1_:int = 1;
         while(_loc1_ < 14)
         {
            SystemLoading.addTask("File/indexFile/sound/role/xiana/" + _loc1_ + ".mp3","sound","xiana_" + _loc1_);
            _loc1_++;
         }
         SystemLoading.addTask("File/indexFile/sound/role/ace/O1.mp3","sound","xiana_15");
         $mxx = $mxx.concat([10,10,1,10,10]);
         $mxx = $mxx.concat([0.3,0.3,0.3,0.3,0]);
         $mxx = $mxx.concat([0,0,0.2,0,0]);
         $mxx = $mxx.concat([1,1,1,1,1]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function init() : void
      {
         $ob["逆刃"] = {
            "cd":5,
            "w":70,
            "h":200,
            "s":"AA",
            "key":Keyboard.U,
            "g":"真红."
         };
         $ob["上挑"] = {
            "cd":3,
            "w":150,
            "s":"W",
            "key":Keyboard.U,
            "g":"真红.逆锋"
         };
         $ob["斩刃"] = {
            "cd":3,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"真红.横"
         };
         $ob["冲杀"] = {
            "cd":6,
            "w":450,
            "s":"AA",
            "key":Keyboard.I,
            "g":"闪灼"
         };
         $ob["烧伤斩"] = {
            "cd":6,
            "w":170,
            "s":"S",
            "key":Keyboard.I,
            "g":"贽殿遮那.壤碎"
         };
         $ob["破雷"] = {
            "cd":8,
            "mp":200,
            "w":50,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["下砍"] = {
            "cd":3,
            "mp":0,
            "w":200,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["二段击"] = {
            "cd":5,
            "w":170,
            "s":"",
            "key":Keyboard.U,
            "g":"真红.红莲二段击"
         };
         $ob["烈焰斩"] = {
            "cd":6,
            "w":150,
            "s":"",
            "key":Keyboard.I,
            "g":"贽殿遮那.横炎"
         };
         $ob["爆剑"] = {
            "cd":35,
            "mp":300,
            "w":550,
            "s":"",
            "key":Keyboard.O,
            "g":"断罪"
         };
         $ob["空刃"] = {
            "cd":5,
            "w":130,
            "h":100,
            "s":"",
            "k":true,
            "key":Keyboard.U,
            "g":"真红.天斩"
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["空中攻击"] = {
            "cd":0,
            "k":true,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         while(_loc4_ <= 1)
         {
            loop2:
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "W":
                        break;
                     case "S":
                        return "下砍";
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "W":
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "逆刃";
                     case "W":
                        return "上挑";
                     case "S":
                        return "斩刃";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "冲杀";
                     case "S":
                        return "烧伤斩";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                     case "S":
                        return "none";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
                  switch(_loc3_)
                  {
                     case "S":
                        return "none";
                  }
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         switch(param2)
         {
            case Keyboard.J:
               return "普通攻击";
            case Keyboard.K:
               return "none";
            case Keyboard.L:
               return "瞬步";
            case Keyboard.U:
               return "二段击";
            case Keyboard.I:
               return "烈焰斩";
            case Keyboard.O:
               return "爆剑";
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         while(_loc4_ <= 1)
         {
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "W":
                     case "S":
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                  }
                  break;
               case Keyboard.I:
                  break;
               case Keyboard.O:
                  break;
               case Keyboard.P:
                  return "none";
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         switch(param2)
         {
            case Keyboard.J:
               return "空中攻击";
            case Keyboard.K:
               return "none";
            case Keyboard.L:
               return "none";
            case Keyboard.U:
               return "空刃";
            case Keyboard.I:
            case Keyboard.O:
               break;
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.see = null;
         }
         switch(param1.$frameString)
         {
            case "二段击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,3,6);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XN/C1",
                     "type":"SkillXiaNa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  sound(7);
               }
               else if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/C2",
                     "type":"SkillXiaNa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  sound(8);
               }
               break;
            case "烧伤斩":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "colorBoolean":$mxx,
                     "ka":[1,10],
                     "name":"XN/S",
                     "type":"SkillXiaNa",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  sound(15);
               }
               break;
            case "爆剑":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "colorBoolean":$mxx,
                     "ka":[1,10],
                     "name":"XN/BG",
                     "type":"SkillXiaNa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 100,
                     "scaleX":param1.$scaleX * 2
                  });
                  sound(15);
                  sound(12);
               }
               break;
            case "烈焰斩":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "colorBoolean":$mxx,
                     "ka":[1,10],
                     "name":"XN/Y",
                     "type":"SkillXiaNa",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "斩刃":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "ka":[1,10],
                     "name":"XN/Z",
                     "type":"SkillXiaNa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  sound(4);
               }
               break;
            case "空刃":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/K",
                     "type":"SkillXiaNa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  sound(9);
               }
               break;
            case "下砍":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/X",
                     "type":"SkillXiaNa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  sound(7);
               }
               break;
            case "上挑":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/T",
                     "type":"SkillXiaNa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  sound(8);
               }
               break;
            case "逆刃":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,-8);
               if(param1.$frameInt == 0 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$scaleX = -param1.$scaleX;
                  sound(6);
               }
               else if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":2,
                     "ka":[1,10],
                     "name":"XN/R",
                     "type":"SkillXiaNa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1
                  });
               }
               else if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$scaleX = -param1.$scaleX;
               }
               break;
            case "冲杀":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,3,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,6,4);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.1;
                  param1.$fpsMath = 0;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XN/C",
                     "type":"SkillXiaNa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  sound(9);
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(1);
               }
               else if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(2);
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(2);
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(4);
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,24);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,11,4);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(1);
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(2);
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(3);
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      private static function sound(param1:int) : void
      {
         SystemMucisPlay.setMusic = "xiana_" + param1;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "木涟":
         }
      }
   }
}

