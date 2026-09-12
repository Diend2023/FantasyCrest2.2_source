package SystemComponent.Word.Skill
{
   import SystemAPI.SkillMath;
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   import flash.geom.Point;
   
   public class SkillHeiMao extends SkillMath
   {
      
      public static var $rigid:int = 30;
      
      public function SkillHeiMao()
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
            case "HM/L":
               return 100;
            case "HM/Y":
            case "DB/D":
               return 70;
            case "ZZ/Y":
               return 340;
            case "PJ/G":
               if(param1.$role.$frameString == "千鸟")
               {
                  return 250;
               }
               return 25;
               break;
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
               case "HM/Y":
                  param2.$x = param1.$x;
                  param2.$y = param1.$y;
               case "DaJi1":
                  if(param2.$frameInt == 4)
                  {
                     param2.$gox = 0;
                  }
            }
         }
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "BJR/S":
               return 0;
            case "HM/L":
               return 5;
            case "LongZhanYi":
            case "DB/D":
               return 3;
            case "DaJi1":
               if(param2.$frameString == "三连枪")
               {
                  return 0;
               }
         }
         return 20;
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         switch(param3.$skillType)
         {
            case "HM/Y":
               return 5;
            case "LongZhanYi":
               return 3;
            case "DaJi1":
               return -2;
            default:
               return 2;
         }
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
         switch(param3.$skillType)
         {
            case "MR/LuoXuanWan":
            case "DaJi1":
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

