package SystemComponent.CardClass
{
   import SystemComponent.*;
   import SystemEye.*;
   import flash.display.*;
   import flash.events.*;
   
   public class CardSelect extends Sprite
   {
      
      private var m_card:Card;
      
      private var m_xml:XML;
      
      private var m_sprite:Sprite;
      
      public var m_select:int;
      
      private var m_array:Array;
      
      public var m_boolean:Boolean = false;
      
      private var m_ok:Boolean = false;
      
      public function CardSelect()
      {
         super();
         this.addEventListener(Event.ADDED_TO_STAGE,this.init);
      }
      
      private function init(param1:Event) : void
      {
         NSGameData.ns = true;
         this.removeEventListener(Event.ADDED_TO_STAGE,this.init);
         this.m_xml = XML(DataStorage.readText("CARD_NS"));
         this.m_array = new Array();
         this.m_sprite = new Sprite();
         this.addChild(this.m_sprite);
         var _loc2_:* = this.m_xml.ns.length();
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_)
         {
            this.m_card = new Card();
            this.m_sprite.addChild(this.m_card);
            this.m_card.x = stage.stageWidth / 2 - this.m_card.width / 2 + 400 * _loc3_;
            this.m_card.y = 120;
            this.m_card.setData(this.m_xml.ns[_loc3_]);
            this.m_card.m_id = _loc3_;
            this.m_array.push(this.m_card);
            _loc3_++;
         }
         this.addEventListener(Event.ENTER_FRAME,this.frame);
      }
      
      private function frame(param1:Event) : void
      {
         this.m_sprite.x -= (this.m_sprite.x - stage.stageWidth / 2 + this.m_array[this.m_select].x + this.m_array[this.m_select].width / 2) * 0.2;
         if(this.m_ok)
         {
            this.alpha -= 0.15;
            if(this.alpha <= 0)
            {
               SystemEvent.case_1P_VS_ALL();
               ComponentResourcesManage.$stage.$lvexp.vis = true;
            }
         }
      }
      
      public function OK() : void
      {
         this.m_boolean = true;
         GameData.ns_select = this.m_xml.ns[this.m_select].@select;
         if(!GameData.ns_ob[GameData.ns_select])
         {
            GameData.ns_ob[GameData.ns_select] = new Object();
            GameData.ns_ob[GameData.ns_select]["card"] = 0;
         }
         SystemLoading.addTask("File/indexFile/data/ns/" + GameData.ns_select + ".xml","text","NS_" + GameData.ns_select,true);
         SystemLoading.startForOverOpen = this.loadTrue;
      }
      
      private function loadTrue() : void
      {
         this.m_ok = true;
      }
      
      public function CG() : void
      {
         var _loc1_:* = 0;
         this.removeEventListener(Event.ENTER_FRAME,this.frame);
         while(_loc1_ < this.m_array.length)
         {
            this.m_array[_loc1_].CG();
            this.m_sprite.removeChild(this.m_array[_loc1_]);
            this.m_array[_loc1_] = null;
            _loc1_++;
         }
         this.parent.removeChild(this);
      }
   }
}

