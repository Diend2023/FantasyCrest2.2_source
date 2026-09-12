package game2016
{
   import flash.ui.*;
   import flash.utils.*;
   
   public class RoleData
   {
      
      public static const keys:Object = {
         "J":Keyboard.J,
         "K":Keyboard.K,
         "L":Keyboard.L,
         "U":Keyboard.U,
         "I":Keyboard.I,
         "O":Keyboard.O,
         "P":Keyboard.P
      };
      
      public static const lefts:Object = {
         "↑":"W",
         "↓":"S",
         "←":"A",
         "→":"D",
         "无":""
      };
      
      private var _xml:XML;
      
      public var skillData:Object;
      
      public var eventData:EventData;
      
      public var skillMapping:Dictionary;
      
      public var skillAirMapping:Dictionary;
      
      public function RoleData(param1:String)
      {
         super();
         this.skillMapping = new Dictionary();
         this.skillAirMapping = new Dictionary();
         this._xml = new XML(param1);
         this.skillData = new Object();
         this.eventData = new EventData(this._xml);
         this.parsing();
      }
      
      public static function getKey(param1:String) : String
      {
         var _loc2_:* = null;
         if(param1 == "null")
         {
            return "";
         }
         var _loc3_:* = "";
         var _loc4_:* = 0;
         while(_loc4_ < param1.length)
         {
            _loc2_ = param1.charAt(_loc4_);
            _loc3_ += lefts[_loc2_];
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function parsing(param1:XML = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(param1)
         {
            this._xml = param1;
         }
         var _loc6_:* = this._xml.child("act");
         for(_loc2_ in _loc6_)
         {
            _loc3_ = _loc6_[_loc2_];
            if(_loc3_.@right != "无")
            {
               _loc4_ = getKey(String(_loc3_.@left));
               if(_loc4_ == "AA")
               {
                  _loc4_ = "DD";
               }
               this.skillData[_loc3_.@name] = {
                  "cd":int(_loc3_.@cd),
                  "mp":int(_loc3_.@mp),
                  "w":200,
                  "h":200,
                  "s":_loc4_,
                  "k":String(_loc3_.@isAirSkill) == "true",
                  "key":keys[_loc3_.@right]
               };
               _loc5_ = _loc4_ + keys[String(_loc3_.@right)];
               if(this.skillData[_loc3_.@name].k)
               {
                  this.skillAirMapping[_loc5_] = _loc3_.@name;
               }
               else
               {
                  this.skillMapping[_loc5_] = _loc3_.@name;
               }
            }
         }
         this.skillData["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         this.skillData["空中攻击"] = {
            "cd":0,
            "k":true,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         this.skillMapping[Keyboard.J] = "普通攻击";
         this.skillAirMapping[Keyboard.J] = "空中攻击";
      }
   }
}

