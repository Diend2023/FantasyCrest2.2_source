package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   
   public class SkillLuFei extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillLuFei()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return "skill1";
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "LD/B":
               return 35;
            case "LF/H":
               return 10;
            case "TuoZhan":
               return 200;
            default:
               return 30;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         switch(param2.$skillType)
         {
            case "Buff1":
               param2.$x = param1.$x;
               param2.$y = param1.$y;
               param1.stoic = 0.2;
         }
         switch(param2.$skillType)
         {
            case "BaoFa1":
               param2.$fps = 1;
               break;
            case "XuanJi":
               if(param2.$frameInt == 6 && param1.$frameInt < 7)
               {
                  param2.$frameInt = 4;
               }
               RoleMathType.skillType(param1,param2,"龍卷閃．旋");
               break;
            case "Xuan":
               if(param2.$frameInt == 6 && param1.$frameInt < 7)
               {
                  param2.$frameInt = 4;
               }
               RoleMathType.skillType(param1,param2,"龍卷閃．嵐");
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "LF/Q":
               return 1;
            case "LD/X":
            case "LF/H":
               return 1;
            case "LD/B":
               return 10;
            case "LD/T":
               return 20;
            case "LD/H":
               if(param3.$frameInt < 7)
               {
                  return 10;
               }
               return -10;
               break;
            default:
               return 10;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "LF/H":
            case "LD/X":
               return 1;
            case "LF/Q":
               return 10;
            case "LD/B":
               return 0;
            case "LD/T":
            case "LD/C":
            case "LD/H":
               if(param3.$frameInt < 7)
               {
                  return 1;
               }
               return 5;
               break;
            default:
               return 10;
         }
      }
   }
}

