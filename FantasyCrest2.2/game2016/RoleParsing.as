package game2016
{
   import SystemComponent.*;
   
   public class RoleParsing
   {
      
      public static var $ob:Object;
      
      public function RoleParsing()
      {
         super();
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc6_:* = 0;
         while(_loc6_ <= _loc5_.length)
         {
            _loc3_ = _loc5_.substr(_loc6_,Number.MAX_VALUE) + param2;
            if(_loc3_.indexOf("AA") != -1)
            {
               _loc3_ = _loc3_.replace("AA","DD");
            }
            _loc4_ = param1.$jumpBoolean ? param1.roleData.skillAirMapping[_loc3_] : param1.roleData.skillMapping[_loc3_];
            if(_loc4_)
            {
               return _loc4_;
            }
            _loc6_++;
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         return getKeyString(param1,param2);
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         var _loc11_:* = getXMLAtName(param1.xml.children(),param1.$frameString);
         if(!_loc11_)
         {
            return;
         }
         if(_loc11_.SubTexture.length() > param1.$frameInt + 1)
         {
            _loc2_ = _loc11_.SubTexture[param1.$frameInt];
            _loc3_ = _loc11_.SubTexture[param1.$frameInt + 1];
            _loc4_ = int(_loc2_.@gox);
            _loc5_ = int(_loc3_.@gox);
            _loc6_ = int(_loc2_.@goy);
            _loc7_ = int(_loc3_.@goy);
            _loc8_ = int(_loc11_.@fps) + 3;
            if(!param1.$stopUpdateframeBoolean)
            {
               _loc9_ = (_loc5_ - _loc4_) / (_loc8_ == 0 ? 1 : _loc8_);
               _loc10_ = (_loc7_ - _loc6_) / (_loc8_ == 0 ? 1 : _loc8_);
               if(_loc10_ < 0)
               {
                  if(!param1.$jumpBoolean)
                  {
                     param1.$ob.kong = true;
                     param1.$y -= 10;
                  }
                  param1.$jumpBoolean = true;
               }
               param1.$x += _loc9_ * param1.$scaleX;
               param1.$y += _loc10_;
            }
         }
      }
      
      private static function getXMLAtName(param1:XMLList, param2:String) : XML
      {
         var _loc3_:Object = null;
         for(_loc3_ in param1)
         {
            if(String(param1[_loc3_].@name) == param2)
            {
               return param1[_loc3_];
            }
         }
         return null;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
   }
}

