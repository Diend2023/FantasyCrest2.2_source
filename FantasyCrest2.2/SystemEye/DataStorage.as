package SystemEye
{
   import deng.fzip.*;
   import eye.Draw.*;
   import flash.display.*;
   import flash.events.*;
   import flash.media.*;
   import flash.utils.*;
   
   public class DataStorage
   {
      
      private static var $imgOB:Object = new Object();
      
      private static var $soundOB:Object = new Object();
      
      private static var $textOB:Object = new Object();
      
      private static var _dataDict:Dictionary = new Dictionary();
      
      public static var $noDel:Array = new Array();
      
      public function DataStorage()
      {
         super();
      }
      
      public static function seveText(param1:String, param2:String) : void
      {
         if(param2 !== "" && param2 !== null)
         {
            $textOB[param1] = param2;
            if(BitmapDataDraw.cacheArray.indexOf(param1) != -1)
            {
               BitmapDataDraw.cache(param1,readImg(param1),new XML(param2));
            }
         }
      }
      
      public static function readText(param1:String) : String
      {
         if($textOB[param1] !== null)
         {
            return $textOB[param1];
         }
         return "";
      }
      
      public static function seveSound(param1:String, param2:Sound) : void
      {
         if(param2 !== null)
         {
            $soundOB[param1] = param2;
         }
      }
      
      public static function readSound(param1:String) : Sound
      {
         if($soundOB[param1] !== null)
         {
            return $soundOB[param1];
         }
         return null;
      }
      
      public static function seveImg(param1:String, param2:BitmapData) : void
      {
         if(param2 !== null)
         {
            $imgOB[param1] = param2;
         }
      }
      
      public static function saveByteImage(param1:String, param2:ByteArray) : void
      {
         var target:* = undefined;
         target = param1;
         var byte:* = param2;
         var loader:* = new Loader();
         loader.loadBytes(byte);
         loader.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            seveImg(target,param1.target.content.bitmapData);
         });
      }
      
      public static function readImg(param1:String) : BitmapData
      {
         var _loc2_:* = undefined;
         if($imgOB[param1] is BitmapData)
         {
            _loc2_ = $imgOB[param1];
            return _loc2_["clone"]();
         }
         return null;
      }
      
      public static function getImgName(param1:BitmapData) : String
      {
         var _loc2_:Object = null;
         for(_loc2_ in $imgOB)
         {
            if($imgOB[_loc2_] == param1)
            {
               return _loc2_ as String;
            }
         }
         return null;
      }
      
      public static function setData(param1:String, param2:Object) : void
      {
         _dataDict[param1] = true;
      }
      
      private static function onLoaded(param1:FZipEvent) : void
      {
      }
      
      public static function getData(param1:String) : Boolean
      {
         return _dataDict[param1];
      }
      
      public static function CG() : void
      {
         var _loc1_:* = undefined;
      }
   }
}

