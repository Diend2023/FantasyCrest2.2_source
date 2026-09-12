package SystemComponent
{
   import SystemEye.DataStorage;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SystemMucisPlay
   {
      
      private static var $soundForSystem:Sound;
      
      public static var $mode:int = 0;
      
      private static var $systemSound:SoundChannel = new SoundChannel();
      
      private static var $systemValue:SoundTransform = new SoundTransform(1);
      
      public static var $atTimeArray:Array = new Array();
      
      private static var $musicChannel:SoundChannel = new SoundChannel();
      
      private static var $musicValue:SoundTransform = new SoundTransform(1);
      
      public function SystemMucisPlay()
      {
         super();
      }
      
      private static function SoundOK(param1:Event) : void
      {
         systemMusic = $soundForSystem;
      }
      
      public static function set systemMusic(param1:Sound) : void
      {
         if(param1 !== null && $systemValue.volume !== 0)
         {
            $soundForSystem = param1;
            $systemSound.stop();
            $systemSound.removeEventListener(Event.SOUND_COMPLETE,SoundOK);
            $systemSound = $soundForSystem.play(0);
            $systemSound.addEventListener(Event.SOUND_COMPLETE,SoundOK);
            $systemSound.soundTransform = $systemValue;
         }
      }
      
      public static function set setMusic(param1:String) : void
      {
         var _loc2_:Sound = null;
         var _loc3_:* = param1;
         try
         {
            if($atTimeArray.indexOf(_loc3_) == -1 && $musicValue.volume !== 0)
            {
               $atTimeArray.push(_loc3_);
               _loc2_ = DataStorage.readSound(_loc3_);
               if(_loc2_ !== null)
               {
                  $musicChannel = _loc2_.play();
                  $musicChannel.soundTransform = $musicValue;
               }
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function soundValue(param1:Number, param2:String = "all") : void
      {
         if(param2 == "all")
         {
            $musicValue.volume = param1;
            $systemValue.volume = param1;
            $systemSound.soundTransform = $systemValue;
            $musicChannel.soundTransform = $musicValue;
         }
         else if(param2 == "system")
         {
            $systemValue.volume = param1;
            $systemSound.soundTransform = $systemValue;
         }
         else if(param2 == "hit")
         {
            $musicValue.volume = param1;
            $musicChannel.soundTransform = $musicValue;
         }
      }
      
      public static function get value() : Number
      {
         return $systemValue.volume;
      }
      
      public static function get hitValue() : Number
      {
         return $musicValue.volume;
      }
   }
}

