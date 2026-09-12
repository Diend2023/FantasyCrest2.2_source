package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   
   public class SkillYiHu extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillYiHu()
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
            case "ChaKeLa":
               return 0;
            case "BaDao":
               return 60;
            case "YH/M":
            case "TuoZhan":
               return 200;
            default:
               return 20;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         if(param1.$role.$target == "LvMao")
         {
            return 3.5;
         }
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         switch(param2.$skillType)
         {
            case "Buff1":
               param2.$x = param1.$x;
               param2.$y = param1.$y;
               if(param1.$ob.wanjie)
               {
                  param2.$time = 0;
               }
         }
         switch(param2.$skillType)
         {
            case "Buff1":
               param1.$ob.yueya = 0.5;
               break;
            case "LD/Q":
               if(param2.$frameInt == 6)
               {
                  param2.$gox = 0;
               }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "Y/Q":
               return 0;
            case "XN/C1":
            case "YH/Z1":
               if(param2.$frameString == "虚斩二段击" || param2.$frameString == "二刀流")
               {
                  return 3;
               }
            case "XN/R":
            case "YH/B":
               return 5;
            case "YH/H":
               return 22;
            case "YH/Y4":
               if(param2.$frameString == "二刀流")
               {
                  return 0;
               }
               return -6;
               break;
            case "YH/Y3":
            case "YH/Y":
            case "YH/G":
               if(param2.$frameString == "二刀流")
               {
                  return 5;
               }
               break;
            case "XN/C":
               break;
            case "YH/X":
               return 10;
            case "YH/D":
            case "JL/A":
               return 20;
            case "ChaKeLa":
               return 15;
            default:
               return 15;
         }
         return 0;
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "YH/G":
               return 3;
            case "XN/C1":
            case "YH/Z1":
               if(param2.$frameString == "二刀流")
               {
                  return -5;
               }
               break;
            case "XN/R":
               break;
            case "YH/S":
            case "YH/H":
            case "XN/Z":
               return 0;
            case "YH/B":
            case "YH/Y":
            case "YH/X":
               return 2;
            case "JL/A":
               return 3;
            case "ChaKeLa":
               return 1;
            default:
               return 5;
         }
         return -3;
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         switch(param1.$skillType)
         {
            case "Buff1":
               param1.$role.$ob.yueya = 0;
         }
      }
   }
}

