package SystemComponent.Word
{
   import SystemComponent.*;
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.ui.*;
   import p2p2016.*;
   
   public class SystemSelectBox1D3 extends Sprite
   {
      
      private var m_array:Array;
      
      private var m_2p_bool:Boolean;
      
      private var m_select_num:int;
      
      private var m_mode:String;
      
      public var _video:VideoSelect;
      
      public function SystemSelectBox1D3()
      {
         super();
         this.graphics.beginFill(16777215,0.5);
         this.graphics.drawRect(0,0,700,500);
         this.graphics.endFill();
         this.m_array = [new SystemSelectBox1D3Child(1),new SystemSelectBox1D3Child(2)];
         this.addChild(this.m_array[0]);
         this.addChild(this.m_array[1]);
         this.m_array[1].y = 250;
         this.addEventListener(Event.ADDED_TO_STAGE,this.init);
      }
      
      public function set selectMode(param1:String) : void
      {
         this.m_mode = param1;
         this.m_2p_bool = true;
         switch(param1)
         {
            case "ONE_GROUP":
               this.m_array[1]["m_select_bool"] = true;
               this.m_select_num = 2;
               this.m_2p_bool = false;
               break;
            case "SZ":
            case "1PALL":
               this.m_array[1]["m_select_bool"] = true;
               this.m_2p_bool = false;
               this.m_select_num = 1;
               break;
            case "1PSB":
            case "1PCOM":
            case "COMCOM":
               this.m_2p_bool = false;
               this.m_select_num = 2;
               break;
            case "P2P":
               this.m_select_num = 2;
               this.m_2p_bool = false;
               GameData.$mode = "P2P";
               break;
            case "1P2P":
               this.m_select_num = 2;
               this.m_2p_bool = true;
         }
      }
      
      private function init(param1:Event) : void
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.init);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.Down);
         this.addEventListener(Event.ENTER_FRAME,this.Frame);
         this._video = null;
         if(["P2P","1PCOM","1PALL","SZ","1PSB","1P2P","TwoAll"].indexOf(GameData.$mode) == -1)
         {
            return;
         }
         if(GameData.$mode == "P2P" && SystemEvent._p2ptype != "fight")
         {
            return;
         }
         if(Main.IS_PHONE)
         {
            return;
         }
         var _loc2_:* = new VideoSelect();
         this.addChild(_loc2_);
         _loc2_.x = stage.stageWidth - _loc2_.width - 10;
         _loc2_.y = stage.stageHeight - _loc2_.height - 10;
         _loc2_.select = false;
         this._video = _loc2_;
         stage.focus = this;
      }
      
      private function Frame(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if(Boolean(this.m_array[0]["m_select_bool"]) && Boolean(this.m_array[1]["m_select_bool"]))
         {
            this.alpha -= 0.05;
            if(this.alpha < 0)
            {
               GameData.$roleSelectArray = [this.m_array[0]["roleID"] == "NoKown" ? this.m_array[0]["roleRomranID"] : this.m_array[0]["roleID"],this.m_array[1]["roleID"] == "NoKown" ? this.m_array[1]["roleRomranID"] : this.m_array[1]["roleID"]];
               if(this.m_mode == "ONE_GROUP")
               {
                  _loc2_ = this.m_array[0];
                  _loc2_ = this.m_array[0];
                  GameData.$roleSelectArray = [_loc2_["getRoleID"](_loc2_["groupASelect"]),_loc2_["getRoleID"](_loc2_["groupBSelect"])];
               }
               if(SystemEvent.getP2PType() == "accept")
               {
                  return;
               }
               this.CG();
               if(this.m_mode !== "1PALL")
               {
                  ComponentResourcesManage.askResources("SelectMAP","SelectMAP",null);
               }
               else
               {
                  if(GameData.ns_select == "none")
                  {
                     SystemLoadType.loadMAP(GameData.$mapArray[int(GameData.$mapArray.length * Math.random())]);
                  }
                  SystemEvent.select({"name":GameData.$roleSelectArray[0]});
               }
            }
         }
      }
      
      private function Down(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.m_array[0]["m_select_bool"] || !this.m_array[1]["m_select_bool"])
         {
            SystemMucisPlay.$atTimeArray = [];
            if(this.m_2p_bool)
            {
               switch(param1.keyCode)
               {
                  case Keyboard.LEFT:
                     this.m_array[1].key(0);
                     break;
                  case Keyboard.RIGHT:
                     this.m_array[1].key(1);
                     break;
                  case Keyboard.UP:
                     this.m_array[1].key(2);
                     break;
                  case Keyboard.DOWN:
                     this.m_array[1].key(3);
                     break;
                  case Keyboard.NUMPAD_1:
                     this.m_array[1].key(4);
                     break;
                  case Keyboard.NUMPAD_2:
                     this.m_array[1].key(5);
               }
            }
            else if(Boolean(this.m_array[0]["m_select_bool"]) && SystemEvent.getP2PType() == "")
            {
               switch(param1.keyCode)
               {
                  case Keyboard.A:
                     this.m_array[1].key(0);
                     break;
                  case Keyboard.D:
                     this.m_array[1].key(1);
                     break;
                  case Keyboard.W:
                     this.m_array[1].key(2);
                     break;
                  case Keyboard.S:
                     this.m_array[1].key(3);
                     break;
                  case Keyboard.J:
                     this.m_array[1].key(4);
                     break;
                  case Keyboard.K:
                     this.m_array[1].key(5);
               }
            }
            _loc2_ = SystemEvent.getP2PType() == "fight" ? 0 : 1;
            if(SystemEvent.getP2PType() == "")
            {
               switch(param1.keyCode)
               {
                  case Keyboard.A:
                     this.m_array[0].key(0);
                     break;
                  case Keyboard.D:
                     this.m_array[0].key(1);
                     break;
                  case Keyboard.W:
                     this.m_array[0].key(2);
                     break;
                  case Keyboard.S:
                     this.m_array[0].key(3);
                     break;
                  case Keyboard.J:
                     this.m_array[0].key(4);
                     break;
                  case Keyboard.K:
                     this.m_array[0].key(5);
                     if(this.m_2p_bool == false)
                     {
                        this.selectMode = this.m_mode;
                     }
               }
            }
            else
            {
               switch(param1.keyCode)
               {
                  case Keyboard.A:
                     this.m_array[_loc2_].key(0);
                     break;
                  case Keyboard.D:
                     this.m_array[_loc2_].key(1);
                     break;
                  case Keyboard.W:
                     this.m_array[_loc2_].key(2);
                     break;
                  case Keyboard.S:
                     this.m_array[_loc2_].key(3);
                     break;
                  case Keyboard.J:
                     this.m_array[_loc2_].key(4);
                     if(SystemEvent.getP2PType() != "")
                     {
                        P2PData.p2p.send("onSelect",(this.m_array[_loc2_] as SystemSelectBox1D3Child).selectID,true);
                     }
                     break;
                  case Keyboard.K:
               }
            }
            if(SystemEvent.getP2PType() != "")
            {
               P2PData.p2p.send("onSelect",(this.m_array[_loc2_] as SystemSelectBox1D3Child).selectID);
            }
         }
      }
      
      public function onSelect(param1:Array) : void
      {
         var _loc2_:* = SystemEvent.getP2PType() == "fight" ? 1 : 0;
         (this.m_array[_loc2_] as SystemSelectBox1D3Child).to(param1[0],true);
         if(param1[1])
         {
            (this.m_array[_loc2_] as SystemSelectBox1D3Child).key(4);
         }
      }
      
      public function onSelectRole(param1:Array) : void
      {
         var _loc2_:* = SystemEvent.getP2PType() == "fight" ? 1 : 0;
         (this.m_array[_loc2_] as SystemSelectBox1D3Child).to(param1[0],true);
      }
      
      public function CG() : void
      {
         P2PData._isVideo = false;
         if(Boolean(this._video) && this._video.select)
         {
            P2PData._isVideo = true;
         }
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.Down);
         this.removeEventListener(Event.ENTER_FRAME,this.Frame);
         this.m_array[0].CG();
         this.m_array[1].CG();
         this.parent.removeChild(this);
         ComponentResourcesManage.$Ob["SelectRole"] = null;
      }
      
      public function getMode() : String
      {
         return this.m_mode;
      }
   }
}

