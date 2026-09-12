package SystemEye
{
   public class GameScore
   {
      
      private static var _score:cint = new cint();
      
      private static var _add:int = 0;
      
      private static var _fight:int = 0;
      
      public function GameScore()
      {
         super();
      }
      
      public static function setFight(param1:int) : void
      {
         _fight = param1;
      }
      
      public static function getFight() : int
      {
         return _fight;
      }
      
      public static function initScore() : void
      {
         _score.value = 0;
         _add = 0;
      }
      
      public static function addScore(param1:int) : void
      {
         _add += param1;
      }
      
      public static function getScore() : int
      {
         var _loc1_:* = 0;
         if(GameData.$mode == "1PALL")
         {
            switch(GameData.$lv)
            {
               case 95:
                  _loc1_ = 0;
                  break;
               case 80:
                  _loc1_ = 0.1;
                  break;
               case 65:
                  _loc1_ = 0.2;
                  break;
               case 50:
                  _loc1_ = 0.3;
                  break;
               case 35:
                  _loc1_ = 0.5;
            }
         }
         _loc1_ += 1;
         return _score.value * _loc1_;
      }
      
      public static function getNoneScore() : int
      {
         return _score.value;
      }
      
      public static function flush() : void
      {
         _score.value += _add;
         _add = 0;
      }
      
      public static function init() : void
      {
         _add = 0;
      }
      
      public static function submit(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = param1;
      }
   }
}

