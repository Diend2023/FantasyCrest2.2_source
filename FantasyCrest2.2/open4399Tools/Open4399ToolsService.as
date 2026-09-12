package open4399Tools
{
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.getTimer;
   import open4399Tools.events.Open4399ToolsEvent;
   
   public class Open4399ToolsService
   {
      
      private static var _open4399Tools:*;
      
      private static var v_url:String = "http://stat.api.4399.com/flash_ctrl_version.xml?ran=";
      
      private static var url:String = "http://cdn.comment.4399pk.com/control/open4399tools_AS3.swf";
      
      public function Open4399ToolsService()
      {
         super();
         var _loc1_:URLRequest = new URLRequest(v_url + getTimer());
         var _loc2_:URLLoader = new URLLoader();
         _loc2_.addEventListener(Event.COMPLETE,this.onXmlComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onXmlIOError);
         _loc2_.load(_loc1_);
      }
      
      protected function onXmlComplete(param1:Event) : void
      {
         var xmlRes:XML;
         var event:Event = param1;
         event.target.removeEventListener(IOErrorEvent.IO_ERROR,this.onXmlIOError);
         event.target.removeEventListener(Event.COMPLETE,this.onXmlComplete);
         xmlRes = XML(event.target.data);
         if(xmlRes != null)
         {
            if(String(xmlRes.info.(hasOwnProperty("@resName") && @resName == "tools_as3")).length)
            {
               url = xmlRes.info.(hasOwnProperty("@resName") && @resName == "tools_as3");
            }
         }
         this.onSwfLoad();
      }
      
      protected function onXmlIOError(param1:IOErrorEvent) : void
      {
         param1.target.removeEventListener(IOErrorEvent.IO_ERROR,this.onXmlIOError);
         param1.target.removeEventListener(Event.COMPLETE,this.onXmlComplete);
         this.onSwfLoad();
      }
      
      protected function onSwfLoad() : void
      {
         var _loc1_:URLRequest = new URLRequest(url);
         var _loc2_:Loader = new Loader();
         _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
         _loc2_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         _loc2_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
         try
         {
            _loc2_.load(_loc1_);
         }
         catch(e:Error)
         {
         }
      }
      
      protected function onLoadError(param1:*) : void
      {
         param1.target.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         param1.target.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         param1.target.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
         Open4399ToolsApi.getInstance().dispatchEvent(new Open4399ToolsEvent(Open4399ToolsEvent.CHECK_BAD_WORDS_ERROR));
      }
      
      protected function onLoadComplete(param1:Event) : void
      {
         param1.target.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         param1.target.removeEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         param1.target.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadError);
         var _loc2_:LoaderInfo = LoaderInfo(param1.target);
         _open4399Tools = _loc2_.content;
         _open4399Tools.eventClass = Open4399ToolsEvent;
         _open4399Tools.addEventListener(Open4399ToolsEvent.CHECK_BAD_WORDS,Open4399ToolsApi.getInstance().dispatchEvent);
         _open4399Tools.addEventListener(Open4399ToolsEvent.CHECK_BAD_WORDS_ERROR,Open4399ToolsApi.getInstance().dispatchEvent);
         Open4399ToolsApi.getInstance().dispatchEvent(new Open4399ToolsEvent(Open4399ToolsEvent.SERVICE_INIT));
      }
      
      public function get badWordsService() : *
      {
         if(_open4399Tools)
         {
            return _open4399Tools.badWordsService;
         }
         return null;
      }
   }
}

