package org.superkaka.kakalib.debug
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class Fps
   {
      
      private static var _stats:Stats;
      
      private static var _target:Sprite;
      
      public function Fps()
      {
         super();
      }
      
      public static function setup(param1:Sprite) : void
      {
         _target = param1;
         _stats = new Stats();
         if(_target.stage != null)
         {
            start();
         }
         else
         {
            _target.addEventListener(Event.ADDED_TO_STAGE,start);
         }
      }
      
      public static function set visible(param1:Boolean) : void
      {
         if(param1)
         {
            _target.addChild(_stats);
            _stats.y = 500 - _stats.height;
         }
         else if(_stats.parent != null)
         {
            _stats.parent.removeChild(_stats);
         }
      }
      
      public static function get visible() : Boolean
      {
         return _target.contains(_stats);
      }
      
      private static function start(param1:Event = null) : void
      {
         _target.stage.addEventListener(KeyboardEvent.KEY_DOWN,onKeyDownHandler);
      }
      
      private static function onKeyDownHandler(param1:KeyboardEvent) : void
      {
         if(param1.shiftKey && param1.keyCode == 68)
         {
            visible = !visible;
         }
      }
   }
}

