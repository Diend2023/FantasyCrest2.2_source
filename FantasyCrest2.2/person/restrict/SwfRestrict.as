package person.restrict
{
   public class SwfRestrict
   {
      
      public static var $boolean:Boolean = true;
      
      public static var $codeBoolean:Boolean = false;
      
      private static const $doMainUrlArray:Array = ["4399api.com","4399.com"];
      
      public static var $error:String = "";
      
      public function SwfRestrict()
      {
         super();
      }
      
      public static function asWeb(param1:String, param2:Boolean = false) : Boolean
      {
         $boolean = param2;
         var _loc3_:Array = param1.split("/",4);
         if(_loc3_[0] == "file:")
         {
            if(!$boolean)
            {
               return true;
            }
            return false;
         }
         if(ifWed(_loc3_))
         {
            return true;
         }
         return false;
      }
      
      private static function ifWed(param1:Array) : Boolean
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         $error = "Root:" + param1 + "/n";
         for(_loc2_ in param1)
         {
            for(_loc3_ in $doMainUrlArray)
            {
               $error += "Go:" + $doMainUrlArray[_loc3_];
               if(param1[_loc2_].indexOf($doMainUrlArray[_loc3_]) !== -1)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}

