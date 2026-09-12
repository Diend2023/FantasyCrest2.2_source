package person.fight.time
{
   import SystemEye.*;
   import flash.display.*;
   import flash.geom.*;
   import person.darw.bitmap.*;
   
   public class Times extends Bitmap
   {
      
      public var $fightTime:int = 99;
      
      private var $fightTimeFPS:int = 40;
      
      public var $bitmapData:BitmapData;
      
      public function Times(param1:BitmapData)
      {
         super();
         this.$bitmapData = param1;
      }
      
      public function toFrame() : void
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = null;
         if(GameData.$game_time !== 0)
         {
            if(this.$fightTimeFPS > 0)
            {
               _loc5_ = this;
               _loc6_ = this.$fightTimeFPS - 1;
               _loc5_.$fightTimeFPS = _loc6_;
            }
            else if(SystemEvent.getP2PType() != "accept")
            {
               _loc5_ = this;
               _loc6_ = this.$fightTime - 1;
               _loc5_.$fightTime = _loc6_;
               this.$fightTimeFPS = 40;
            }
            _loc1_ = String(this.$fightTime);
            if(this.bitmapData !== null)
            {
               this.bitmapData.dispose();
            }
            _loc2_ = this.$bitmapData.width / 10;
            this.bitmapData = new BitmapData(_loc2_ * _loc1_.length,this.$bitmapData.height,true,0);
            while(_loc3_ < _loc1_.length)
            {
               _loc4_ = new Matrix();
               _loc4_.tx = _loc2_ * _loc3_;
               this.bitmapData.draw(BitmapDarw.xmlForBitmapData(this.$bitmapData,XML("<xml width=\'" + _loc2_ + "\' height=\'" + this.$bitmapData.height + "\' x=\'" + _loc2_ * int(_loc1_.charAt(_loc3_)) + "\' y=\'0\'/>")),_loc4_);
               _loc3_++;
            }
         }
         this.x = stage.stageWidth / 2 - this.width / 2;
      }
      
      public function CG() : void
      {
         this.$bitmapData.dispose();
         if(this.bitmapData !== null)
         {
            this.$bitmapData.dispose();
         }
         this.parent.removeChild(this);
      }
   }
}

