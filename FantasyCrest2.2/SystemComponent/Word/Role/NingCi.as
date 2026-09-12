package SystemComponent.Word.Role
{
   import SystemComponent.*;
   import SystemComponent.Word.*;
   import SystemEye.*;
   import eye.Math.*;
   import flash.ui.*;
   
   public class NingCi
   {
      
      public static var $ob:Object = new Object();
      
      public function NingCi()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["八卦破"] = {
            "cd":6,
            "w":30,
            "s":"W",
            "key":Keyboard.J,
            "g":"柔拳法.空御"
         };
         $ob["八卦六十四掌"] = {
            "cd":10,
            "w":50,
            "s":"AA",
            "key":Keyboard.U
         };
         $ob["八卦掌˙回天"] = {
            "cd":10,
            "w":100,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["八卦˙空掌"] = {
            "cd":12,
            "w":200,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["八卦˙空掌˙强"] = {
            "mp":200,
            "cd":20,
            "w":400,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["八卦一百二十八掌"] = {
            "mp":300,
            "bs":0.5,
            "cd":30,
            "w":200,
            "s":"SS",
            "key":Keyboard.O
         };
         $ob["八卦˙破山擊"] = {
            "cd":10,
            "w":100,
            "s":"",
            "key":Keyboard.U
         };
         $ob["柔拳法˙點穴"] = {
            "cd":10,
            "w":50,
            "s":"",
            "key":Keyboard.I
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["白眼"] = {
            "cd":30,
            "w":1000,
            "s":"",
            "key":Keyboard.P
         };
         $ob["八卦˙四天空掌"] = {
            "mp":200,
            "cd":20,
            "w":400,
            "s":"",
            "key":Keyboard.O
         };
      }
      
      public static function Hrut(param1:SystemGameRole) : void
      {
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/ningci.png","photo","NingCi");
         SystemLoading.addTask("File/indexFile/img/role/ningci.xml","text","NingCi");
         SystemLoadType.loadRoleSkillData("Buff2");
         SystemLoadType.loadRoleSkillData("LanGuang");
         SystemLoadType.loadRoleSkillData("QuFeng");
         SystemLoadType.loadRoleSkillData("BaGua");
         SystemLoadType.loadRoleSkillData("KongZhang");
         SystemLoadType.loadRoleSkillData("JuanFeng");
         SystemLoadType.loadHredSkillData("ningci1");
         SystemLoadType.loadHredSkillData("ningci2");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/1.mp3","sound","ningci_1");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/2.mp3","sound","ningci_2");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/4.mp3","sound","ningci_4");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/5.mp3","sound","ningci_5");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/6.mp3","sound","ningci_6");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/I.mp3","sound","ningci_I");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/O.mp3","sound","ningci_O");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/SI.mp3","sound","ningci_SI");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/SOXO.mp3","sound","ningci_SOXO");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/SU.mp3","sound","ningci_SU");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/SU2.mp3","sound","ningci_SU2");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/U.mp3","sound","ningci_U");
         SystemLoading.addTask("File/indexFile/sound/role/ningci/U2.mp3","sound","ningci_U2");
         SystemLoadType.loadRoleSkillData("DaJi1");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:* = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:* = 0;
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
               return "普通攻击";
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
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         if(param2 == Keyboard.J)
         {
            return "空中攻击";
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         switch(param1.$frameString)
         {
            case "八卦˙四天空掌":
               RoleMathType.stoicType(param1,0,2);
               RoleMathType.stoicType(param1,4,6);
               RoleMathType.setPhoto(param1,"HREDningci1");
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"JuanFeng",
                     "type":"SkillNingCi",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "柔拳法˙點穴":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,6,param1.$speed * 4);
               if(param1.hitRoleBoolean && param1.$frameInt < 7)
               {
                  param1.$frameInt = 7;
               }
               RoleMathType.stoicType(param1,7,9);
               break;
            case "八卦˙空掌˙强":
               RoleMathType.stoicType(param1,0,2);
               RoleMathType.stoicType(param1,8,10);
               RoleMathType.setPhoto(param1,"HREDningci1");
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"KongZhang",
                     "type":"SkillNingCi",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"KongZhang",
                     "type":"SkillNingCi",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$x - 10 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * -1
                  });
               }
               break;
            case "八卦一百二十八掌":
               param1.$god = 5;
               param1.stoic = 3;
               RoleMathType.setPhoto(param1,"HREDningci1");
               if(param1.$frameInt == 0 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$ob["BG"] = null;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "name":"BaGua",
                     "type":"SkillNingCi",
                     "target":true,
                     "fuck":999,
                     "time":400,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt >= 5 && param1.$ob["BG"] is SystemGameRole && param1.$frameInt < 41)
               {
                  param1.$x += 0.2 * (param1.$ob["BG"].$x - (param1.$x + 40 * param1.$scaleX));
                  if(Math.abs(param1.$x - ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "BaGua"].$x) > 120 || Math.abs(param1.$y - param1.$ob["BG"].$y) > param1.height * 0.8)
                  {
                     ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "BaGua"].$time = 0;
                     if(Math.abs(param1.$y - param1.$ob["BG"].$y) < param1.height * 0.8)
                     {
                        param1.$frameInt = 41;
                     }
                     else
                     {
                        param1.stopSkill();
                     }
                  }
               }
               else if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "BaGua"].$time = 0;
                  param1.stopSkill();
               }
               if(param1.$frameInt == 41 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.$elementsOb["Skill" + param1.name + "BaGua"].$time = 0;
               }
               if(param1.$frameInt == 42 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LanGuang",
                     "type":"SkillNingCi",
                     "target":true,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y - 10,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "八卦破":
               if(param1.$frameInt == 0)
               {
                  param1.$ob["ZQ"] = null;
               }
               if(param1.$frameInt >= 3 && param1.$ob["ZQ"] !== null)
               {
                  param1.$ob["ZQ"].$x = param1.$x + 20 * param1.$scaleX;
                  param1.$ob["ZQ"].$y = param1.$y - 30;
                  param1.$ob["ZQ"].rigid = 9;
                  param1.$ob["ZQ"].$jumpNumMath = 0;
                  param1.$ob["ZQ"].frameString = "受伤";
                  param1.$ob["ZQ"].fuckY = 10;
               }
               break;
            case "八卦六十四掌":
               RoleMathType.stoicType(param1,14,16);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,14,4);
               if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LanGuang",
                     "type":"SkillNingCi",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y - 10,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "八卦掌˙回天":
               if(param1.$frameInt > 1)
               {
                  param1.stoic = 0.5;
               }
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"QuFeng",
                     "type":"SkillNingCi",
                     "target":true,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y - 10,
                     "scaleX":-param1.$scaleX * 1.3
                  });
               }
               break;
            case "八卦˙破山擊":
               RoleMathType.stoicType(param1,0,1);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"LanGuang",
                     "type":"SkillNingCi",
                     "target":true,
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y - 10,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,8,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,11,13,6);
               break;
            case "八卦˙空掌":
               if(param1.$frameInt > 3)
               {
                  param1.stoic = 0.5;
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.$speed * 4);
               RoleMathType.alphaFrame(param1);
               RoleMathType.stoicType(param1,2,4);
               break;
            case "白眼":
               RoleMathType.stoicType(param1,0,2);
               RoleMathType.setPhoto(param1,"HREDningci2");
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"Buff2",
                     "type":"SkillNingCi",
                     "target":true,
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y + 30,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         param2.$ob["StopMP"] = 50;
         switch(param1.$frameString)
         {
            case "八卦破":
               param1.$ob["ZQ"] = param2;
               break;
            case "柔拳法˙點穴":
               param2.frameString = "受伤";
               param2.rigid = 60;
               break;
            case "八卦一百二十八掌":
               if(param1.$frameInt <= 39)
               {
                  param2.$ob["StopMP"] = 400;
                  param2.$ob["StopCD"] = 200;
                  if(param1.$hpID !== -1)
                  {
                     ComponentResourcesManage.$word.$hpmpArray[param1.$hpID].addNum();
                     ComponentResourcesManage.$word.$hpmpArray[param1.$hpID].addNum();
                  }
               }
         }
      }
   }
}

