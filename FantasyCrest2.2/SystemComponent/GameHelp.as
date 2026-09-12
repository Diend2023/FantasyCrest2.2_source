package SystemComponent
{
   import SystemEye.*;
   import com.gskinner.motion.*;
   import eye.Draw.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.*;
   import person.text.*;
   
   public class GameHelp extends Sprite
   {
      
      private const help_jiben:String = "1P:\n基本操作：A S D W  \n攻击键：J\n跳跃键：K \n瞬步键：L \n技能键：U I O \n辅助键：P \n\n 2P:\n基本操作：↑ ↓ ← → \n攻击键：1 \n跳跃键：2\n瞬步键：3\n技能键：4 5 6\n辅助键：9\n\n组合技能：使用基本操作键+技能键or辅助键，有些技能需要两次基本操作键组合。出招表在游戏战斗里的暂停里。\n 暂停键：Enter";
      
      private const help_cany:String = "被动·残影：在进行某一阶段的技能过程中，可以强制进行释放其他技能。残影生效时，会产生白色的残影。\n但每一次残影之后，需要直到技能停止之后，才可以再使用残影。这是战斗技巧之一。";
      
      private const help_jump:String = "被动·快速起身：在打飞过程中，打飞的力度不大的情况下，是可以直接按K快速起身，但之前，要确保还有一段跳的使用可能。";
      
      private const help_fight:String = "战力秘籍：战力是代表你的力量，如何获得高战力呢？\n高战力的要素：\n1、战斗时间耗时越少\n2、血量保留量，如果是满血，还有双倍战力奖励\n3、二连胜会有战力奖励\n纹章使们，加油吧！更多强大的角色等着你去使用！";
      
      private var _help_text:Bitmap;
      
      public function GameHelp()
      {
         super();
         var _loc1_:* = null;
         this.graphics.beginFill(0,0.5);
         this.graphics.drawRect(0,0,700,500);
         _loc1_ = new Bitmap(DataStorage.readImg("BOX"));
         this.addChild(_loc1_);
         _loc1_.x = 700 / 2 - _loc1_.width / 2;
         _loc1_.y = 450 / 2 - _loc1_.height / 2;
         var _loc2_:* = TextBitmap.createBitmap("游戏帮助",412,46,32);
         this.addChild(_loc2_);
         _loc2_.y = _loc1_.y + 5;
         _loc2_.x = _loc1_.x;
         var _loc3_:* = new SystemButton(BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"),XML(DataStorage.readText("buttonUI1"))),TextBitmap.createBitmapData("基本操作",100,26));
         this.addChild(_loc3_);
         _loc3_.x = _loc1_.x + 3;
         _loc3_.y = _loc1_.y + 37;
         _loc3_.$function = this.jbhelp;
         _loc3_ = new SystemButton(BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"),XML(DataStorage.readText("buttonUI1"))),TextBitmap.createBitmapData("被动·残影",100,26));
         this.addChild(_loc3_);
         _loc3_.x = _loc1_.x + 3;
         _loc3_.y = _loc1_.y + 37 + 22 * 1;
         _loc3_.$function = this.cyhelp;
         _loc3_ = new SystemButton(BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"),XML(DataStorage.readText("buttonUI1"))),TextBitmap.createBitmapData("被动·快速起身",100,26));
         this.addChild(_loc3_);
         _loc3_.x = _loc1_.x + 3;
         _loc3_.y = _loc1_.y + 37 + 22 * 2;
         _loc3_.$function = this.kshelp;
         _loc3_ = new SystemButton(BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"),XML(DataStorage.readText("buttonUI1"))),TextBitmap.createBitmapData("战力秘籍",100,26));
         this.addChild(_loc3_);
         _loc3_.x = _loc1_.x + 3;
         _loc3_.y = _loc1_.y + 37 + 22 * 3;
         _loc3_.$function = this.fighthelp;
         _loc3_ = new SystemButton(BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"),XML(DataStorage.readText("buttonUI1"))),TextBitmap.createBitmapData("关闭",100,26));
         this.addChild(_loc3_);
         _loc3_.x = _loc1_.x + 4;
         _loc3_.y = _loc1_.y + 37 + 22 * 4;
         _loc3_.$function = this.del;
         this._help_text = TextBitmap.createBitmap(this.help_jiben,302,_loc1_.height,12,TextFieldAutoSize.LEFT);
         this.addChild(this._help_text);
         this._help_text.y = _loc1_.y + 45;
         this._help_text.x = _loc1_.x + 105;
         this.alpha = 0;
         var _loc4_:* = new GTween(this,0.3,{"alpha":1});
         _loc4_.play();
      }
      
      private function del() : void
      {
         var _loc1_:* = new GTween(this,0.3,{"alpha":0});
         _loc1_.play();
         _loc1_.addEventListener(Event.COMPLETE,this.close);
      }
      
      private function close(param1:Event) : *
      {
         this.parent.removeChild(this);
      }
      
      private function jbhelp() : void
      {
         this._help_text.bitmapData = TextBitmap.createBitmapData(this.help_jiben,302,this._help_text.height,12,TextFieldAutoSize.LEFT);
      }
      
      private function cyhelp() : void
      {
         this._help_text.bitmapData = TextBitmap.createBitmapData(this.help_cany,302,this._help_text.height,12,TextFieldAutoSize.LEFT);
      }
      
      private function kshelp() : void
      {
         this._help_text.bitmapData = TextBitmap.createBitmapData(this.help_jump,302,this._help_text.height,12,TextFieldAutoSize.LEFT);
      }
      
      private function fighthelp() : void
      {
         this._help_text.bitmapData = TextBitmap.createBitmapData(this.help_fight,302,this._help_text.height,12,TextFieldAutoSize.LEFT);
      }
   }
}

