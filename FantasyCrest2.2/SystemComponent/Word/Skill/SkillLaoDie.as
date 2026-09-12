package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   
   public class SkillLaoDie extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillLaoDie()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return JianTX;
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "LD/B":
               return -15;
            case "BaDao":
               return 60;
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
               if(Math.random() * 10 > 9)
               {
                  param1.stoic = 0.2;
               }
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
            case "LD/Q":
               return 1;
            case "LD/X":
               return 10;
            case "LD/B":
               if(param2.$frameString == "霸王色[白]")
               {
                  return 10;
               }
               if(param2.$frameInt > 12)
               {
                  return 0;
               }
               return 0;
               break;
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
            case "LD/X":
               return 1;
            case "LD/L":
               return 15;
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
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "LD/B":
               param2.$fuz = 0;
         }
      }
   }
}

