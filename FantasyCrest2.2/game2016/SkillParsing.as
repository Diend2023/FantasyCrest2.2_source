package game2016
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.Word.SkillShow;
   
   public class SkillParsing
   {
      
      public function SkillParsing()
      {
         super();
      }
      
      public static function $fightTarget(param1:SystemGameRole = null, param2:SkillShow = null) : String
      {
         return JianTX;
      }
      
      public static function get JianTX() : String
      {
         return "JIAN" + String(int(Math.random() * 4 + 1));
      }
      
      public static function Hrut(param1:SkillShow = null) : int
      {
         return 0;
      }
      
      public static function MHrut(param1:SkillShow = null) : Number
      {
         return 1;
      }
      
      public static function Buff(param1:SystemGameRole, param2:SkillShow) : void
      {
      }
      
      public static function Y(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         return 0;
      }
      
      public static function X(param1:int, param2:SystemGameRole = null, param3:SkillShow = null) : int
      {
         return 0;
      }
      
      public static function hitFight(param1:SystemGameRole, param2:SystemGameRole, param3:SkillShow) : void
      {
      }
      
      public static function CGSkill(param1:SkillShow) : void
      {
      }
   }
}

