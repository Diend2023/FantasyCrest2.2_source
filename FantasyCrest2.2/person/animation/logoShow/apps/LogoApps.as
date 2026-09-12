package person.animation.logoShow.apps
{
   import flash.display.*;
   import person.frame.apps.*;
   
   public class LogoApps
   {
      
      private static var $stage:Object;
      
      private static var $bitmap:Bitmap;
      
      private static var $function:Function;
      
      private static var $array:Array = new Array();
      
      private static var $id:int = 0;
      
      public function LogoApps()
      {
         super();
      }
      
      public static function set stage(param1:Object) : void
      {
         $stage = param1;
         $bitmap = new Bitmap();
         $stage.addChild($bitmap);
      }
      
      public static function GIFArray(param1:Function, param2:Array) : void
      {
         $function = param1;
         $array = param2;
         $id = 0;
         Show();
      }
      
      public static function GIFLogoOK() : void
      {
         var _loc1_:* = undefined;
         if($id < $array.length - 1)
         {
            _loc1_ = $id + 1;
            $id = _loc1_;
            Show($id);
         }
         else
         {
            $function();
         }
      }
      
      public static function Show(param1:int = 0) : void
      {
         $bitmap.bitmapData = $array[param1];
         $stage.addChild($bitmap);
         $bitmap.x = $stage.stage.stageWidth / 2 - $bitmap.width / 2;
         $bitmap.y = $stage.stage.stageHeight / 2 - $bitmap.height / 2;
         FrameAlpha.play($bitmap,GIFLogoOK);
      }
   }
}

