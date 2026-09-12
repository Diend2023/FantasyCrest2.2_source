package SystemComponent.CardClass
{
   import SystemComponent.Word.*;
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import flash.ui.*;
   
   public class CradBox extends Sprite
   {
      
      private var txt:TextField;
      
      private var txt_name:TextField;
      
      private var bitmap:Bitmap;
      
      private var m_xml:XML;
      
      private var m_xml_id:int;
      
      private var m_str:String = "";
      
      private var m_str_id:Number = 0;
      
      public function CradBox()
      {
         super();
         this.txt = new TextField();
         this.txt_name = new TextField();
         this.bitmap = new Bitmap();
         var _loc1_:* = DataStorage.readImg("box2");
         this.graphics.beginBitmapFill(_loc1_);
         this.graphics.drawRect(0,0,_loc1_.width,_loc1_.height);
         this.graphics.endFill();
         this.addChild(this.txt);
         this.txt.x = 180;
         this.txt.y = 58;
         this.txt.width = 510;
         this.txt.height = 120;
         this.txt.mouseEnabled = false;
         this.txt.wordWrap = true;
         this.addChild(this.txt_name);
         this.txt_name.x = 44;
         this.txt_name.y = 8;
         this.txt_name.width = 116;
         this.txt_name.mouseEnabled = false;
         this.addChild(this.bitmap);
         this.bitmap.x = 34;
         this.bitmap.y = 51;
         this.bitmap.scaleX = 120 / 140;
         this.bitmap.scaleY = 120 / 140;
      }
      
      private function Up(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.SPACE && this.m_str !== "")
         {
            if(this.m_str_id !== this.m_str.length)
            {
               this.txt.text = this.m_str;
               this.txt.setTextFormat(new TextFormat(null,null,16777215));
               this.m_str_id = this.m_str.length;
            }
            else
            {
               this.m_str = "";
            }
         }
      }
      
      public function setXML(param1:XML) : void
      {
         stage.addEventListener(KeyboardEvent.KEY_UP,this.Up);
         this.m_xml = param1;
         this.m_xml_id = 0;
      }
      
      public function frame() : void
      {
         if(this.m_str == "" && Boolean(this.m_xml))
         {
            this.next();
         }
         else
         {
            if(this.m_str_id / int(this.m_str_id) == 1 || this.m_str_id == 0)
            {
               this.txt.appendText(this.m_str.charAt(this.m_str_id));
               this.txt.setTextFormat(new TextFormat(null,null,16777215));
            }
            this.m_str_id += this.m_str_id < this.m_str.length ? 0.25 : 0;
         }
      }
      
      public function next() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc1_:* = 0;
         var _loc2_:* = null;
         var _loc3_:* = true;
         do
         {
            if(!this.m_xml.game[this.m_xml_id])
            {
               GameData.$fightBoolean = true;
               this.visible = false;
               _loc3_ = false;
            }
            else
            {
               NSGameData.dqapp = String(this.m_xml.game[this.m_xml_id].@type);
               if(this.m_xml.game[this.m_xml_id].@type == "name")
               {
                  this.theName = GameData.getSelectName(this.m_xml.game[this.m_xml_id].@target);
                  this.txt_name.setTextFormat(new TextFormat(null,18,16774486,null,null,null,null,null,"center"));
               }
               else if(this.m_xml.game[this.m_xml_id].@type == "text")
               {
                  this.visible = true;
                  this.m_str = this.m_xml.game[this.m_xml_id].@target;
                  this.txt.text = "";
                  this.m_str_id = 0;
                  _loc3_ = false;
               }
               else if(this.m_xml.game[this.m_xml_id].@type == "head")
               {
                  this.bitmap.bitmapData = DataStorage.readImg("Show_" + String(this.m_xml.game[this.m_xml_id].@target));
               }
               else if(this.m_xml.game[this.m_xml_id].@type == "play")
               {
                  GameData.$fightBoolean = true;
                  this.visible = false;
                  this.m_str = "";
                  _loc3_ = false;
               }
               else if(this.m_xml.game[this.m_xml_id].@type == "end")
               {
                  ComponentResourcesManage.$stage.$box.$api.addShow("#000000","#end");
                  GameData.$fightBoolean = true;
                  this.visible = false;
                  this.m_str = "";
                  if(!GameData.ns_end)
                  {
                     GameData.ns_end = new Object();
                  }
                  _loc1_ = Math.random();
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "setName":this.m_xml.game[this.m_xml_id].@target + _loc1_,
                     "name":"ChuanSongZheng",
                     "down":true,
                     "type":"SkillChuanSongZeng",
                     "fuck":0,
                     "time":99999,
                     "role":null,
                     "x":this.m_xml.game[this.m_xml_id].@x,
                     "y":ComponentResourcesManage.$word.mapRedPoint(this.m_xml.game[this.m_xml_id].@x),
                     "scaleX":1
                  });
                  GameData.ns_end[this.m_xml.game[this.m_xml_id].@target + _loc1_] = ComponentResourcesManage.$word.$elementsOb[this.m_xml.game[this.m_xml_id].@target + _loc1_];
                  _loc2_ = ComponentResourcesManage.$word.$elementsOb[this.m_xml.game[this.m_xml_id].@target + _loc1_];
                  _loc2_.$ob.to = int(this.m_xml.game[this.m_xml_id].@to);
                  _loc2_.$ob.tox = int(this.m_xml.game[this.m_xml_id].@tox);
               }
               else if(this.m_xml.game[this.m_xml_id].@type == "ok")
               {
                  _loc3_ = false;
               }
               else if(this.m_xml.game[this.m_xml_id].@type == "over")
               {
                  ComponentResourcesManage.$stage.$box.$api.addShow("挑战结果","挑战结束",true);
                  GameData.ns_end = new Object();
                  _loc3_ = false;
               }
               _loc4_ = this;
               _loc5_ = this.m_xml_id + 1;
               _loc4_.m_xml_id = _loc5_;
            }
         }
         while(_loc3_);
      }
      
      public function set theName(param1:String) : void
      {
         this.txt_name.text = param1;
      }
      
      public function set theHead(param1:BitmapData) : void
      {
         this.bitmap.bitmapData = param1;
      }
   }
}

