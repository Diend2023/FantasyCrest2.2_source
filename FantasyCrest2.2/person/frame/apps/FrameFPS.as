package person.frame.apps
{
   import flash.display.*;
   import person.darw.bitmap.*;
   
   public class FrameFPS extends Bitmap
   {
      
      public var $bitmapData:BitmapData;
      
      public var $xml:XML;
      
      public var $fps:int = 3;
      
      public var $fpsMath:int = 0;
      
      public var $frameInt:int = 0;
      
      public var $drawBoolean:Boolean;
      
      public var $head:int;
      
      public var $end:int;
      
      public var $areaBoolean:Boolean = false;
      
      public var $scaleX:Number = 1;
      
      public var $scaleY:Number = 1;
      
      public var $boolean:Boolean = false;
      
      private var _frameInt:int = -1;
      
      public function FrameFPS()
      {
         super();
      }
      
      public function updateXMLFrame(param1:Boolean = false) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(this.$fps > this.$fpsMath)
         {
            _loc2_ = this;
            _loc3_ = this.$fpsMath + 1;
            _loc2_.$fpsMath = _loc3_;
         }
         else if(this.$xml.SubTexture.length() - 1 > this.$frameInt)
         {
            _loc2_ = this;
            _loc3_ = this.$frameInt + 1;
            _loc2_.$frameInt = _loc3_;
            this.$drawBoolean = true;
            this.$fpsMath = 0;
         }
         else if(param1)
         {
            this.$frameInt = 0;
            this.$drawBoolean = true;
            this.$fpsMath = 0;
            if(this.$boolean)
            {
               if(this["CG"] is Function)
               {
                  _loc2_ = this;
                  _loc2_["CG"]();
               }
            }
         }
         if(this.$frameInt >= this.$end && this.$areaBoolean)
         {
            this.$frameInt = this.$head;
         }
      }
      
      public function updateBitmap() : void
      {
         if(this.$drawBoolean && this.$bitmapData is BitmapData && this._frameInt != this.$frameInt)
         {
            this._frameInt = this.$frameInt;
            this.bitmapData = BitmapDarw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[this.$frameInt],this.$scaleX,this.$scaleY);
            this.smoothing = true;
         }
      }
   }
}

