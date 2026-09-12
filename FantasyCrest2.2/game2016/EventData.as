package game2016
{
   import flash.utils.Dictionary;
   
   public class EventData
   {
      
      private var _xml:XML;
      
      private var _events:Dictionary;
      
      public function EventData(param1:XML)
      {
         super();
         this._xml = param1;
         this._events = new Dictionary();
         this.parsing();
      }
      
      private function parsing() : void
      {
         var _loc1_:* = null;
         var _loc2_:String = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!this._xml)
         {
            return;
         }
         var _loc7_:* = this._xml.ifRoot.children();
         for(_loc1_ in _loc7_)
         {
            _loc2_ = _loc7_[_loc1_].@name;
            if(_loc2_ != "无")
            {
               _loc3_ = [];
               _loc4_ = _loc7_[_loc1_].children();
               for(_loc5_ in _loc4_)
               {
                  _loc6_ = new Object();
                  _loc6_["if"] = JSON.parse(_loc4_[_loc5_].@ifData);
                  _loc6_["do"] = this.getDoDataFormXML(_loc4_[_loc5_]);
                  _loc3_.push(_loc6_);
               }
               this._events[_loc2_] = _loc3_;
            }
         }
      }
      
      private function getDoDataFormXML(param1:XML) : Array
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = [];
         var _loc5_:* = param1.children();
         for(_loc2_ in _loc5_)
         {
            _loc3_ = {};
            _loc3_.name = String(_loc5_[_loc2_].@label);
            _loc3_.data = JSON.parse(_loc5_[_loc2_].@doData);
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      public function getEvent(param1:String) : Object
      {
         var _loc2_:* = undefined;
         if(param1 != "" && param1 != "无")
         {
            for(_loc2_ in this._events)
            {
            }
         }
         if(this._events[param1])
         {
            return this._events[param1];
         }
         return null;
      }
   }
}

