package SystemComponent
{
   import SystemEye.GameData;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.getDefinitionByName;
   import game2016.RoleParsing;
   
   public class SystemPauseLayer extends Sprite
   {
      
      private var $textA:TextField;
      
      private var $textB:TextField;
      
      public function SystemPauseLayer(param1:int, param2:int)
      {
         super();
         this.$textA = new TextField();
         this.$textB = new TextField();
         this.graphics.beginFill(0,0.5);
         this.graphics.drawRect(0,0,param1,param2);
         this.graphics.endFill();
         this.addChild(this.$textA);
         this.$textA.width = param1 / 2;
         this.$textA.height = param2;
         this.addChild(this.$textB);
         this.$textB.width = param1 / 2;
         this.$textB.height = param2;
         this.$textB.x = param1 / 2;
      }
      
      public function show(param1:SystemGameRole, param2:SystemGameRole) : *
      {
         this.$textA.text = "1P:" + GameData.getSelectName(param1.$target);
         this.$textB.text = "2P:" + GameData.getSelectName(param2.$target);
         this.$textA.appendText(this.getSkillString(param1));
         this.$textB.appendText(this.getSkillString(param2));
         var _loc3_:* = new TextFormat(null,null,16777215);
         this.$textA.setTextFormat(_loc3_);
         this.$textB.setTextFormat(_loc3_);
      }
      
      public function getSkillString(param1:SystemGameRole) : String
      {
         var _loc2_:* = "\n";
         var _loc3_:* = param1.roleData ? RoleParsing : getDefinitionByName("SystemComponent.Word.Role." + param1.$target) as Class;
         var _loc4_:* = param1.roleData ? param1.roleData.skillData : _loc3_.$ob;
         if(GameData._select_array.indexOf(param1.$target) != -1)
         {
            _loc2_ += this.sort(_loc4_,Keyboard.J);
            _loc2_ += this.sort(_loc4_,Keyboard.U);
            _loc2_ += this.sort(_loc4_,Keyboard.I);
            _loc2_ += this.sort(_loc4_,Keyboard.O);
            _loc2_ += this.sort(_loc4_,Keyboard.L);
            _loc2_ += this.sort(_loc4_,Keyboard.P);
         }
         else
         {
            _loc2_ = "\n貌似被什么东西隐藏住了";
         }
         return _loc2_;
      }
      
      public function sort(param1:Object, param2:int) : String
      {
         var _loc3_:* = null;
         var _loc4_:* = "";
         for(_loc3_ in param1)
         {
            if(_loc3_ != "普通攻击" && _loc3_ != "空中攻击" && param2 == param1[_loc3_].key)
            {
               if(param1[_loc3_].g)
               {
                  _loc4_ += "[" + param1[_loc3_].g + "] ";
               }
               else
               {
                  _loc4_ += "[" + _loc3_ + "]";
               }
               _loc4_ += " [CD:" + param1[_loc3_].cd + "] ";
               _loc4_ = _loc4_ + (" 操作:" + this.getSkillUseString(param1[_loc3_].s,param1[_loc3_].key));
               _loc4_ = _loc4_ + (param1[_loc3_].k ? " (空中) " : " ");
               if(param1[_loc3_].n)
               {
                  _loc4_ += "<" + param1[_loc3_].n + ">";
               }
               _loc4_ += "\n";
            }
         }
         if(_loc4_ != "")
         {
            switch(param2)
            {
               case Keyboard.J:
                  _loc4_ = "- J系列 -\n" + _loc4_;
                  break;
               case Keyboard.L:
                  _loc4_ = "- L系列 -\n" + _loc4_;
                  break;
               case Keyboard.U:
                  _loc4_ = "- U系列 -\n" + _loc4_;
                  break;
               case Keyboard.I:
                  _loc4_ = "- I系列 -\n" + _loc4_;
                  break;
               case Keyboard.P:
                  _loc4_ = "- P系列 -\n" + _loc4_;
                  break;
               case Keyboard.O:
                  _loc4_ = "- O系列 -\n" + _loc4_;
            }
         }
         return _loc4_;
      }
      
      public function getSkillUseString(param1:String, param2:int) : String
      {
         var _loc3_:* = "";
         var _loc4_:* = 0;
         while(_loc4_ < param1.length)
         {
            switch(param1.charAt(_loc4_))
            {
               case "S":
                  _loc3_ += "↓";
                  break;
               case "A":
                  _loc3_ += "→";
                  break;
               case "W":
                  _loc3_ += "↑";
                  break;
               case "D":
                  _loc3_ += "→";
            }
            _loc4_++;
         }
         if(_loc3_ != "")
         {
            _loc3_ += " + ";
         }
         switch(param2)
         {
            case Keyboard.J:
               _loc3_ += "J";
               break;
            case Keyboard.K:
               _loc3_ += "K";
               break;
            case Keyboard.L:
               _loc3_ += "L";
               break;
            case Keyboard.U:
               _loc3_ += "U";
               break;
            case Keyboard.I:
               _loc3_ += "I";
               break;
            case Keyboard.P:
               _loc3_ += "P";
               break;
            case Keyboard.O:
               _loc3_ += "O";
         }
         return _loc3_;
      }
   }
}

