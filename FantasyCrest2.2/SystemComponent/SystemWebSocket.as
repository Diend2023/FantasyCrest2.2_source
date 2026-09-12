package SystemComponent
{
   import SystemEye.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   
   public class SystemWebSocket
   {
      
      private static var $socket:Socket;
      
      private static var $host:String = "";
      
      public function SystemWebSocket()
      {
         super();
      }
      
      public static function conncet() : void
      {
         Security.loadPolicyFile("http://home.zuoyanlove.com:8060");
         $socket = new Socket();
         $socket.addEventListener(ProgressEvent.SOCKET_DATA,Data);
         $socket.addEventListener(Event.CONNECT,Connect);
         $socket.addEventListener(Event.CLOSE,Close);
         $socket.connect("home.zuoyanlove.com",2013);
      }
      
      public static function set socket(param1:Socket) : void
      {
         $socket = param1;
      }
      
      private static function receipt(param1:XML) : void
      {
      }
      
      public static function app(param1:int, param2:String) : void
      {
         var _loc3_:* = null;
         if($host !== "")
         {
            _loc3_ = ComponentResourcesManage.$Ob["SystemWord"]["$elementsOb"][$host];
            $socket.writeMultiByte("<xml type=\'gameRole\' ip=\'" + $host + "\' x=\'" + _loc3_.$x + "\' y=\'" + _loc3_.$y + "\' keyType=\'" + param2 + "\' key=\'" + param1 + "\'/>","gb2312");
            $socket.flush();
         }
      }
      
      private static function Data(param1:ProgressEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = null;
         var _loc5_:* = $socket.readMultiByte($socket.bytesAvailable,"gb2312");
         _loc2_ = XML("<root>" + _loc5_ + "</root>");
         while(_loc3_ < _loc2_.xml.length())
         {
            switch(String(_loc2_.xml[_loc3_].@type))
            {
               case "gameRole":
                  _loc4_ = ComponentResourcesManage.$Ob["SystemWord"]["$elementsOb"][String(_loc2_.xml[_loc3_].@ip)];
                  if(_loc4_ !== null)
                  {
                     if(_loc2_.xml[_loc3_].@keyType == "down")
                     {
                        _loc4_.SocketDown(int(_loc2_.xml[_loc3_].@key));
                     }
                     else if(_loc2_.xml[_loc3_].@keyType == "up")
                     {
                        _loc4_.SocketUp(int(_loc2_.xml[_loc3_].@key));
                        _loc4_.$x = int(_loc2_.xml[_loc3_].@x);
                        _loc4_.$y = int(_loc2_.xml[_loc3_].@y);
                     }
                  }
                  break;
               case "roleData":
                  if(ComponentResourcesManage.$Ob["SystemWord"]["$elementsOb"][String(_loc2_.xml[_loc3_].@ip)] == null)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("role",{
                        "name":String(_loc2_.xml[_loc3_].@ip),
                        "troops":0,
                        "target":"JianXin"
                     });
                  }
                  break;
               case "roleIP":
                  $host = "connect" + _loc2_.xml[_loc3_].@ip;
                  SystemState.$map = $host;
                  ComponentResourcesManage.$stage.$box.$api.addShow("连接情况","ip " + $host + "\n角色生成完毕");
                  break;
               case "delRole":
                  ComponentResourcesManage.$Ob["SystemWord"]["$elementsOb"]["connect" + String(_loc2_.xml[_loc3_].@ip)].CG();
            }
            _loc3_++;
         }
      }
      
      private static function Connect(param1:Event) : void
      {
         $socket.writeMultiByte("<xml type=\'gameRoleAdd\' />","gb2312");
         $socket.flush();
         ComponentResourcesManage.$stage.$box.$api.addShow("连接情况","联机成功，等待生成角色");
      }
      
      private static function Close(param1:Event) : void
      {
         $socket.writeMultiByte("<xml type=\'gameRoleDel\' />","gb2312");
         $socket.flush();
         ComponentResourcesManage.$stage.$box.$api.addShow("连接情况","网络中断");
      }
   }
}

