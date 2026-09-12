package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class GuaiYiLong
   {
      
      public static var $ob:Object = new Object();
      
      public static var matrix:Array = new Array();
      
      public function GuaiYiLong()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["双流斩"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.U
         };
         $ob["气场"] = {
            "cd":6,
            "w":100,
            "s":"S",
            "key":Keyboard.U,
            "g":"龙震"
         };
         $ob["空镰"] = {
            "cd":6,
            "w":100,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["尾刀"] = {
            "cd":3,
            "w":100,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["毒尾"] = {
            "cd":20,
            "mp":200,
            "w":100,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["声波炮"] = {
            "cd":8,
            "w":100,
            "s":"",
            "key":Keyboard.I,
            "g":"龙吼波"
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":500,
            "s":"",
            "key":Keyboard.L
         };
         $ob["空中攻击"] = {
            "cd":2,
            "k":true,
            "h":100,
            "w":100,
            "s":"",
            "key":Keyboard.J
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":500,
            "s":"",
            "key":Keyboard.J
         };
      }
      
      public static function loadData() : void
      {
         matrix = matrix.concat([0,0,0.5,0,0]);
         matrix = matrix.concat([0,0,1,0,0]);
         matrix = matrix.concat([0,0,1,0,0]);
         matrix = matrix.concat([0,0,0,1,0]);
         SystemLoading.addTask("File/indexFile/img/role/guaiyilong.png","photo","GuaiYiLong");
         SystemLoading.addTask("File/indexFile/img/role/guaiyilong.xml","text","GuaiYiLong");
         SystemLoadType.loadRoleSkillData("JX/D");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("DiBao");
         SystemLoadType.loadRoleSkillData("SiQi");
         SystemLoadType.loadRoleSkillData("LanGuang");
         SystemLoadType.loadRoleSkillData("QPL/W");
         SystemLoadType.loadRoleSkillData("QPL/D");
         SystemLoadType.loadRoleSkillData("XD/CongBao2");
         SystemLoading.addTask("File/indexFile/sound/role/guaiyilong/boom.mp3","sound","guaiyilong_boom");
         SystemLoading.addTask("File/indexFile/sound/role/guaiyilong/long.mp3","sound","guaiyilong_long");
         SystemLoading.addTask("File/indexFile/sound/role/guaiyilong/long2.mp3","sound","guaiyilong_long2");
         SystemLoading.addTask("File/indexFile/sound/role/guaiyilong/run.mp3","sound","guaiyilong_run");
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
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "S":
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "气场";
                     case "W":
                        return "空镰";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "尾刀";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "毒尾";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
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
               return "双流斩";
            case Keyboard.I:
               return "声波炮";
            default:
               return "none";
         }
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         while(_loc4_ <= 1)
         {
            switch(param2)
            {
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                  }
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         switch(param2)
         {
            case Keyboard.J:
               return "空中攻击";
            case Keyboard.U:
         }
         return "none";
      }
      
      public static function Hurt(param1:SystemGameRole) : int
      {
         switch(param1.$frameString)
         {
            case "死氣亂擊":
               return 10;
            default:
               return 20;
         }
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         RoleMathType.setSpeed(param1,7);
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         switch(param1.$frameString)
         {
            case "尾刀":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"QPL/D",
                     "type":"SkillGuaiYiLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "毒尾":
               param1.stoic = 0.2;
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"QPL/W",
                     "type":"SkillGuaiYiLong",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + Math.random() * 200 - 100,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"QPL/W",
                     "type":"SkillGuaiYiLong",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + Math.random() * 200 - 100,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"QPL/W",
                     "type":"SkillGuaiYiLong",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + Math.random() * 200 - 100,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"QPL/W",
                     "type":"SkillGuaiYiLong",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + Math.random() * 200 - 100,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "声波炮":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LanGuang",
                     "type":"SkillGuaiYiLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 60 * param1.$scaleX,
                     "y":param1.$bit.y - 18,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "气场":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$map.setZhen = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "name":"SiQi",
                     "type":"SkillGuaiYiLong",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空镰":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,10,param1.Speed);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,2,5,10);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,6,9,12);
               if(!param1.$jumpBoolean && param1.$frameInt < 10 && param1.$frameInt > 6)
               {
                  param1.$frameInt = 10;
               }
               else if(param1.$frameInt == 9)
               {
                  param1.$frameInt = 6;
               }
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DiBao",
                     "type":"SkillGuaiYiLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 100 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "双流斩":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YiDaoZhan",
                     "type":"SkillGuaiYiLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,24);
               RoleMathType.alphaFrame(param1);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,7,10);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,10,5);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,8,10,12);
               param1.$ob.kong = true;
               if(param1.$frameInt > 8)
               {
                  param1.$jumpBoolean = true;
               }
               break;
            case "空中攻击":
               param1.$jumpMath = 0;
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,0,7,12);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,7,7);
               if(!param1.$jumpBoolean && param1.$frameInt < 8)
               {
                  param1.$frameInt = 8;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"JX/D",
                     "type":"SkillGuaiYiLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 7)
               {
                  param1.$frameInt = 0;
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "查克拉˙伸手擊":
         }
      }
   }
}

