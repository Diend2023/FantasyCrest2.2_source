package rainy.p2p
{
   import flash.events.*;
   import flash.net.*;
   
   public class P2PProperty extends EventDispatcher
   {
      
      protected const _userID:String = String(int(Math.random() * 10000));
      
      protected var _group:String = "direct";
      
      protected var _connectMode:String = "";
      
      protected var _connectState:String = "none";
      
      protected var _mode:String = "manage";
      
      protected var _nc:NetConnection;
      
      protected var _ns:NetStream;
      
      protected var _mainNetStream:NetStream;
      
      protected var _ng:NetGroup;
      
      protected var _call:Function;
      
      protected var _funObject:Object;
      
      protected var _p2pKeyArray:Vector.<String>;
      
      protected var _secureKey:String = "";
      
      protected var _groupArray:Vector.<String>;
      
      public function P2PProperty()
      {
         super();
      }
      
      public function getNearID() : String
      {
         if(!this._nc)
         {
            return "";
         }
         return this._nc.nearID;
      }
      
      public function getFarIDArray() : Vector.<String>
      {
         return this._p2pKeyArray;
      }
      
      public function get isConnect() : Boolean
      {
         if(this._secureKey == "")
         {
            return false;
         }
         if(!this._mainNetStream && this._connectMode == P2PConnectMode.P2P_CONNECT_DIRECT)
         {
            return false;
         }
         if(!this._ng && this._connectMode == P2PConnectMode.P2P_CONNECT_GROUP)
         {
            return false;
         }
         return true;
      }
      
      public function getConnectMode() : String
      {
         return this._connectMode;
      }
      
      public function getGourpArray() : Vector.<String>
      {
         return this._groupArray;
      }
      
      public function getConnectNumber() : int
      {
         if(this._connectMode == P2PConnectMode.P2P_CONNECT_DIRECT)
         {
            return this._p2pKeyArray.length;
         }
         if(this._connectMode == P2PConnectMode.P2P_CONNECT_GROUP)
         {
            return this._groupArray.length + this.isConnect ? 1 : 0;
         }
         return 0;
      }
      
      protected function addDirectMember(param1:String) : void
      {
         if(!this._p2pKeyArray)
         {
            this._p2pKeyArray = new Vector.<String>();
         }
         if(this._p2pKeyArray.indexOf(param1) == -1)
         {
            this._p2pKeyArray.push(param1);
         }
      }
      
      protected function removeDirectMember(param1:String) : void
      {
         if(!this._p2pKeyArray)
         {
            return;
         }
         this._p2pKeyArray.splice(this._p2pKeyArray.indexOf(param1),1);
      }
      
      protected function addGroupMember(param1:String) : void
      {
         if(!this._groupArray)
         {
            this._groupArray = new Vector.<String>();
         }
         this._groupArray.push(param1);
      }
      
      protected function removeGroupMember(param1:String) : void
      {
         if(!this._groupArray)
         {
            return;
         }
         this._groupArray.splice(this._groupArray.indexOf(param1),1);
      }
      
      public function getConnectKey() : String
      {
         return this._secureKey;
      }
   }
}

