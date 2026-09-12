package person.darw.clear
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class BitmapClear
   {
      
      public function BitmapClear()
      {
         super();
      }
      
      public static function Clear(param1:Bitmap) : void
      {
         if(param1.bitmapData !== null)
         {
            param1.bitmapData.dispose();
            param1 = null;
         }
      }
      
      public static function ClearBitmapData(param1:BitmapData) : void
      {
         if(param1 !== null)
         {
            param1.dispose();
            param1 = null;
         }
      }
   }
}

