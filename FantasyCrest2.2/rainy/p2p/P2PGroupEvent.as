package rainy.p2p
{
   import flash.events.Event;
   import flash.utils.Dictionary;
   
   public class P2PGroupEvent extends Event
   {
      
      public static const P2PEVENT_GET_DATA:String = "GroupPosting";
      
      public static const P2PEVENT_CONNECT:String = "GroupConnect";
      
      public static const P2PEVENT_DISCONNECT:String = "GroupDisconnect";
      
      public var data:Dictionary;
      
      public function P2PGroupEvent(param1:String, param2:Dictionary)
      {
         this.data = param2;
         super(param1);
      }
   }
}

