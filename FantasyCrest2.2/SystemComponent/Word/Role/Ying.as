package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.SystemMucisPlay;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.GameData;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class Ying
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function Ying()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/ying.png","photo","Ying");
         SystemLoading.addTask("File/indexFile/img/role/ying.xml","text","Ying");
         SystemLoadType.loadRoleSkillData("YueGuang");
         SystemLoadType.loadRoleSkillData("Y/Z");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("JX/D");
         SystemLoadType.loadRoleSkillData("BJR/J");
         SystemLoadType.loadRoleSkillData("BaDao");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("Y/Q");
         SystemLoadType.loadRoleSkillData("BJR/X");
         SystemLoadType.loadRoleSkillData("Y/B");
         SystemLoadType.loadRoleSkillData("LongShanQiang");
         var _loc1_:int = 1;
         while(_loc1_ < 17)
         {
            SystemLoading.addTask("File/indexFile/sound/role/ying/" + _loc1_ + ".mp3","sound","ying_" + _loc1_);
            _loc1_++;
         }
         $mxx = $mxx.concat([0,0,0.1,0.1,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,1,0,0.7,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,7);
      }
      
      public static function init() : void
      {
         $ob["火箭车"] = {
            "cd":3,
            "w":370,
            "h":200,
            "s":"W",
            "key":Keyboard.L,
            "g":"银.火箭车"
         };
         $ob["一字流"] = {
            "cd":5,
            "w":250,
            "s":"AA",
            "key":Keyboard.U,
            "g":"夜叉.突破斩"
         };
         $ob["崩山击"] = {
            "cd":6,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"夜叉.踏前斩"
         };
         $ob["炸弹"] = {
            "cd":6,
            "w":250,
            "s":"W",
            "key":Keyboard.U,
            "g":"JUSTWEE!!!"
         };
         $ob["回旋剑"] = {
            "cd":6,
            "w":270,
            "s":"AA",
            "key":Keyboard.I,
            "g":"洞爷湖.飞袭"
         };
         $ob["气功"] = {
            "cd":6,
            "mp":0,
            "w":450,
            "s":"SS",
            "key":Keyboard.I,
            "g":"巴西龟波气功"
         };
         $ob["工作中"] = {
            "cd":6,
            "w":350,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["乱舞"] = {
            "cd":7,
            "w":220,
            "s":"S",
            "key":Keyboard.I,
            "g":"夜叉.缭乱"
         };
         $ob["猛龙"] = {
            "cd":28,
            "mp":300,
            "w":350,
            "s":"A",
            "key":Keyboard.O,
            "g":"白夜叉乱舞",
            "n":"需要长按O才可发动四次攻击"
         };
         $ob["摩托斩"] = {
            "cd":28,
            "mp":300,
            "w":350,
            "s":"",
            "key":Keyboard.O,
            "g":"银.冲锋斩"
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["踢腿"] = {
            "cd":5,
            "w":100,
            "s":"",
            "key":Keyboard.U,
            "g":"突袭撩阴腿"
         };
         $ob["拔刀"] = {
            "cd":5,
            "w":250,
            "s":"",
            "key":Keyboard.I,
            "g":"夜叉.狱刀"
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
                     case "S":
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "W":
                        return "火箭车";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "一字流";
                     case "W":
                        return "炸弹";
                     case "S":
                        return "崩山击";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        param1.qz = 0;
                        return "回旋剑";
                     case "SS":
                        return "气功";
                     case "W":
                        return "工作中";
                     case "S":
                        return "乱舞";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "A":
                     case "D":
                        return "猛龙";
                     case "S":
                        return "火遁";
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
               return "踢腿";
            case Keyboard.I:
               return "拔刀";
            case Keyboard.O:
               return "摩托斩";
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
               return "雷搓";
            case Keyboard.I:
            case Keyboard.O:
               break;
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:int = 0;
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
            case "乱舞":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(11);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":0,
                     "name":"LongShanQiang",
                     "ka":[5,10],
                     "type":"SkillYing",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "回旋剑":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,6);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(13);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":16,
                     "name":"BJR/X",
                     "type":"SkillYing",
                     "fuck":3,
                     "time":80,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 0.6
                  });
               }
               break;
            case "气功":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,11,13,-6);
               if(param1.$frameInt == 11 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(15);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":24,
                     "ka":[5,10],
                     "name":"Y/Q",
                     "type":"SkillYing",
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "一字流":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,16);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,6,4);
               param1.$frameInt = Boolean(param1.hitGameRole) && param1.$frameInt < 7 ? 7 : param1.$frameInt;
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(16);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YiDaoZhan",
                     "type":"SkillYing",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "火箭车":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,4,-6);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,5,6,-24);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,7,8,-6);
               param1.stoic = 1;
               break;
            case "拔刀":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(12);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BaDao",
                     "type":"SkillYing",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y + 30,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "踢腿":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,12);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,6,3);
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(7);
               }
               break;
            case "摩托斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,13,16);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,14,15,6);
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(17);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":-16,
                     "ka":[2,10],
                     "name":"BJR/J",
                     "type":"SkillYing",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * -1.3
                  });
               }
               break;
            case "猛龙":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,8,8);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,9,10,24);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,12,13,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,16,17,-24);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,18,18,-3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,20,21,24);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,22,23,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,25,27,-8);
               param1.$ob.BUFFFuck = 50;
               if(param1.$frameInt == 1)
               {
                  param1.stoic = 1;
               }
               if(param1.$frameInt < 8 && Boolean(param1.hitGameRole))
               {
                  param1.$frameInt = 8;
               }
               if((param1.$frameInt == 9 || param1.$frameInt == 16 || param1.$frameInt == 20) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(13);
                  _loc2_ = (param1.$frameInt == 16 ? -1 : 1) * param1.$scaleX;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"shun",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":_loc2_ * 1
                  });
               }
               if(param1.$frameInt == 27 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(14);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"JX/D",
                     "type":"SkillYing",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 55 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "崩山击":
               param1.$jumpBoolean = param1.$frameInt > 3 && param1.$frameInt < 8;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,7,6);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,5,-8);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,6,8,8);
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(9);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"JX/D",
                     "type":"SkillYing",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 55 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "炸弹":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "blendMode":BlendMode.NORMAL,
                     "name":"Y/Z",
                     "type":"SkillYing",
                     "fuck":0,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x - 25 * param1.$scaleX,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(7);
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
                  sound(7);
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(8);
               }
               else if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(9);
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      private static function sound(param1:int) : void
      {
         SystemMucisPlay.setMusic = "ying_" + param1;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "踢腿":
               GameData.$KaTime = 10;
         }
      }
   }
}

