package SystemComponent
{
   import SystemEye.ComponentResourcesManage;
   import SystemEye.DataStorage;
   import deng.fzip.FZip;
   import deng.fzip.FZipEvent;
   import deng.fzip.FZipFile;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.media.Sound;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   
   public class SystemLoading
   {
      
      private static var $stage:Object;
      
      private static var $loading:BitmapData;
      
      private static var $loadingt:BitmapData;
      
      private static var $load:URLLoader;
      
      private static var $sound:Sound;
      
      private static var $text:URLLoader;
      
      private static var $function:Function;
      
      private static var $photo:Loader;
      
      private static var $shape:Shape = new Shape();
      
      private static var $textShow:TextField = new TextField();
      
      private static var $font:TextFormat = new TextFormat(null,null,16763904);
      
      private static var $array:Array = new Array();
      
      public static var $codeBoolean:Boolean = false;
      
      public static var $code:int = 939029835;
      
      private static var $i:Number = 0;
      
      private static var $b:Number = 0;
      
      private static var $error:Boolean = false;
      
      private static var $length:int = 0;
      
      private static var $newZ:int = 0;
      
      private static var $jiuZ:int = 0;
      
      private static var $cxZ:int = 0;
      
      private static var $timeZ:int = 40;
      
      public function SystemLoading()
      {
         super();
      }
      
      public static function set stage(param1:Object) : void
      {
         $loading = DataStorage.readImg("system_loading");
         $loadingt = DataStorage.readImg("system_loadingt");
         param1.addChild($shape);
         param1.addChild($textShow);
         $textShow.width = 680;
         $textShow.mouseEnabled = false;
         $stage = param1;
         $stage.addEventListener(Event.ENTER_FRAME,Frame);
      }
      
      public static function setVisible(param1:Boolean) : void
      {
         $shape.visible = param1;
         $textShow.visible = param1;
      }
      
      private static function Frame(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if($i < $b && $array.length !== 0 && !$error)
         {
            $i += ($b - $i) * 0.2;
            toInt($i);
            if($timeZ > 0)
            {
               _loc2_ = $timeZ - 1;
               $timeZ = _loc2_;
            }
            else
            {
               $timeZ = 40;
               $jiuZ = $newZ;
               $newZ = $cxZ;
               $textShow.text = "资源插件路径：flash." + $array[0].type + "." + $array[0].name + " [" + $length + "/" + ($array.length + $length) + "]  " + int(($newZ - $jiuZ) / 1024) + "/kb";
               $textShow.setTextFormat($font);
            }
         }
      }
      
      public static function toInt(param1:Number) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if($loading)
         {
            $shape.graphics.clear();
            $shape.graphics.beginBitmapFill($loading);
            $shape.graphics.drawRect(0,0,$loading.width,$loading.height);
            $shape.graphics.endFill();
            $shape.graphics.beginBitmapFill($loadingt);
            _loc2_ = $length + $array.length;
            _loc3_ = ($loadingt.width - 40) / _loc2_;
            $shape.graphics.drawRect(0,0,21 + $length * _loc3_ + _loc3_ * param1 / 100,$loadingt.height);
            $shape.graphics.endFill();
            $stage.addChild($shape);
            $stage.addChild($textShow);
            $textShow.y = Main.contentHeight - 24;
            $textShow.x = 10;
            $shape.y = 425;
         }
      }
      
      public static function addTask(param1:String, param2:String, param3:String, param4:Boolean = false) : void
      {
         if(param4)
         {
            DataStorage.$noDel.push(param3);
         }
         $length = 0;
         $array.push({
            "url":param1,
            "type":param2,
            "name":param3
         });
      }
      
      public static function set startForOverOpen(param1:Function) : void
      {
         var _loc2_:String = null;
         $function = param1;
         if($array.length > 0)
         {
            $i = 0;
            $b = 0;
            $newZ = 0;
            $jiuZ = 0;
            $timeZ = 40;
            toInt(100);
            ++$length;
            $textShow.text = "资源插件路径：flash." + $array[0].type + "." + $array[0].name + " [" + $length + "/" + ($array.length + $length) + "]  ";
            $textShow.setTextFormat($font);
            if(!dataBoolean)
            {
               switch($array[0].type)
               {
                  case "data":
                     startLoadURL = $array[0].url;
                     break;
                  case "photo":
                     startLoadURL = $array[0].url;
                     break;
                  case "sound":
                     _loc2_ = $array[0].url;
                     startSoundURL = $array[0].url;
                     break;
                  case "text":
                     startTextURL = $array[0].url;
               }
            }
            else
            {
               $array.shift();
               startForOverOpen = $function;
            }
         }
         else
         {
            $shape.graphics.clear();
            $textShow.text = "";
            $function();
         }
      }
      
      private static function get dataBoolean() : Boolean
      {
         switch($array[0].type)
         {
            case "data":
               return DataStorage.getData($array[0].name);
            case "photo":
               return DataStorage.readImg($array[0].name) is BitmapData;
            case "sound":
               return DataStorage.readSound($array[0].name) is Sound;
            case "text":
               return DataStorage.readText($array[0].name) !== "" && DataStorage.readText($array[0].name) is String;
            default:
               return false;
         }
      }
      
      private static function set startTextURL(param1:String) : void
      {
         $text = new URLLoader();
         $text.dataFormat = URLLoaderDataFormat.BINARY;
         $text.load(new URLRequest(param1));
         $text.addEventListener(Event.COMPLETE,textTrue);
         $text.addEventListener(IOErrorEvent.IO_ERROR,loadIo);
         $text.addEventListener(ProgressEvent.PROGRESS,loadProgress);
      }
      
      private static function set startSoundURL(param1:String) : void
      {
         $sound = new Sound();
         $sound.load(new URLRequest(param1));
         $sound.addEventListener(Event.COMPLETE,soundTrue);
         $sound.addEventListener(IOErrorEvent.IO_ERROR,loadIo);
         $sound.addEventListener(ProgressEvent.PROGRESS,loadProgress);
      }
      
      private static function set startLoadURL(param1:String) : void
      {
         $load = new URLLoader();
         $load.dataFormat = URLLoaderDataFormat.BINARY;
         $load.load(new URLRequest(param1));
         $load.addEventListener(Event.COMPLETE,loadTrue);
         $load.addEventListener(ProgressEvent.PROGRESS,loadProgress);
         $load.addEventListener(IOErrorEvent.IO_ERROR,loadIo);
      }
      
      private static function textTrue(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if($codeBoolean && $array[0].url.indexOf(".xml") !== -1 && param1 == null)
         {
            _loc2_ = URLLoader(param1.target).data;
            if(_loc2_ is ByteArray)
            {
               try
               {
                  Code(ByteArray(_loc2_)).uncompress();
               }
               catch(e:Error)
               {
               }
            }
            DataStorage.seveText($array[0].name,String(Code(_loc2_)));
         }
         else
         {
            DataStorage.seveText($array[0].name,param1.target.data);
         }
         $array.shift();
         $text.removeEventListener(Event.COMPLETE,soundTrue);
         $text.removeEventListener(IOErrorEvent.IO_ERROR,loadIo);
         $text.removeEventListener(ProgressEvent.PROGRESS,loadProgress);
         startForOverOpen = $function;
      }
      
      private static function soundTrue(param1:Event) : void
      {
         $sound.removeEventListener(Event.COMPLETE,soundTrue);
         $sound.removeEventListener(IOErrorEvent.IO_ERROR,loadIo);
         $sound.removeEventListener(ProgressEvent.PROGRESS,loadProgress);
         DataStorage.seveSound($array[0].name,$sound);
         $array.shift();
         startForOverOpen = $function;
      }
      
      private static function loadTrue(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         $textShow.text = "GO -----------------------> [" + $array[0].url + "]";
         $textShow.setTextFormat($font);
         if($array[0].type == "data")
         {
            DataStorage.setData($array[0].name,param1.target.data);
            _loc2_ = param1.target.data as ByteArray;
            if(Main.IS_PREVIEW)
            {
            }
            _loc3_ = new FZip();
            _loc3_.addEventListener(FZipEvent.FILE_LOADED,onLoaded);
            _loc3_.addEventListener(Event.COMPLETE,onZipComplete);
            _loc3_.loadBytes(_loc2_);
            return;
         }
         $load.removeEventListener(Event.COMPLETE,loadTrue);
         $load.removeEventListener(ProgressEvent.PROGRESS,loadProgress);
         $load.removeEventListener(IOErrorEvent.IO_ERROR,loadIo);
         $photo = new Loader();
         $photo.contentLoaderInfo.addEventListener(Event.COMPLETE,photoCodeTrue);
         $photo.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,photoIO);
         $photo.loadBytes(Code(param1.target.data));
      }
      
      private static function onZipComplete(param1:Event) : void
      {
         $array.shift();
         startForOverOpen = $function;
      }
      
      private static function get code() : int
      {
         if(Main.IS_PREVIEW)
         {
            return 20160707;
         }
         return 99390298351126;
      }
      
      private static function onLoaded(param1:FZipEvent) : void
      {
         var _loc2_:FZipFile = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Sound = null;
         var _loc7_:* = param1;
         _loc2_ = _loc7_.file;
         _loc3_ = $array[0].name;
         _loc4_ = _loc2_.filename.substr(0,_loc2_.filename.lastIndexOf("."));
         var _loc8_:* = _loc2_.filename.substr(_loc2_.filename.lastIndexOf(".") + 1,_loc2_.filename.length);
         switch(_loc8_)
         {
            case "data":
               uncode(_loc2_.content,code);
               DataStorage.seveText(_loc3_,_loc2_.content.readUTFBytes(_loc2_.content.bytesAvailable));
               break;
            case "xml":
               if(_loc4_ == "content")
               {
                  return;
               }
               uncode(_loc2_.content,code);
               _loc5_ = _loc2_.content.readUTFBytes(_loc2_.content.bytesAvailable);
               if(_loc5_.indexOf("/>") == -1)
               {
                  _loc5_ = _loc2_.content.toString();
               }
               DataStorage.seveText(_loc3_ + "_" + _loc4_,_loc5_);
               break;
            case "png":
               uncode(_loc2_.content,code);
               if(_loc4_ == "content")
               {
                  DataStorage.saveByteImage(_loc3_,_loc2_.content);
                  return;
               }
               DataStorage.saveByteImage(_loc3_ + "_" + _loc4_,_loc2_.content);
               break;
            case "mp3":
               uncode(_loc2_.content,code);
               _loc6_ = new Sound();
               try
               {
                  _loc6_.loadCompressedDataFromByteArray(_loc2_.content,_loc2_.content.length);
               }
               catch(e:Error)
               {
               }
               DataStorage.seveSound(_loc3_ + "_" + _loc4_,_loc6_);
         }
      }
      
      public static function uncode(param1:ByteArray, param2:int) : void
      {
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            param1[_loc3_] -= param2;
            _loc3_++;
         }
      }
      
      private static function Code(param1:ByteArray) : ByteArray
      {
         if($codeBoolean && $array[0].url.indexOf(".jpg") == -1)
         {
            return doCode(param1,$code);
         }
         return param1;
      }
      
      private static function doCode(param1:ByteArray, param2:int) : ByteArray
      {
         if(!param1)
         {
            return null;
         }
         var _loc3_:* = new ByteArray();
         var _loc4_:* = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_.writeByte(param1[_loc4_] + param2);
            _loc4_++;
         }
         return _loc3_;
      }
      
      private static function photoCodeTrue(param1:Event) : void
      {
         $photo.contentLoaderInfo.removeEventListener(Event.COMPLETE,photoCodeTrue);
         $photo.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,photoIO);
         DataStorage.seveImg($array[0].name,Bitmap(param1.target.content).bitmapData);
         $array.shift();
         startForOverOpen = $function;
      }
      
      private static function photoIO(param1:IOErrorEvent) : void
      {
         $photo.contentLoaderInfo.removeEventListener(Event.COMPLETE,photoCodeTrue);
         $photo.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,photoIO);
         $textShow.text = "--------------------->CodeError: " + $array[0].url;
         $textShow.setTextFormat($font);
         $error = true;
         if(ComponentResourcesManage.$stage)
         {
            ComponentResourcesManage.$stage.$box.$api.addShow("Error # 错误","代码：#C-Error\n" + $array[0].url + "\n出现此情况，请截图汇报至“百度贴吧·幻想纹章吧”",true);
         }
      }
      
      private static function loadIo(param1:IOErrorEvent) : void
      {
         $textShow.text = "--------------------->Error: " + $array[0].url;
         $textShow.setTextFormat($font);
         $error = true;
         if(ComponentResourcesManage.$stage)
         {
            ComponentResourcesManage.$stage.$box.$api.addShow("Error # 错误","加载失败，正在重载..\n如果太久无反应，请刷新游戏",true);
         }
      }
      
      private static function loadProgress(param1:ProgressEvent) : void
      {
         $b = param1.bytesLoaded / param1.bytesTotal * 100;
         $cxZ = param1.bytesLoaded;
      }
   }
}

