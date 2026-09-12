package SystemComponent
{
   import flash.filters.DropShadowFilter;
   import flash.geom.ColorTransform;
   
   public class SystemColor
   {
      
      private static var $bodyColor:ColorTransform = new ColorTransform(1,1,1,0.5);
      
      private static var $drop:DropShadowFilter = new DropShadowFilter(0,45,0,0.8,2,2,5,5);
      
      public function SystemColor()
      {
         super();
      }
      
      public static function get bodyColor() : ColorTransform
      {
         $bodyColor.redMultiplier = 1;
         $bodyColor.greenMultiplier = 1;
         $bodyColor.blueMultiplier = 1;
         $bodyColor.alphaMultiplier = Math.random() * 1;
         return $bodyColor;
      }
      
      public static function get bodyColorTwo() : ColorTransform
      {
         $bodyColor.alphaMultiplier = 1;
         $bodyColor.redMultiplier = Math.random() * 255;
         $bodyColor.greenMultiplier = Math.random() * 255;
         $bodyColor.blueMultiplier = Math.random() * 255;
         return $bodyColor;
      }
      
      public static function get dropColor() : DropShadowFilter
      {
         $drop.color = 16711680 - Math.random() * 20000;
         return $drop;
      }
   }
}

