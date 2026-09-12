package person.animation.easyShow.apps
{
   import flash.display.*;
   import flash.events.*;
   import person.frame.apps.*;
   
   public class EasyGIF extends FrameFPS
   {
      
      public function EasyGIF(param1:BitmapData, param2:String, param3:String = "SCREEN", param4:Boolean = false)
      {
         super();
         $boolean = param4;
         this.blendMode = BlendMode[param3];
         $bitmapData = param1;
         $xml = XML(param2);
         if(int($xml.@hred) !== 0 || int($xml.@end) !== 0)
         {
            $areaBoolean = true;
            $head = int($xml.@hred);
            $end = int($xml.@end);
         }
         this.addEventListener(Event.ENTER_FRAME,this.Frame);
      }
      
      private function Frame(param1:Event) : void
      {
         updateXMLFrame(true);
         updateBitmap();
      }
      
      public function CG() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.Frame);
         $bitmapData.dispose();
         $bitmapData = null;
         this.bitmapData.dispose();
         this.parent.removeChild(this);
      }
   }
}

