package SystemComponent.Word
{
   import SystemEye.*;
   import flash.display.*;
   import flash.filters.*;
   
   public class QZ extends Shape
   {
      
      private var r_name:String = "";
      
      public function QZ(param1:BitmapData, param2:Number, param3:Number, param4:Number, param5:Boolean = true)
      {
         super();
         var _loc6_:* = null;
         var _loc7_:* = null;
         this.graphics.beginBitmapFill(param1);
         this.graphics.drawRect(0,0,param1.width,param1.height);
         if(param5)
         {
            _loc6_ = new Array();
            _loc6_ = _loc6_.concat([0,0,param2,0,0]);
            _loc6_ = _loc6_.concat([0,0,param3,0,0]);
            _loc6_ = _loc6_.concat([0,0,param4,0,0]);
            _loc6_ = _loc6_.concat([0,0,1,1,0]);
            _loc7_ = new ColorMatrixFilter(_loc6_);
            this.filters = [_loc7_];
         }
         this.blendMode = BlendMode.SCREEN;
         this.r_name = "Qz" + Math.random();
         ComponentResourcesManage.$word.$elementsOb[this.r_name] = this;
      }
      
      public function toFrame() : void
      {
         this.alpha -= 0.1;
         if(this.alpha <= 0)
         {
            this.CG();
         }
      }
      
      public function CG() : void
      {
         ComponentResourcesManage.$word.$elementsOb[this.r_name] = null;
         delete ComponentResourcesManage.$word.$elementsOb[this.r_name];
         this.parent.removeChild(this);
      }
   }
}

