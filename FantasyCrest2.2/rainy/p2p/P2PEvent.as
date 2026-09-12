package rainy.p2p
{
   import flash.events.Event;
   import flash.net.NetStream;
   
   public class P2PEvent extends Event
   {
      
      public static const P2PEVENT_NEW_CLIENT:String = "NewClient";
      
      public static const P2PEVENT_DISCONNECT:String = "Disonnect";
      
      public var netStream:NetStream;
      
      public function P2PEvent(param1:String, param2:NetStream)
      {
         this.netStream = param2;
         super(param1);
      }
   }
}

