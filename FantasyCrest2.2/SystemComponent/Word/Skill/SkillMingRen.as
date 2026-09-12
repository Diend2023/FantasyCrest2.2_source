package SystemComponent.Word.Skill
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillMingRen
   {
      
      public static var $rigid:int = 5;
      
      public function SkillMingRen()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         switch(param2.$skillType)
         {
            case "BaGua":
               return "skill1";
            default:
               return "skill1";
         }
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "NiFeng":
            case "SiWei":
               return 0;
            case "NGJ/F":
               return -5;
            case "CiTu":
               return 70;
            case "MR/B":
               return 400;
            default:
               return 25;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 0.8;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         switch(param2.$skillType)
         {
            case "LuoXuanWan":
               if(!param1.$ob.yaohua && param2.$frameInt / 3 == int(param2.$frameInt / 3))
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NGJ/F",
                     "type":"SkillMingRen",
                     "gox":0,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param2.$x,
                     "y":param2.$y + Math.random() * 160,
                     "scaleX":param2.$scaleX * 0.7
                  });
               }
               break;
            case "MR/FS3":
               param2.$gox = param2.$frameInt >= 5 ? 3 : 0;
               break;
            case "MR/Q":
               param2.$x = param1.$x + 5 * param1.$scaleX;
               param2.$y = param1.$y;
               break;
            case "Buff2":
               param2.$x = param1.$x;
               param2.$y = param1.$y + 15;
               if(param1.$frameString == "跑步")
               {
                  param2.$x = param1.$x + 15 * param1.$scaleX;
               }
               if(Math.random() * 10 > 9.8)
               {
                  param1.stoic = 0.2;
               }
               param1.$ob["BUFFFuck"] = param1.$fuck * 1.5;
         }
         switch(param2.$skillType)
         {
            case "YuanFei":
               if(param2.$frameInt == 7)
               {
                  param2.$frameInt = 8;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"YuanBao",
                     "type":"SkillGangJi",
                     "gox":0,
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param2.$x,
                     "y":param2.$y,
                     "scaleX":param2.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "MR/F":
               param3.$time = 0;
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "TianJie":
            case "ChaKeLa":
               return 10;
            case "MR/FS3":
            case "MR/F":
            case "NGJ/F":
               return 0;
            case "MR/B":
               return 5;
            case "MR/Q":
               return param3.$hit >= 2 ? 5 : 0;
            case "SiWei":
            case "NiFeng":
            case "LuoXuanWan":
               return 4;
            case "JuanFeng":
               if(param3.$frameInt >= 12)
               {
                  return 15;
               }
               return 0;
               break;
            case "BaGua":
               return 0;
            default:
               return 18;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "MR/FS2":
            case "MR/FS":
               return 0;
            case "MR/Q":
               return param3.$hit >= 3 ? 12 : 10;
            case "CiTu":
               return -3;
            case "LuoXuanWan":
               return param2.$frameInt > 18 || param2.$frameString !== "朱玉螺旋丸" ? 12 : 2;
            case "BaGua":
               param2.$ob["BG"] = param3.$Diarray[0];
               return 0;
            default:
               return 3;
         }
      }
   }
}

