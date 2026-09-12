package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class CaiHongMie
   {
      
      public static var $ob:Object = new Object();
      
      public function CaiHongMie()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["咩咩咩"] = {
            "cd":3,
            "w":500,
            "h":1000,
            "s":"",
            "key":Keyboard.U
         };
         $ob["空中攻击"] = {
            "cd":0,
            "k":true,
            "w":500,
            "s":"",
            "key":Keyboard.J
         };
         $ob["普通攻击"] = {
            "cd":2,
            "w":500,
            "s":"",
            "key":Keyboard.J
         };
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/caihongmie.png","photo","CaiHongMie");
         SystemLoading.addTask("File/indexFile/img/role/caihongmie.xml","text","CaiHongMie");
         SystemLoadType.loadRoleSkillData("CNM/M");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         while(_loc4_ <= 1)
         {
            loop2:
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "W":
                        return "上旋腿";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "S":
                        return "火焰瞬移";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                     case "W":
                        return "炎舞";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "原子";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "瞬炎";
                     case "W":
                        return "爆发";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         switch(param2)
         {
            case Keyboard.J:
               return "普通攻击";
            case Keyboard.K:
               return "none";
            case Keyboard.L:
               return "瞬步";
            case Keyboard.U:
               return "咩咩咩";
            case Keyboard.I:
               return "手枪";
            case Keyboard.O:
               return "炎帝";
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         while(_loc4_ <= 1)
         {
            loop1:
            switch(param2)
            {
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "S":
                        return "火枪";
                     default:
                        break loop1;
                  }
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         switch(param2)
         {
            case Keyboard.J:
               return "空中攻击";
            case Keyboard.U:
               return "落炎";
            default:
               return "none";
         }
      }
      
      public static function Hurt(param1:SystemGameRole) : int
      {
         switch(param1.$frameString)
         {
            case "死氣亂擊":
               return 10;
            default:
               return 20;
         }
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         var _loc3_:Object = null;
         var _loc4_:SystemGameRole = null;
         var _loc5_:int = 0;
         if(Math.random() * 10 > 9)
         {
            param1.stoic = 0.2;
         }
         param1.goQZ(Math.random(),Math.random(),Math.random(),false);
         var _loc2_:Array = param1.hitRoleAndSkill(99999,true);
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_] as SystemGameRole;
            _loc5_ = _loc4_.$hpMax / 80 / 36;
            _loc4_.sethp(_loc4_.gethp - 1);
         }
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         switch(param1.$frameString)
         {
            case "咩咩咩":
               if((param1.$frameInt == 5 || param1.$frameInt == 6 || param1.$frameInt == 4 || param1.$frameInt == 7 || param1.$frameInt == 3) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "troops":param1.$troops,
                     "hp":1,
                     "blendMode":BlendMode.NORMAL,
                     "gox":Math.random() * 10,
                     "goy":Math.random() * 10 - 5,
                     "name":"CNM/M",
                     "type":"SkillDaBai",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y - 90,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.Speed * 4);
               RoleMathType.alphaFrame(param1);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,7,20);
               break;
            case "空中攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,7,20);
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "查克拉˙伸手擊":
         }
      }
   }
}

