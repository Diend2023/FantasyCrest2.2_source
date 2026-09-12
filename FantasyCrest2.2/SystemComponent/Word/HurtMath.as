package SystemComponent.Word
{
   import SystemEye.*;
   import eye.Draw.*;
   import flash.display.*;
   import flash.geom.*;
   
   public class HurtMath extends Bitmap
   {
      
      public var hurt:int = 0;
      
      private var $time:int = 20;
      
      public function HurtMath(param1:int, param2:Point)
      {
         super();
         this.hurt = param1;
         var _loc3_:* = String(param1);
         var _loc4_:* = DataStorage.readImg("System_HURT");
         var _loc5_:* = XML(DataStorage.readText("System_HURT"));
         var _loc6_:* = new BitmapData(_loc3_.length * 20,20,true,0);
         var _loc7_:* = new Matrix(1,0,0,1,0,0);
         _loc7_.scale(0.5,0.5);
         param1 = 0;
         while(param1 < _loc3_.length)
         {
            _loc6_.draw(BitmapDataDraw.xmlForBitmapData(_loc4_,_loc5_.SubTexture[int(_loc3_.charAt(param1))]),_loc7_);
            _loc7_.tx += 10;
            param1++;
         }
         this.x = param2.x - Math.random() * 20 - 10;
         this.y = param2.y - 30;
         this.bitmapData = _loc6_;
         this.bitmapData.lock();
         this.smoothing = true;
      }
      
      public function toFrame() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.$time < 0)
         {
            this.y -= 5;
            this.alpha -= 0.1;
            if(this.alpha < 0)
            {
               this.CG();
            }
         }
         else
         {
            _loc1_ = this;
            _loc2_ = this.$time - 1;
            _loc1_.$time = _loc2_;
         }
      }
      
      public function CG() : void
      {
         this.bitmapData.dispose();
         ComponentResourcesManage.$word.delElements(this.name);
      }
   }
}

