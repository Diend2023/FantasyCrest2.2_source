package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import flash.geom.Point;
   
   public class SkillShuangDao extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillShuangDao()
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
            case "NZ/B":
               return 130;
            case "NZ/Y":
               return 40;
            case "SuChuan":
               return 350;
            case "NZ/H":
               return 5;
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
               case "SD/H":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "SD/G":
               return 0;
            case "SD/F":
               return 5;
            case "SD/H":
               return 1;
            case "DiBao":
               return 25;
            case "BJR/J":
               return 15;
            case "GDJ/S":
               return 20;
            default:
               return 10;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "SD/H":
               return 12;
            case "GDJ/Z":
            case "BJR/F":
               return -6;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "SD/H":
               param2.$x = param1.$x + 40 * param1.$scaleX;
               param2.$y = param1.$y;
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

