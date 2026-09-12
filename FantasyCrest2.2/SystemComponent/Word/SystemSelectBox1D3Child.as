package SystemComponent.Word
{
   import SystemComponent.Select.HeadSelect;
   import SystemComponent.SystemMucisPlay;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.DataStorage;
   import SystemEye.GameData;
   import SystemEye.SystemEvent;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class SystemSelectBox1D3Child extends Sprite
   {
      
      private var m_id:int;
      
      private var m_select_id:int;
      
      private var m_select_y_id:int;
      
      private var m_sprite:Sprite;
      
      private var m_mask:Sprite;
      
      private var m_select:Sprite;
      
      public var m_select_bool:Boolean = false;
      
      private var m_select_sprite:Sprite;
      
      private var m_select_array:Array;
      
      private var m_random_array:Array;
      
      private var m_select_y_array:Array;
      
      private var m_nengli_array:Array;
      
      private var m_ob:Object;
      
      private var m_txt:TextField;
      
      private var b_txt:TextField;
      
      private var m_sprite_qingkuang:Sprite;
      
      private var m_cz_txt:TextField;
      
      private var m_cz_img:Bitmap;
      
      public var groupASelect:int = -1;
      
      public var groupBSelect:int = -1;
      
      public function SystemSelectBox1D3Child(param1:int)
      {
         super();
         this.m_ob = new Object();
         this.m_ob.hp = 0;
         this.m_ob.mp = 0;
         this.m_ob.fang = 0;
         this.m_ob.speed = 0;
         this.m_ob.li = 0;
         this.m_id = param1;
         this.graphics.beginBitmapFill(DataStorage.readImg("Select_PNG"));
         this.graphics.drawRect(5,5,690,240);
         this.graphics.endFill();
         this.m_select_sprite = new Sprite();
         this.m_select_sprite.graphics.beginFill(0,0.8);
         this.m_select_sprite.graphics.drawRect(0,0,700,250);
         this.m_select_sprite.graphics.endFill();
         this.m_select_sprite.alpha = 0;
         this.m_txt = new TextField();
         this.m_txt.text = param1 + "P:";
         this.addChild(this.m_txt);
         this.m_txt.x = 9;
         this.m_txt.y = 12;
         this.m_txt.mouseEnabled = false;
         this.m_txt.height = 24;
         this.m_txt.width = 100;
         this.m_txt.filters = [new DropShadowFilter(0,45,0,1,4,4,3)];
         var _loc2_:* = new TextFormat(null,null,16776960,null,null,null,null,null,TextFormatAlign.CENTER);
         this.m_txt.setTextFormat(_loc2_);
         this.b_txt = new TextField();
         this.addChild(this.b_txt);
         this.b_txt.text = "无";
         this.b_txt.x = 9;
         this.b_txt.y = 12;
         this.b_txt.mouseEnabled = false;
         this.b_txt.height = 24;
         this.b_txt.width = 700 - 18;
         this.b_txt.filters = [new DropShadowFilter(0,45,0,1,4,4,3)];
         this.b_txt.setTextFormat(_loc2_);
         this.graphics.beginFill(0,0.5);
         this.graphics.drawRoundRect(10,10,100,24,6);
         this.graphics.endFill();
         this.graphics.beginFill(16777215,0.5);
         this.graphics.drawRect(5,5,690,33);
         this.graphics.endFill();
         this.m_mask = new Sprite();
         this.m_mask.graphics.beginFill(0,0.5);
         this.m_mask.graphics.drawRect(250,39,690,205);
         this.m_mask.graphics.endFill();
         this.addChild(this.m_mask);
         this.m_sprite_qingkuang = new Sprite();
         this.m_sprite_qingkuang.graphics.beginFill(0,0.5);
         this.m_sprite_qingkuang.graphics.drawRect(5,38,245,207);
         this.m_sprite_qingkuang.graphics.endFill();
         this.m_sprite_qingkuang.graphics.beginFill(0,0.3);
         this.m_sprite_qingkuang.graphics.drawRect(5,218,245,27);
         this.m_sprite_qingkuang.graphics.drawRect(5,38,245,2);
         this.addChild(this.m_sprite_qingkuang);
         this.m_cz_txt = new TextField();
         this.m_cz_txt.text = "标签：卡哇伊、卡哇伊、卡哇伊、卡哇伊";
         this.addChild(this.m_cz_txt);
         this.m_cz_txt.x = 12;
         this.m_cz_txt.y = 221;
         this.m_cz_txt.width = 235;
         this.m_cz_txt.height = 24;
         var _loc3_:* = new DropShadowFilter(0);
         this.m_cz_txt.filters = [_loc3_];
         this.m_cz_txt.setTextFormat(_loc2_);
         this.m_cz_img = new Bitmap();
         this.addChild(this.m_cz_img);
         this.m_cz_img.y = 38;
         this.m_cz_img.x = 5;
         this.m_nengli_array = new Array();
         var _loc4_:* = ["血","魔","力","防","速"];
         var _loc5_:* = new GameRoleSelectState();
         this.addChild(_loc5_);
         _loc5_.y = 15;
         this.m_nengli_array = [_loc5_.hp,_loc5_.mp,_loc5_.li,_loc5_.fang,_loc5_.speed];
         this.selectData();
         this.to(0,true);
      }
      
      public function get roleID() : String
      {
         return this.m_select_array[this.m_select_id].m_target;
      }
      
      public function getRoleID(param1:int) : String
      {
         var _loc2_:* = this.m_select_array[param1].m_target;
         if(_loc2_ == "NoKown")
         {
            _loc2_ = this.roleRomranID;
         }
         return _loc2_;
      }
      
      public function get roleRomranID() : String
      {
         return this.m_random_array[int(Math.random() * this.m_random_array.length - 2)].m_target;
      }
      
      public function get selectID() : int
      {
         return this.m_select_id;
      }
      
      public function selectData() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         this.m_sprite = new Sprite();
         this.addChild(this.m_sprite);
         this.m_sprite.mask = this.m_mask;
         this.m_select = new Sprite();
         this.m_select.graphics.beginFill(16776960);
         this.m_select.graphics.drawRoundRect(0,0,45,45,6);
         this.m_select.graphics.drawRect(2.5,2.5,40,40);
         this.m_select.graphics.endFill();
         this.m_sprite.addChild(this.m_select);
         this.m_select_array = new Array();
         this.m_select_y_array = new Array();
         this.m_random_array = new Array();
         var _loc15_:* = GameData.select_xml;
         var _loc16_:* = 0;
         GameData._select_array = [];
         GameData._lock_array = new Object();
         var _loc17_:* = 0;
         while(_loc17_ < _loc15_.select.length())
         {
            _loc1_ = _loc15_.select[_loc17_].role.length();
            _loc2_ = true;
            if(SystemEvent._p2ptype != "" && String(_loc15_.select[_loc17_].@name) == "随机角色")
            {
               _loc2_ = false;
            }
            if(String(_loc15_.select[_loc17_].@name) !== "怪兽库" && Boolean(_loc2_))
            {
               _loc3_ = new TextField();
               _loc3_.text = _loc15_.select[_loc17_].@name;
               _loc3_.setTextFormat(new TextFormat("方正准圆简体"));
               this.m_sprite.addChild(_loc3_);
               _loc3_.setTextFormat(new TextFormat(null,null,16777215));
               _loc3_.filters = [new DropShadowFilter(0)];
               _loc3_.y = 76 + 74 * _loc17_;
               _loc3_.x = 155;
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = R4399Main.getUserData();
               _loc5_ += _loc6_.cgScore;
               _loc5_ = _loc5_ + _loc6_.szScore;
               _loc7_ = 0;
               while(_loc7_ < _loc1_)
               {
                  if(int(_loc15_.select[_loc17_].role[_loc7_].@win) != -1)
                  {
                     _loc8_ = "";
                     if(R4399Main.isLogin)
                     {
                        _loc8_ = R4399Main.serviceHold.isLog.name;
                     }
                     _loc9_ = String(_loc15_.select[_loc17_].role[_loc7_].@head);
                     _loc10_ = new HeadSelect(_loc9_,_loc15_.select[_loc17_].role[_loc7_]);
                     this.m_sprite.addChild(_loc10_);
                     _loc10_.x = 50 * _loc4_ + 155;
                     _loc10_.y = 74 * _loc17_ + 250 / 2 - 50 / 2 + 5;
                     this.m_select_array.push(_loc10_);
                     _loc10_.filters = [new DropShadowFilter(0)];
                     GameData._select_array.push(String(_loc15_.select[_loc17_].role[_loc7_].@head));
                     _loc4_++;
                     if(_loc15_.select[_loc17_].role[_loc7_]["new"] != undefined)
                     {
                        _loc12_ = new Bitmap(DataStorage.readImg("Hred" + "New"));
                        this.m_sprite.addChild(_loc12_);
                        _loc12_.x = _loc10_.x + 18;
                        _loc12_.y = _loc10_.y - 3;
                     }
                     _loc11_ = GameData.$mode == "SZ" ? int(R4399Main.getSZScore(_loc9_) / 100) : (GameData.$mode == "TwoAll" ? int(R4399Main.getSRScore(_loc9_) / 100) : int(R4399Main.getCGScore(_loc9_) / 100));
                     if(_loc11_ != 0)
                     {
                        if(_loc11_ > 100)
                        {
                           _loc11_ = 100;
                        }
                        _loc3_ = new TextField();
                        this.m_sprite.addChild(_loc3_);
                        _loc3_.x = _loc10_.x;
                        _loc3_.y = _loc10_.y;
                        _loc3_.text = "lv." + String(_loc11_ == 100 ? "MAX" : _loc11_);
                        _loc3_.filters = [new DropShadowFilter(0,45,0,1,4,4,4)];
                        _loc3_.textColor = 16776960;
                        _loc3_.setTextFormat(new TextFormat("方正准圆简体"));
                     }
                     if(int(_loc15_.select[_loc17_].role[_loc7_].@win) <= _loc5_ || int(_loc15_.select[_loc17_].role[_loc7_].@win) <= _loc6_.srScore)
                     {
                        this.m_random_array.push(_loc10_);
                     }
                     else
                     {
                        _loc10_.alpha = 0.5;
                        _loc13_ = new Bitmap(DataStorage.readImg("Hred" + "Lock"));
                        this.m_sprite.addChild(_loc13_);
                        _loc13_.x = _loc10_.x + 20 - 8;
                        _loc13_.y = _loc10_.y + 20 - 8;
                     }
                  }
                  _loc7_++;
               }
               if(_loc17_ !== 0)
               {
                  this.m_select_y_array.push(_loc16_);
               }
               else
               {
                  this.m_select_y_array.push(0);
               }
               _loc16_ += _loc4_;
            }
            else
            {
               _loc7_ = 0;
               while(_loc7_ < _loc1_)
               {
                  _loc9_ = _loc15_.select[_loc17_].role[_loc7_].@head;
                  if(!GameData.$roleNengLi[_loc9_])
                  {
                     _loc14_ = new Object();
                     _loc14_.hp = _loc15_.select[_loc17_].role[_loc7_].@hp;
                     _loc14_.mp = _loc15_.select[_loc17_].role[_loc7_].@mp;
                     _loc14_.fang = _loc15_.select[_loc17_].role[_loc7_].@fang;
                     _loc14_.li = _loc15_.select[_loc17_].role[_loc7_].@li;
                     _loc14_.kt = _loc15_.select[_loc17_].role[_loc7_].@kt;
                     _loc14_.speed = _loc15_.select[_loc17_].role[_loc7_].@speed;
                     _loc14_.zl = _loc15_.select[_loc17_].role[_loc7_].@zl;
                     _loc14_.jump = _loc15_.select[_loc17_].role[_loc7_].@jump;
                     _loc14_.bq = _loc15_.select[_loc17_].role[_loc7_].@bq;
                     GameData.$roleNengLi[_loc9_] = _loc14_;
                  }
                  _loc7_++;
               }
            }
            _loc17_++;
         }
         this.m_select.x = this.m_select_array[0].x - 5 / 2;
         this.m_select.y = this.m_select_array[0].y - 5 / 2;
         this.m_select_id = 0;
         this.m_select_y_id = 0;
         if(GameData.ns_select !== "none" && Boolean(ComponentResourcesManage.$stage.$lvexp))
         {
            ComponentResourcesManage.$stage.$lvexp.getlvexp(this.roleID);
         }
         this.addChild(this.m_select_sprite);
         this.addEventListener(Event.ENTER_FRAME,this.Frame);
      }
      
      private function Frame(param1:Event) : void
      {
         var _loc2_:* = this.m_select_array[0].x - 5 / 2 - this.m_select.x + 135;
         this.m_sprite.x += (_loc2_ - this.m_sprite.x) * 0.2;
         var _loc3_:* = this.m_select_array[0].y - 5 / 2 - this.m_select.y;
         this.m_sprite.y += (_loc3_ - this.m_sprite.y) * 0.2;
         this.m_select_sprite.alpha += this.m_select_bool && this.m_select_sprite.alpha < 1 ? 0.05 : (!this.m_select_bool && this.m_select_sprite.alpha > 0 ? -0.05 : 0);
         this.m_ob.hp -= 0.2 * (this.m_ob.hp - this.m_select_array[this.m_select_id]["m_ob"]["hp"]);
         this.m_ob.mp -= 0.2 * (this.m_ob.mp - this.m_select_array[this.m_select_id]["m_ob"]["mp"]);
         this.m_ob.li -= 0.2 * (this.m_ob.li - this.m_select_array[this.m_select_id]["m_ob"]["li"]);
         this.m_ob.fang -= 0.2 * (this.m_ob.fang - this.m_select_array[this.m_select_id]["m_ob"]["fang"]);
         this.m_ob.speed -= 0.2 * (this.m_ob.speed - this.m_select_array[this.m_select_id]["m_ob"]["speed"]);
         this.update(0,this.m_ob.hp / GameData.max_data[0]);
         this.update(1,this.m_ob.mp / GameData.max_data[1]);
         this.update(2,this.m_ob.li / GameData.max_data[2]);
         this.update(3,this.m_ob.fang / GameData.max_data[3]);
         this.update(4,this.m_ob.speed / GameData.max_data[4]);
      }
      
      private function update(param1:int, param2:Number) : void
      {
         var _loc3_:* = this.m_nengli_array[param1];
         _loc3_.gotoAndPlay(int(100 * param2));
      }
      
      public function key(param1:int) : void
      {
         var _loc2_:* = undefined;
         switch(param1)
         {
            case 0:
               this.to(-1);
               break;
            case 1:
               this.to(1);
               break;
            case 2:
               _loc2_ = this.m_select_y_id - (this.m_select_y_id > 0 ? 1 : 0);
               this.m_select_y_id -= this.m_select_y_id > 0 ? 1 : 0;
               this.to(this.m_select_y_array[_loc2_],true);
               break;
            case 3:
               _loc2_ = this.m_select_y_id + (this.m_select_y_array.length - 1 > this.m_select_y_id ? 1 : 0);
               this.m_select_y_id += this.m_select_y_array.length - 1 > this.m_select_y_id ? 1 : 0;
               this.to(this.m_select_y_array[_loc2_],true);
               break;
            case 4:
               if(this.m_select_array[this.m_select_id].alpha != 1)
               {
                  ComponentResourcesManage.$stage.$box.$api.addShow("提示","人物未解锁",true);
                  return;
               }
               SystemMucisPlay.setMusic = "Fight_SELECT";
               if((this.parent as SystemSelectBox1D3).getMode() == "ONE_GROUP")
               {
                  if(this.groupASelect == -1)
                  {
                     this.key(6);
                  }
                  else
                  {
                     this.key(7);
                     this.m_select_bool = true;
                  }
                  break;
               }
               this.m_select_bool = true;
               break;
            case 5:
               this.m_select_bool = false;
               SystemMucisPlay.setMusic = "Fight_SELECT";
               this.groupASelect = -1;
               break;
            case 6:
               this.groupASelect = this.selectID;
               break;
            case 7:
               this.groupBSelect = this.selectID;
         }
         if(ComponentResourcesManage.$stage.$lvexp)
         {
            ComponentResourcesManage.$stage.$lvexp.getlvexp(this.roleID);
         }
      }
      
      public function to(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         if(!this.m_select_bool)
         {
            _loc3_ = param2 ? param1 : this.m_select_id + param1;
            _loc3_ = _loc3_ > this.m_select_array.length - 1 ? this.m_select_array.length - 1 : _loc3_;
            _loc3_ = _loc3_ < 0 ? 0 : _loc3_;
            this.m_select_id = _loc3_;
            if(!param2)
            {
               _loc6_ = this.m_select.y;
            }
            this.m_select.x = this.m_select_array[_loc3_].x - 5 / 2;
            this.m_select.y = this.m_select_array[_loc3_].y - 5 / 2;
            if(!param2 && this.m_select.y !== _loc6_)
            {
               this.m_select_y_id += _loc6_ > this.m_select.y ? -1 : 1;
            }
            SystemMucisPlay.setMusic = "Fight_MOVE";
            this.m_txt.text = "[" + this.m_select_array[_loc3_].m_name + "]";
            _loc4_ = GameData.getRoleFromTarget(this.getRoleID(this.selectID));
            this.b_txt.text = _loc4_.@message != undefined ? String(_loc4_.@message) : "无";
            if(int(_loc4_.@win) > 0)
            {
               this.b_txt.text += "（综合" + _loc4_.@win + "战力解锁）";
            }
            _loc5_ = new TextFormat(null,null,16776960);
            _loc5_.align = TextFormatAlign.CENTER;
            this.m_txt.setTextFormat(_loc5_);
            this.b_txt.setTextFormat(_loc5_);
            if(GameData.$roleNengLi[this.roleID].bq)
            {
               this.m_cz_txt.text = GameData.$roleNengLi[this.roleID].bq;
               this.m_cz_txt.setTextFormat(new TextFormat(null,null,16776960));
            }
         }
      }
      
      public function CG() : void
      {
         this.removeEventListener(Event.ENTER_FRAME,this.Frame);
         this.parent.removeChild(this);
      }
   }
}

