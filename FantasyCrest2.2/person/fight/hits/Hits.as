package person.fight.hits
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import person.darw.bitmap.*;
   
   public class Hits extends Sprite
   {
      
      private var $data:Array;
      
      private var $hit:Bitmap;
      
      private var $num:Bitmap;
      
      private var $int:int = 0;
      
      private var $time:int = 0;
      
      public var $scaleX:int = 1;
      
      public function Hits(param1:BitmapData, param2:BitmapData)
      {
         super();
         this.$data = new Array();
         this.$hit = new Bitmap();
         this.$num = new Bitmap();
         this.$data[0] = param1;
         this.$data[1] = param2;
         this.$hit.bitmapData = param1;
         this.addChild(this.$num);
         this.addChild(this.$hit);
         this.addEventListener(Event.ENTER_FRAME,this.Frame);
         this.alpha = 0;
      }
      
      public function getHitNum() : int
      {
         return this.$int;
      }
      
      private function Frame(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(this.$time > 0)
         {
            _loc2_ = this;
            _loc3_ = this.$time - 1;
            _loc2_.$time = _loc3_;
         }
         else
         {
            this.$int = 0;
         }
         if(this.$num.alpha < 1 && this.$time > 0)
         {
            this.$num.alpha += 0.2;
         }
         else if(this.alpha > 0 && this.$time <= 0)
         {
            this.alpha -= 0.2;
         }
      }
      
      public function addNum(param1:int = -1) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         if(param1 != -1)
         {
            if(this.$int == param1)
            {
               return;
            }
            this.$int = param1;
         }
         else
         {
            _loc5_ = this;
            _loc6_ = this.$int + 1;
            _loc5_.$int = _loc6_;
         }
         this.$time = 60;
         this.$num.alpha = 0;
         this.alpha = 1;
         var _loc4_:* = String(this.$int);
         if(this.$num.bitmapData !== null)
         {
            this.$num.bitmapData.dispose();
         }
         this.$num.bitmapData = new BitmapData(36.2 * _loc4_.length,50,true,0);
         this.$num.bitmapData.draw(BitmapDarw.xmlForBitmapData(this.$data[1],XML("<xml height=\'50\' width=\'" + 362 / 10 + "\' x=\'" + int(_loc4_.charAt(0)) * 362 / 10 + "\' y=\'0\'/>")));
         if(_loc4_.length > 1)
         {
            _loc2_ = 1;
            while(_loc2_ < _loc4_.length)
            {
               if(_loc2_ >= 3)
               {
                  break;
               }
               _loc3_ = new Matrix();
               _loc3_.tx = 30 * _loc2_;
               this.$num.bitmapData.draw(BitmapDarw.xmlForBitmapData(this.$data[1],XML("<xml height=\'50\' width=\'" + 362 / 10 + "\' x=\'" + int(_loc4_.charAt(_loc2_)) * 362 / 10 + "\' y=\'0\'/>")),_loc3_);
               _loc2_++;
            }
         }
         if(this.$scaleX == -1)
         {
            this.$num.x = -36.2 * (_loc4_.length - 1);
            this.$hit.x = -36.2 * _loc4_.length - 60;
         }
         else
         {
            this.$hit.x = 36.2 * _loc4_.length - 15;
         }
      }
   }
}

