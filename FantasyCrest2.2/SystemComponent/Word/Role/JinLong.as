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
   
   public class JinLong
   {
      
      public static var $ob:Object = new Object();
      
      public static var matrix:Array = new Array();
      
      public function JinLong()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["护风"] = {
            "cd":6,
            "mp":100,
            "w":60,
            "s":"S",
            "key":Keyboard.U,
            "g":"护风"
         };
         $ob["火焰"] = {
            "cd":6,
            "mp":100,
            "w":60,
            "h":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"焰陨"
         };
         $ob["暗刃"] = {
            "cd":8,
            "mp":100,
            "w":150,
            "s":"W",
            "key":Keyboard.I,
            "g":"暗刃"
         };
         $ob["连爪"] = {
            "cd":8,
            "mp":100,
            "w":80,
            "s":"S",
            "key":Keyboard.I,
            "g":"龙铁爪"
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":500,
            "s":"",
            "key":Keyboard.L
         };
         $ob["光芒"] = {
            "cd":20,
            "w":1000,
            "s":"",
            "key":Keyboard.P,
            "g":"光之护佑",
            "g":"快速回复SP"
         };
         $ob["雷电"] = {
            "cd":12,
            "mp":100,
            "w":400,
            "h":400,
            "s":"",
            "key":Keyboard.U,
            "g":"天雷.引"
         };
         $ob["大海"] = {
            "cd":6,
            "mp":100,
            "w":150,
            "s":"",
            "key":Keyboard.I,
            "g":"寒流"
         };
         $ob["暗涌"] = {
            "cd":25,
            "mp":200,
            "w":500,
            "s":"",
            "key":Keyboard.O,
            "g":"血魂暗堕破"
         };
         $ob["普通攻击"] = {
            "cd":1,
            "mp":20,
            "w":500,
            "s":"",
            "key":Keyboard.J
         };
      }
      
      public static function loadData() : void
      {
         matrix = matrix.concat([0,0,1,0,0]);
         matrix = matrix.concat([0,0,0.7,0,0]);
         matrix = matrix.concat([0,0,0,0,0]);
         matrix = matrix.concat([0,0,0,1,0]);
         SystemLoading.addTask("File/indexFile/img/role/jinlong.png","photo","JinLong");
         SystemLoading.addTask("File/indexFile/img/role/jinlong.xml","text","JinLong");
         SystemLoadType.loadRoleSkillData("JL/D");
         SystemLoadType.loadRoleSkillData("JL/B");
         SystemLoadType.loadRoleSkillData("JL/L");
         SystemLoadType.loadRoleSkillData("JL/S");
         SystemLoadType.loadRoleSkillData("JL/F");
         SystemLoadType.loadRoleSkillData("JL/H");
         SystemLoadType.loadRoleSkillData("JL/Q");
         SystemLoadType.loadRoleSkillData("JL/G");
         SystemLoadType.loadRoleSkillData("JL/Y");
         SystemLoadType.loadRoleSkillData("JL/A");
         SystemLoadType.loadRoleSkillData("JL/Z");
         SystemLoadType.loadRoleSkillData("JL/Qi");
         SystemLoadType.loadRoleSkillData("JL/LZ");
         SystemLoading.addTask("File/indexFile/sound/role/jinlong/ds_ancient.mp3","sound","jinlong_ds_ancient");
         SystemLoading.addTask("File/indexFile/sound/role/jinlong/ds_atk_01.mp3","sound","jinlong_ds_atk_01");
         SystemLoading.addTask("File/indexFile/sound/role/jinlong/ds_atk_02.mp3","sound","jinlong_ds_atk_02");
         SystemLoading.addTask("File/indexFile/sound/role/jinlong/ds_atk_07.mp3","sound","jinlong_ds_atk_07");
         SystemLoading.addTask("File/indexFile/sound/role/jinlong/ds_bal2.mp3","sound","jinlong_ds_bal2");
         SystemLoading.addTask("File/indexFile/sound/role/jinlong/ds_chargecrash.mp3","sound","jinlong_ds_chargecrash");
         SystemLoading.addTask("File/indexFile/sound/role/jinlong/ds_gue_01.mp3","sound","jinlong_ds_gue_01");
         SystemLoading.addTask("File/indexFile/sound/role/jinlong/ds_gue_02.mp3","sound","jinlong_ds_gue_02");
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
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "护风";
                     case "W":
                        return "火焰";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "暗刃";
                     case "S":
                        return "连爪";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                  }
                  break;
               case Keyboard.P:
                  return "光芒";
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
               break;
            case Keyboard.U:
               return "雷电";
            case Keyboard.I:
               return "大海";
            case Keyboard.O:
               return "暗涌";
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
         RoleMathType.setSpeed(param1,4);
         param1.$ob.aimode = "K";
         if(param1.$jumpForFuckBoolean)
         {
            param1.$mode = "D";
         }
         else
         {
            param1.$mode = "K";
         }
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:Array = null;
         if(param1.$frameInt == 0)
         {
            param1.$ob.see = null;
         }
         else if(param1.$ob.see is SystemGameRole)
         {
            param1.$ob.see.$jumpNumMath = 0;
         }
         switch(param1.$frameString)
         {
            case "连爪":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "name":"JL/LZ",
                     "type":"SkillJinLong",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 50 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "暗涌":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"JL/Qi",
                     "type":"SkillJinLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "ka":[1,10],
                     "name":"JL/Z",
                     "type":"SkillJinLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "暗刃":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "ka":[1,10],
                     "name":"JL/A",
                     "type":"SkillJinLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "光芒":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"JL/Y",
                     "type":"SkillJinLong",
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"JL/G",
                     "type":"SkillJinLong",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y - 30,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "火焰":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "goy":-4,
                     "name":"JL/Q",
                     "type":"SkillJinLong",
                     "fuck":999,
                     "time":50,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "大海":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"JL/H",
                     "type":"SkillJinLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "护风":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"JL/F",
                     "type":"SkillJinLong",
                     "fuck":999,
                     "time":20,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "雷电":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc2_ = param1.hitRoleAndSkill(400,true);
                  param1.$ob.x = _loc2_[0].$x;
                  param1.$ob.y = _loc2_[0].$y;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "ka":[4,10],
                     "name":"JL/S",
                     "type":"SkillJinLong",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "name":"JL/L",
                     "type":"SkillJinLong",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$ob.x,
                     "y":param1.$ob.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "普通攻击":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":4,
                     "name":"JL/D",
                     "type":"SkillJinLong",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 20 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.Speed * 4);
               RoleMathType.alphaFrame(param1);
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

