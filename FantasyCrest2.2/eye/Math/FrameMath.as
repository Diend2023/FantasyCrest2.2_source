package eye.Math
{
   public class FrameMath
   {
      
      public function FrameMath()
      {
         super();
      }
      
      public static function mathFrameToX(param1:int, param2:int, param3:int, param4:int) : Number
      {
         if(param2 <= param1 && param3 >= param1)
         {
            return param4;
         }
         return 0;
      }
   }
}

