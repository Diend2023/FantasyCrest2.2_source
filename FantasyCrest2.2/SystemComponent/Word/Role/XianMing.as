package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.SystemMucisPlay;
   import SystemEye.ComponentResourcesManage;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class XianMing
   {
      
      public static var $ob:Object = new Object();
      
      public function XianMing()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["死氣亂擊"] = {"cd":5};
         $ob["防護披風"] = {"cd":8};
         $ob["死氣滑翔"] = {"cd":5};
         $ob["死氣劍角"] = {"cd":5};
         $ob["死氣衝擊"] = {"cd":5};
         $ob["死氣之炎"] = {"cd":5};
         $ob["零地點突破"] = {"cd":8};
         $ob["防護披風"] = {"cd":8};
         $ob["零地點突破˙改"] = {"cd":8};
         $ob["X˙BURNER"] = {"cd":10};
         $ob["宇宙超炸裂"] = {"cd":10};
         $ob["XX˙BURNER"] = {"cd":15};
         $ob["彭哥列匣"] = {"cd":5};
         $ob["死氣噴射"] = {"cd":3};
         $ob["死氣緩衝"] = {"cd":3};
         $ob["X˙BURNER AIR"] = {"cd":10};
         $ob["死氣飛行"] = {"cd":2};
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/xianming.png","photo","XianMing");
         SystemLoading.addTask("File/indexFile/img/role/xianming.xml","text","XianMing");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:Boolean = param1.$left;
         var _loc4_:Boolean = param1.$right;
         var _loc5_:Boolean = param1.$up;
         var _loc6_:Boolean = param1.$down;
         if(Keyboard.L == param2)
         {
            return "瞬步";
         }
         if(!_loc5_ && !_loc6_)
         {
            switch(param2)
            {
               case Keyboard.J:
                  return "普通攻击";
               case Keyboard.K:
                  return "none";
               case Keyboard.U:
                  return "死氣衝擊";
               case Keyboard.I:
                  return "零地點突破";
               case Keyboard.O:
                  return "X˙BURNER";
               case Keyboard.P:
                  if(ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"] == null)
                  {
                     return "彭哥列匣";
                  }
            }
         }
         else if(_loc5_)
         {
            switch(param2)
            {
               case Keyboard.J:
                  return "死氣劍角";
               case Keyboard.K:
                  return "none";
               case Keyboard.U:
                  return "死氣之炎";
               case Keyboard.I:
                  if(ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"] !== null)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"].$time = 10;
                     return "防護披風";
                  }
                  break;
               case Keyboard.O:
                  if(ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"] !== null)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].$elementsOb["Skill" + param1.name + "SkillNaZi"].$time = 10;
                     return "宇宙超炸裂";
                  }
                  break;
               case Keyboard.P:
                  return "none";
            }
         }
         else if(_loc6_)
         {
            switch(param2)
            {
               case Keyboard.J:
                  return "死氣滑翔";
               case Keyboard.K:
                  return "none";
               case Keyboard.U:
                  return "死氣亂擊";
               case Keyboard.I:
                  return "零地點突破˙改";
               case Keyboard.O:
                  return "XX˙BURNER";
               case Keyboard.P:
                  return "none";
            }
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:Boolean = param1.$left;
         var _loc4_:Boolean = param1.$right;
         var _loc5_:Boolean = param1.$up;
         var _loc6_:Boolean = param1.$down;
         if(!_loc5_ && !_loc6_)
         {
            switch(param2)
            {
               case Keyboard.J:
                  return "空中攻击";
               case Keyboard.L:
                  return "死氣飛行";
               case Keyboard.K:
                  return "none";
               case Keyboard.U:
                  return "死氣噴射";
               case Keyboard.I:
                  return "none";
               case Keyboard.O:
                  return "X˙BURNER AIR";
               case Keyboard.P:
                  return "none";
            }
         }
         else if(_loc6_)
         {
            switch(param2)
            {
               case Keyboard.J:
                  return "死氣緩衝";
               case Keyboard.K:
                  return "none";
               case Keyboard.U:
                  return "none";
               case Keyboard.I:
                  return "none";
               case Keyboard.O:
                  return "none";
               case Keyboard.P:
                  return "none";
            }
         }
         else if(_loc5_)
         {
            switch(param2)
            {
               case Keyboard.J:
                  return "none";
               case Keyboard.K:
                  return "none";
               case Keyboard.U:
                  return "none";
               case Keyboard.I:
                  return "none";
               case Keyboard.O:
                  return "none";
               case Keyboard.P:
                  return "none";
            }
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "彭哥列匣":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"SkillNaZi",
                     "target":true,
                     "blendMode":BlendMode.NORMAL,
                     "fuck":0,
                     "time":1000,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "X˙BURNER AIR":
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "XGuang";
                  SystemMucisPlay.setMusic = "MXGuang";
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XXYan2",
                     "fuck":3,
                     "time":40,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 520,
                     "scaleX":-param1.$scaleX * 1,
                     "scaleY":-1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XXYan2",
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "零地點突破˙改":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoQi",
                     "gox":0,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"TuiHuo",
                     "gox":10,
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 30 * -param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":-param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"TuiHuo",
                     "gox":10,
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "宇宙超炸裂":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,19,22,param1.$speed * 3);
               if(param1.hitRoleBoolean && param1.$frameInt < 22 && param1.$frameInt > 19)
               {
                  param1.$frameInt = 22;
               }
               if(param1.$frameInt == 22 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "GJSO1";
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"YuanFei",
                     "gox":10,
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "死氣劍角":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.$speed * 2);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,0,1,param1.$speed * 2);
               param1.$jumpBoolean = true;
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"LuanJi",
                     "target":true,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "死氣噴射":
               param1.$x -= param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,8,param1.$speed * 2.5 - param1.$frameInt);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,3,9,param1.$speed * 2 - param1.$frameInt);
               break;
            case "死氣緩衝":
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,4,9,param1.$speed * 2.5 - param1.$frameInt);
               break;
            case "死氣衝擊":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,16,param1.$speed * 3);
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoFa",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"SuChuan",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
               }
               else if(param1.$frameInt == 15 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoPo",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "XX˙BURNER":
               if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XXYan",
                     "fuck":3,
                     "time":40,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.6,
                     "gox":20
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XXQ",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "死氣之炎":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"SiQi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "死氣飛行":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed * 3);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,9,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,16,19,4);
               break;
            case "防護披風":
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"PiFeng",
                     "target":true,
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               break;
            case "死氣亂擊":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,7,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,12,14,5);
               if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"LuanJi",
                     "target":true,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "死氣滑翔":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,8,param1.$speed * 2);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "HuaJi";
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"HuaJi",
                     "target":true,
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "零地點突破":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "LingBing";
                  param1.stoic = 1;
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"LingDian",
                     "target":true,
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"LingBing",
                     "target":true,
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "X˙BURNER":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  SystemMucisPlay.setMusic = "XGuang";
                  SystemMucisPlay.setMusic = "MXGuang";
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XGuang",
                     "fuck":3,
                     "time":20,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XGuang",
                     "fuck":3,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":-param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].$map.setZhen = 1;
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,param1.$speed * 3);
               param1.stoic = 0.2;
         }
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

