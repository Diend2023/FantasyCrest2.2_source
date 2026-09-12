package person.text
{
   import flash.display.*;
   import flash.filters.*;
   import flash.text.*;
   
   public class TextBitmap
   {
      
      public function TextBitmap()
      {
         super();
      }
      
      public static function createBitmapData(param1:String, param2:int, param3:int, param4:int = 12, param5:String = "center", param6:uint = 15641870) : BitmapData
      {
         var _loc7_:* = new TextField();
         _loc7_.wordWrap = true;
         _loc7_.multiline = true;
         _loc7_.text = param1;
         _loc7_.width = param2;
         _loc7_.height = param3;
         _loc7_.setTextFormat(new TextFormat(null,param4,param6,null,null,null,null,null,param5));
         _loc7_.filters = [new DropShadowFilter(0,45,0,1,4,4,3,1)];
         var _loc8_:* = new BitmapData(_loc7_.width,_loc7_.height,true,0);
         _loc8_.draw(_loc7_);
         _loc7_ = null;
         return _loc8_;
      }
      
      public static function createBitmap(param1:String, param2:int, param3:int, param4:int = 12, param5:String = "center", param6:uint = 15641870) : Bitmap
      {
         return new Bitmap(createBitmapData(param1,param2,param3,param4,param5,param6));
      }
   }
}

