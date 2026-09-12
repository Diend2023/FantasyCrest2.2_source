package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class WuZeiNiang
   {
      
      public static var $ob:Object = new Object();
      
      public function WuZeiNiang()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["炎帝"] = {"cd":15};
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/wuzeiniang.png","photo","WuZeiNiang");
         SystemLoading.addTask("File/indexFile/img/role/wuzeiniang.xml","text","WuZeiNiang");
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
                        return "引爆黏土．雙翼鳥";
                     case "S":
                        return "引爆黏土．地雷";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "八卦六十四掌";
                     case "S":
                        return "引爆黏土．螞蟻";
                     case "SS":
                        return "引爆黏土．蜈蚣";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "八卦˙空掌";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "八卦˙空掌˙强";
                     case "SS":
                        return "八卦一百二十八掌";
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
               return "引爆黏土．爆炸";
            case Keyboard.I:
               return "柔拳法˙點穴";
            case Keyboard.O:
               return "八卦˙四天空掌";
            case Keyboard.P:
               if(!(ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "Buff2"] is SkillShow))
               {
                  return "白眼";
               }
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
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
                        return "八卦破";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "八卦六十四掌";
                     case "S":
                        return "八卦掌˙回天";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "八卦˙空掌";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "八卦˙空掌˙强";
                     case "SS":
                        return "八卦一百二十八掌";
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
               return "空中攻击";
            case Keyboard.K:
               return "none";
            case Keyboard.L:
               return "瞬步";
            case Keyboard.U:
               return "八卦˙破山擊";
            case Keyboard.I:
               return "柔拳法˙點穴";
            case Keyboard.O:
               return "八卦˙四天空掌";
            case Keyboard.P:
               if(!(ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "Buff2"] is SkillShow))
               {
                  return "白眼";
               }
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "引爆黏土．蜈蚣":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/Cong2",
                     "type":"SkillXiaoDi",
                     "fuck":0,
                     "time":800,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．爆炸":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/He",
                     "type":"SkillXiaoDi",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．螞蟻":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "gox":3,
                     "name":"XD/Cong",
                     "type":"SkillXiaoDi",
                     "fuck":9999,
                     "time":800,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．地雷":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/DiLei",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":400,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/DiLei",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":400,
                     "role":param1,
                     "x":param1.$x + 45 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "name":"XD/DiLei",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":400,
                     "role":param1,
                     "x":param1.$x + 60 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "引爆黏土．雙翼鳥":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "gox":8,
                     "goy":-8,
                     "name":"XD/ShuangYiNiao",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":40,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y - 45,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoZha2",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 30 * param1.$scaleX,
                     "y":param1.$y + 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,11,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,15,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,19,21,4);
               if(param1.$frameInt == 18 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoZha2",
                     "type":"SkillXiaoDi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x + 45 * param1.$scaleX,
                     "y":param1.$y - 45,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.$speed * 4);
               RoleMathType.alphaFrame(param1);
               RoleMathType.stoicType(param1,2,4);
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

