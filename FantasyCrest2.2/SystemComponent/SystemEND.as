package SystemComponent
{
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   
   public class SystemEND extends Sprite
   {
      
      private var $bitmap1:Bitmap;
      
      private var $bitmap2:Bitmap;
      
      private var $bj:Shape;
      
      private var $shape:Shape;
      
      private var $1p:TextField;
      
      private var $2p:TextField;
      
      public function SystemEND()
      {
         super();
         this.$bitmap1 = new Bitmap();
         this.$bitmap2 = new Bitmap();
         this.$bj = new Shape();
         this.$shape = new Shape();
         this.$1p = new TextField();
         this.$2p = new TextField();
         this.$bj.graphics.beginFill(0,0.8);
         this.$bj.graphics.drawRect(0,0,SystemState.$stageWidth,SystemState.$stageHeight);
         this.addChild(this.$bj);
         this.addChild(this.$bitmap1);
         this.addChild(this.$bitmap2);
         var _loc1_:* = GameData.$roleSelectArray[0];
         var _loc2_:* = GameData.$roleSelectArray[1];
         this.$bitmap1.bitmapData = DataStorage.readImg("FightVS" + _loc1_);
         this.$bitmap2.bitmapData = DataStorage.readImg("FightVS" + _loc2_);
         this.$bitmap2.scaleX = -1;
         this.$bitmap2.x = SystemState.$stageWidth;
         this.$bitmap2.y = SystemState.$stageHeight - this.$bitmap2.height;
         this.$bitmap1.y = SystemState.$stageHeight - this.$bitmap1.height;
         this.alpha = 0;
         this.addEventListener(Event.ENTER_FRAME,this.Frame);
         this.$shape.graphics.beginFill(8947840,0.6);
         this.$shape.graphics.drawRect(50,100,250,300);
         this.$shape.graphics.drawRect(SystemState.$stageWidth - 300,100,250,300);
         this.addChild(this.$shape);
         var _loc3_:* = new TextFormat();
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.color = 13434624;
         _loc3_.size = 20;
         this.$1p.x = 55;
         this.$1p.y = 105;
         this.$1p.width = 245;
         this.$1p.height = 295;
         this.addChild(this.$1p);
         this.$2p.x = SystemState.$stageWidth - 300;
         this.$2p.y = 105;
         this.$2p.width = 245;
         this.$2p.height = 295;
         this.addChild(this.$2p);
         this.$1p.mouseEnabled = false;
         this.$2p.mouseEnabled = false;
         this.$1p.text = "战绩：失败\r最高连击：999 hit\r最高伤害：99999\r连续最高打飞：999999";
         this.$1p.setTextFormat(_loc3_);
         this.$2p.text = "战绩：胜利\r最高连击：999 hit\r最高伤害：99999\r连续最高打飞：999999";
         this.$2p.setTextFormat(_loc3_);
      }
      
      private function Frame(param1:Event) : void
      {
         if(this.alpha < 1)
         {
            this.alpha += 0.1;
         }
      }
   }
}

