package eye.Draw
{
   import flash.display.*;
   import flash.geom.*;
   
   public class BitmapDataDraw
   {
      
      public static var cacheArray:Array = [];
      
      private static var _cacheObject:Object = new Object();
      
      public function BitmapDataDraw()
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
      
      public static function cache(param1:String, param2:BitmapData, param3:XML) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null;
         if(!_cacheObject[param1])
         {
            _cacheObject[param1] = new Object();
            _loc4_ = param3.children();
            for(_loc5_ in _loc4_)
            {
               _loc6_ = _loc4_[_loc5_].@x;
               _loc7_ = _loc4_[_loc5_].@y;
               _loc8_ = _loc4_[_loc5_].@width;
               _loc9_ = _loc4_[_loc5_].@height;
               _loc10_ = new BitmapData(_loc8_,_loc9_,true,0);
               _loc10_.copyPixels(param2,new Rectangle(_loc6_,_loc7_,_loc8_,_loc9_),new Point(),null,null,true);
               if(_loc10_.getPixel32(0,0) == 4278190080)
               {
                  _loc10_.threshold(_loc10_,_loc10_.rect,new Point(),"==",4278190080,0);
               }
               _cacheObject[param1][_loc4_[_loc5_].@name] = _loc10_;
            }
         }
      }
      
      public static function xmlForBitmapData(param1:BitmapData, param2:XML, param3:Number = 1, param4:Number = 1, param5:String = "") : BitmapData
      {
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null;
         if(param1 !== null)
         {
            if(param5 != "")
            {
               if(Boolean(_cacheObject[param5]) && Boolean(_cacheObject[param5][param2.@name]))
               {
                  return scaleXY(_cacheObject[param5][param2.@name],param3,param4,false);
               }
            }
            _loc6_ = param2.@x;
            _loc7_ = param2.@y;
            _loc8_ = param2.@width;
            _loc9_ = param2.@height;
            if(_loc8_ == 0 || _loc9_ == 0)
            {
               return null;
            }
            _loc10_ = new BitmapData(_loc8_,_loc9_,true,0);
            _loc10_.copyPixels(param1,new Rectangle(_loc6_,_loc7_,_loc8_,_loc9_),new Point(),null,null,true);
            if(_loc10_.getPixel32(0,0) == 4278190080)
            {
               _loc10_.threshold(_loc10_,_loc10_.rect,new Point(),"==",4278190080,0);
            }
            return scaleXY(_loc10_,param3,param4,true);
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

