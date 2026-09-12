package SystemComponent
{
   import SystemEye.*;
   import flash.display.*;
   
   public class SystemMap extends Sprite
   {
      
      public static var vibration:int = 0;
      
      private var $bitmap:Bitmap;
      
      public var $scale:Number = 1.5;
      
      public var $StageWidth:int = 700;
      
      public var $StageHeight:int = 500;
      
      public var $zhen:int = 0;
      
      private var $dxZhen:int = 0;
      
      private var $SY:Number = 1;
      
      public function SystemMap(param1:BitmapData, param2:BitmapData)
      {
         super();
         this.$bitmap = new Bitmap();
         this.$StageHeight = Main.contentHeight;
         this.$StageWidth = Main.contentWidth;
         this.$bitmap.bitmapData = param1;
         this.$bitmap.bitmapData.lock();
         SystemBackground.bitmapData = param2;
         this.addChild(this.$bitmap);
         this.$bitmap.smoothing = true;
      }
      
      public function get getWidth() : int
      {
         return this.$bitmap.width;
      }
      
      public function set setZhen(param1:Number) : void
      {
         this.$dxZhen = 20;
         this.$zhen = param1 * 40;
      }
      
      public function updateMap() : void
      {
         this.$bitmap.bitmapData = DataStorage.readImg(GameData.$mapTarget);
         this.parent["$elementsOb"]["bit"]["bitmapData"] = DataStorage.readImg("bit" + GameData.$mapTarget);
      }
      
      public function toFrame(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc5_:* = this.$StageWidth / (param3 + 60);
         var _loc6_:* = this.$StageHeight / (param4 + 180);
         if(_loc6_ < _loc5_)
         {
            _loc5_ = _loc6_;
         }
         this.$scale -= (this.$scale - _loc5_) * 0.2;
         if(this.$scale < 1)
         {
            this.$scale = 1;
         }
         else if(this.$scale > 2.3)
         {
            this.$scale = 2.3;
         }
         var _loc7_:* = this.$StageWidth / 2 - param1 * this.$scale;
         var _loc8_:* = this.$StageHeight / 2 - param2 * this.$scale + 100;
         this.parent.y -= (this.parent.y - _loc8_) * 1;
         this.parent.x -= (this.parent.x - _loc7_) * 1;
         if(this.parent.y < -(this.$bitmap.height * this.$scale - this.$StageHeight))
         {
            this.parent.y = -(this.$bitmap.height * this.$scale - this.$StageHeight);
         }
         else if(this.parent.y > 0)
         {
            this.parent.y = 0;
         }
         if(this.parent.x < -(this.$bitmap.width * this.$scale - this.$StageWidth))
         {
            this.parent.x = -(this.$bitmap.width * this.$scale - this.$StageWidth);
         }
         else if(this.parent.x > 0)
         {
            this.parent.x = 0;
         }
         if(vibration > 0)
         {
            this.$zhen = vibration;
            vibration = 0;
         }
         if(GameData.$KaTime > 0)
         {
            GameData.$KaTime -= GameData.ns_select == "none" ? 1 : 3;
            if(!GameData.$KaBoolean)
            {
               GameData.$KaBoolean = true;
               this.$zhen = GameData.$KaTime;
            }
         }
         else
         {
            GameData.$KaBoolean = false;
         }
         if(this.$zhen > 0)
         {
            _loc11_ = this;
            _loc12_ = this.$zhen - 1;
            _loc11_.$zhen = _loc12_;
            this.$dxZhen = 30 - 30 / this.$zhen;
            this.parent.x += Math.random() * this.$dxZhen - this.$dxZhen / 2;
            this.parent.y += Math.random() * this.$dxZhen - this.$dxZhen / 2;
         }
         var _loc9_:* = this.parent.x / -(this.$bitmap.width * this.$scale - this.$StageWidth);
         var _loc10_:* = this.parent.y / -(this.$bitmap.height * this.$scale - this.$StageHeight);
         SystemBackground.$bitmap.x = -int((SystemBackground.$bitmap.width - this.$StageWidth) * _loc9_);
         SystemBackground.$bitmap.y = -int((SystemBackground.$bitmap.height - this.$StageHeight) * _loc10_);
         this.parent.scaleX = this.$scale;
         this.parent.scaleY = this.$scale;
      }
      
      public function CG() : void
      {
         this.$bitmap.bitmapData.dispose();
         this.$bitmap = null;
         this.parent.removeChild(this);
      }
   }
}

