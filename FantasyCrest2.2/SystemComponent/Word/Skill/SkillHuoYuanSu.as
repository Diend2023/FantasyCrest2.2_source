package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import flash.geom.Point;
   
   public class SkillHuoYuanSu extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillHuoYuanSu()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return "AS/huo";
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         switch(param1.$skillType)
         {
            case "JL/Q":
               return 1;
            case "BJR/X":
               return 5;
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
         var _loc3_:Point = null;
         if(param2.bitmapData !== null)
         {
            switch(param2.$skillType)
            {
               case "AS/Z":
                  if(param2.$frameInt >= 7)
                  {
                     param2.$gox = 0;
                     param2.$goy = 0;
                  }
                  break;
               case "YanDi":
                  if(param2.$frameInt >= 13)
                  {
                     param2.$gox = 0;
                     param2.$goy = 0;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "JL/B":
               return 10;
            case "BJR/X":
               return 2;
            default:
               return 17;
         }
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "BJR/X":
               return 15;
            default:
               return 3;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "AS/D":
               param3.CG();
         }
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
         var _loc2_:String = param1.$skillType;
         switch(0)
         {
         }
      }
   }
}

