package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import flash.geom.Point;
   
   public class SkillHongFa extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillHongFa()
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
            case "HF/Z":
               return 35;
            default:
               return 25;
         }
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : *
      {
         var _loc3_:Point = null;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "HF/O":
                  if(param2.$frameInt > 6)
                  {
                     --param2.$gox;
                  }
                  break;
               case "ZZ/B":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  if(Math.random() * 10 > 9)
                  {
                     param1.$god = Math.random() * 5;
                  }
                  else
                  {
                     param1.$god = 0;
                  }
                  break;
               case "ZZ/D":
                  param2.$x = param1.$x + 35 * param1.$scaleX;
                  param2.$y = param1.$y - 10;
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "HF/K":
               return -15;
            case "HF/Z":
            case "HF/O":
               return 3;
            case "HF/D":
            case "HF/N":
               return 0;
            case "HF/S":
            case "HF/C":
               return 15;
            case "YH/Y3":
               return 0;
            default:
               return 20;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "HF/O":
               return 6;
            case "HF/S":
               return 2;
            case "HF/K":
               return 10;
            case "HF/D":
            case "YH/Y3":
               return 4;
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

