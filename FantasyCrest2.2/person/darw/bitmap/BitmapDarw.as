package person.darw.bitmap
{
   import flash.display.*;
   import flash.geom.*;
   
   public class BitmapDarw
   {
      
      public function BitmapDarw()
      {
         super();
      }
      
      public static function scaleXY(param1:BitmapData, param2:Number, param3:Number, param4:Boolean = false) : BitmapData
      {
         var _loc5_:* = new BitmapData(param1.width * Math.abs(param2),param1.height * Math.abs(param3),true,0);
         var _loc6_:* = new Matrix();
         _loc6_.scale(param2,param3);
         if(param2 < 0)
         {
            _loc6_.tx = -param1.width - param1.width * (param2 - 1);
         }
         if(param3 < 0)
         {
            _loc6_.ty = -param1.height - param1.height * (param3 - 1);
         }
         _loc5_.draw(param1,_loc6_,null,null);
         if(param4)
         {
            param1.dispose();
            param1 = null;
         }
         return _loc5_;
      }
      
      public static function ro(param1:Bitmap) : void
      {
         var _loc2_:* = new BitmapData(param1.width,param1.height,true,0);
         param1.rotation = 180;
         _loc2_.draw(param1,null,null);
         param1.bitmapData.dispose();
         param1.bitmapData = _loc2_;
         param1.rotation = 0;
      }
      
      public static function xmlForBitmapData(param1:BitmapData, param2:XML, param3:Number = 1, param4:Number = 1) : BitmapData
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = null;
         if(param1 !== null)
         {
            _loc5_ = param2.@x;
            _loc6_ = param2.@y;
            _loc7_ = param2.@width;
            _loc8_ = param2.@height;
            _loc9_ = new BitmapData(_loc7_,_loc8_,true,0);
            _loc9_.copyPixels(param1,new Rectangle(_loc5_,_loc6_,_loc7_,_loc8_),new Point(),null,null,true);
            if(_loc9_.getPixel32(0,0) == 4278190080)
            {
               _loc9_.threshold(_loc9_,_loc9_.rect,new Point(),"==",4278190080,0);
            }
            return scaleXY(_loc9_,param3,param4,true);
         }
         return null;
      }
      
      public static function buttonBitmapDataArray(param1:BitmapData, param2:XML) : Array
      {
         var _loc3_:* = new Array();
         var _loc4_:* = 0;
         while(_loc4_ < param2.SubTexture.length())
         {
            _loc3_.push(xmlForBitmapData(param1,param2.SubTexture[_loc4_]));
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

