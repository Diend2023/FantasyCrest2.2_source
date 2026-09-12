package SystemComponent
{
   import flash.display.*;
   
   public class SystemBackground
   {
      
      public static var $bitmap:Bitmap = new Bitmap();
      
      public function SystemBackground()
      {
         super();
      }
      
      public static function set stage(param1:Object) : void
      {
         if(param1 !== null)
         {
            param1.addChildAt($bitmap,0);
         }
      }
      
      public static function set bitmapData(param1:BitmapData) : void
      {
         if($bitmap.bitmapData !== null)
         {
            $bitmap.bitmapData.dispose();
         }
         $bitmap.bitmapData = param1;
         $bitmap.bitmapData.lock();
         $bitmap.x = 0;
         $bitmap.y = 0;
      }
   }
}

