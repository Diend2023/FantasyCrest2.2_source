package rainy.url
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class GetURL extends URLProperty
   {
      
      public function GetURL(param1:String, param2:Function, ... rest)
      {
         super();
         _url = param1 + "?";
         var _loc4_:int = 0;
         while(_loc4_ < rest.length)
         {
            _url += rest[_loc4_];
            if(_loc4_ < rest.length - 1)
            {
               _url += "&";
            }
            _loc4_++;
         }
         _call = param2;
         _urlloader = new URLLoader(new URLRequest(_url + "#" + Math.random()));
         _urlloader.addEventListener(Event.COMPLETE,this.complete);
         _urlloader.addEventListener(IOErrorEvent.IO_ERROR,this.error);
      }
      
      private function complete(param1:Event) : void
      {
         var _loc2_:GetURLMessage = null;
         if(Boolean(_call))
         {
            _loc2_ = new GetURLMessage();
            _loc2_.data = String(param1.target.data);
            _loc2_.isSucceed = true;
            _call(_loc2_);
         }
      }
      
      private function error(param1:IOErrorEvent) : void
      {
         var _loc2_:GetURLMessage = null;
         if(Boolean(_call))
         {
            _loc2_ = new GetURLMessage();
            _loc2_.data = "";
            _loc2_.isSucceed = false;
            _call(_loc2_);
         }
      }
   }
}

