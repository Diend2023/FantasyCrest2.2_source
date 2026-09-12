package rainy.p2p
{
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   
   public class P2PManage extends P2PProperty
   {
      
      private static var _p2pManage:P2PManage;
      
      public function P2PManage()
      {
         super();
      }
      
      public static function getInstance() : P2PManage
      {
         if(!_p2pManage)
         {
            _p2pManage = new P2PManage();
         }
         return _p2pManage;
      }
      
      public function connectServer(param1:String, param2:Function, param3:String = "direct") : void
      {
         _connectMode = param3;
         this.closeServer();
         _call = param2;
         _nc = new NetConnection();
         _nc.connect(param1);
         _nc.addEventListener(NetStatusEvent.NET_STATUS,this.netStatus);
      }
      
      public function setMaxConnextNumber(param1:int) : void
      {
         if(_nc)
         {
            _nc.maxPeerConnections = param1;
         }
      }
      
      public function startDirectConnect(param1:String) : void
      {
         if(_connectMode != P2PConnectMode.P2P_CONNECT_DIRECT || param1 == "")
         {
            return;
         }
         _group = param1;
         this.openDirectConnect();
      }
      
      public function connectClient(param1:String) : void
      {
         if(_connectMode != P2PConnectMode.P2P_CONNECT_DIRECT)
         {
            return;
         }
         if(getNearID() == param1 || param1 == "")
         {
            return;
         }
         this.closeClient();
         _mainNetStream = new NetStream(_nc,param1);
         _mainNetStream.addEventListener(NetStatusEvent.NET_STATUS,this.netStatus);
         _mainNetStream.play(_group);
         _mainNetStream.client = _funObject;
         _secureKey = param1;
      }
      
      public function connectGroup(param1:String) : void
      {
         if(_connectMode != P2PConnectMode.P2P_CONNECT_GROUP)
         {
            return;
         }
         if(param1 == "")
         {
            return;
         }
         _group = param1;
         this.openGroupConnect();
      }
      
      public function setClient(param1:Object) : void
      {
         if(_connectMode != P2PConnectMode.P2P_CONNECT_DIRECT)
         {
            return;
         }
         param1.onPeerConnect = this.peerConnect;
         _funObject = param1;
         if(_ns)
         {
            _ns.client = _funObject;
         }
         if(_mainNetStream)
         {
            _mainNetStream.client = _funObject;
         }
      }
      
      private function peerConnect(param1:NetStream) : Boolean
      {
         return true;
      }
      
      public function send(param1:String, ... rest) : void
      {
         if(!_ns)
         {
            return;
         }
         if(rest.length != 0)
         {
            _ns.send(param1,rest);
         }
         else
         {
            _ns.send(param1);
         }
      }
      
      public function sendForTarget(param1:String, param2:String, ... rest) : void
      {
         var _loc4_:Object = null;
         var _loc5_:NetStream = null;
         for(_loc4_ in _ns.peerStreams)
         {
            _loc5_ = _ns.peerStreams[_loc4_] as NetStream;
            if(_loc5_.farID == param1)
            {
               if(rest.length != 0)
               {
                  _loc5_.send(param2,rest);
               }
               else
               {
                  _loc5_.send(param2);
               }
               break;
            }
         }
      }
      
      public function postToAll(param1:Dictionary) : void
      {
         if(!_ng || _connectMode != P2PConnectMode.P2P_CONNECT_GROUP)
         {
            return;
         }
         param1.random = int(Math.random() * 10000);
         _ng.post(param1);
      }
      
      public function postToOne(param1:String, param2:Dictionary) : void
      {
         if(!_ng || _connectMode != P2PConnectMode.P2P_CONNECT_GROUP)
         {
            return;
         }
         _ng.sendToNearest(param2,_ng.convertPeerIDToGroupAddress(param1));
      }
      
      public function closeClient() : void
      {
         if(_mainNetStream)
         {
            _mainNetStream.close();
            _mainNetStream = null;
         }
         _secureKey = "";
      }
      
      public function closeServer() : void
      {
         if(_nc)
         {
            _nc.close();
            _nc = null;
         }
         if(_ns)
         {
            _ns.close();
            _ns = null;
         }
         this.closeClient();
      }
      
      private function netStatus(param1:NetStatusEvent) : void
      {
         switch(param1.info.code)
         {
            case "NetConnection.Connect.Success":
               if(_call != null)
               {
                  _call();
               }
               break;
            case "NetGroup.Connect.Success":
               break;
            case "NetGroup.Connect.Closed":
               if(_groupArray)
               {
                  _groupArray.splice(0,_groupArray.length);
               }
               break;
            case "NetGroup.Neighbor.Connect":
               addGroupMember(param1.info.peerID);
               dispatchEvent(new P2PGroupEvent(P2PGroupEvent.P2PEVENT_CONNECT,null));
               break;
            case "NetGroup.Posting.Notify":
               dispatchEvent(new P2PGroupEvent(P2PGroupEvent.P2PEVENT_GET_DATA,param1.info.message));
               break;
            case "NetGroup.Neighbor.Disconnect":
               removeGroupMember(param1.info.peerID);
               dispatchEvent(new P2PGroupEvent(P2PGroupEvent.P2PEVENT_DISCONNECT,param1.info.message));
               break;
            case "NetStream.Connect.Success":
               addDirectMember(param1.info.stream.farID);
               dispatchEvent(new P2PEvent(P2PEvent.P2PEVENT_NEW_CLIENT,param1.info.stream));
               break;
            case "NetStream.Connect.Closed":
               this.isClosed(param1.info.stream);
               break;
            case "NetStream.Play.Stop":
         }
      }
      
      private function isClosed(param1:NetStream) : void
      {
         removeDirectMember(param1.farID);
         if(isConnect && _secureKey == param1.farID)
         {
            this.closeClient();
            dispatchEvent(new P2PEvent(P2PEvent.P2PEVENT_DISCONNECT,param1));
         }
      }
      
      private function openDirectConnect() : void
      {
         if(_connectMode != P2PConnectMode.P2P_CONNECT_DIRECT)
         {
            return;
         }
         _ns = new NetStream(_nc,NetStream.DIRECT_CONNECTIONS);
         _ns.addEventListener(NetStatusEvent.NET_STATUS,this.netStatus);
         _ns.publish(_group);
         _ns.client = _funObject;
      }
      
      private function openGroupConnect() : void
      {
         var _loc1_:* = new GroupSpecifier(_group);
         _loc1_.postingEnabled = true;
         _loc1_.serverChannelEnabled = true;
         if(_ng)
         {
            _ng.close();
            _ng = null;
         }
         _ng = new NetGroup(_nc,_loc1_.groupspecWithAuthorizations());
         _ng.addEventListener(NetStatusEvent.NET_STATUS,this.netStatus);
      }
   }
}

