package person.frame.apps
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class FrameAlpha
   {
      
      private static var $bitmap:DisplayObject;
      
      private static var $function:Function;
      
      private static var $runing:int = 80;
      
      private static var $boolean:Boolean = false;
      
      public function FrameAlpha()
      {
         super();
      }
      
      public static function play(param1:DisplayObject, param2:Function, param3:int = 80) : void
      {
         $function = param2;
         $bitmap = param1;
         $bitmap.alpha = 0;
         $runing = param3;
         $boolean = false;
         $bitmap.addEventListener(Event.ENTER_FRAME,Frame);
      }
      
      private static function Frame(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if(!$boolean && $bitmap.alpha < 1)
         {
            $bitmap.alpha += 0.02;
         }
         else if($runing > 0)
         {
            _loc2_ = $runing - 1;
            $runing = _loc2_;
         }
         else if(!$boolean)
         {
            $boolean = true;
         }
         else if($boolean && $bitmap.alpha > 0)
         {
            $bitmap.alpha -= 0.02;
         }
         else
         {
            stop();
         }
      }
      
      public static function stop() : void
      {
         $bitmap.parent.removeChild($bitmap);
         $bitmap.removeEventListener(Event.ENTER_FRAME,Frame);
         $function();
      }
   }
}

