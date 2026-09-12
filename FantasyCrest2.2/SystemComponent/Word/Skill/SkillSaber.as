package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import flash.geom.Point;
   
   public class SkillSaber extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillSaber()
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
            case "SuChuan":
               return 100;
            case "S/R":
               return 40;
            case "S/G":
               return 100;
            case "S/C":
               return -10;
            default:
               return 40;
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
               case "LD/Q":
                  if(param2.$frameInt >= 5)
                  {
                     param2.$gox = 0;
                  }
                  break;
               case "Buff1":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
                  if(param2.$time <= 10)
                  {
                     param1.$fang = param1.$ob.fang;
                  }
                  else
                  {
                     param1.$fang = 0.5;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "S/R":
            case "S/D":
               return 5;
            case "S/C":
            case "fangYu":
               return 0;
            case "SuChuan":
               return 8;
            case "LD/Q":
            case "S/Z":
               return 3;
            default:
               return 20;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "S/C":
               return -2;
            case "S/R":
               return 6;
            case "S/D":
               return 12;
            case "S/S":
               return 3;
            case "LD/Q":
               return param3.$frameInt >= 5 ? 1 : 8;
            case "S/Z":
               return 13;
            default:
               return 8;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "S/C":
               param2.$y += 8;
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

