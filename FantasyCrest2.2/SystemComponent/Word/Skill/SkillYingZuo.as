package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   
   public class SkillYingZuo extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillYingZuo()
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
            case "LongShan":
               return 5;
            default:
               return 20;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         if(param1.$role.$target == "JinMing")
         {
            return 0.7;
         }
         return 0.5;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "ZZ/D":
               case "ZZ/L":
               case "ZZ/Q":
                  param2.$x = param1.$x + 35 * param1.$scaleX;
                  param2.$y = param1.$y;
                  break;
               case "ShangZhan":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  if(param2.$skillType == "ShanZhan")
                  {
                     RoleMathType.skillType(param1,param2,"普通攻击·雷挑");
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "GJS/C":
            case "JiuLongShan":
               return 5;
            case "ZZ/L":
            case "ZZ/Q":
            case "ZZ/D":
            case "LongShan":
            case "LingDian":
            case "JL/B":
               return 0;
            default:
               return 14;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "JL/B":
            case "LingDian":
               return 0;
            case "JM/W":
               if(param2.$frameString == "六仙珠")
               {
                  return 3;
               }
               return 0;
               break;
            case "MR/JuJi2":
               return 9;
            case "PJ/G":
               if(param3.$role.$frameString == "千鸟")
               {
                  return 12;
               }
               return 2;
               break;
            case "ZZ/D":
               return 12;
            case "PJ/D":
               return 10;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "ZZ/D":
               param2.$x = param1.$x + 40 * param1.$scaleX;
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         switch(param1.$skillType)
         {
            case "NZ/HBuff":
               param1.$role.$ob.lei = false;
         }
      }
   }
}

