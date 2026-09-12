package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import flash.geom.Point;
   
   public class SkillShuiShu extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillShuiShu()
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
            case "SB/D":
               return 470;
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
               case "TuLongShan":
                  param2.$gox -= param2.$gox > 0 ? 1 : 0;
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "SB/D":
               return -6;
            case "TuLongShan":
               return 0;
            case "PiFeng":
               return 8;
            case "XN/T":
            case "QPL/D":
            case "XN/C":
               return 10;
            case "XN/X":
               return -15;
            case "XN/K":
               if(param2.$frameInt >= 11)
               {
                  return 15;
               }
         }
         return 5;
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "XN/T":
               return 12;
            case "SB/D":
            case "BJR/S":
               return 16;
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

