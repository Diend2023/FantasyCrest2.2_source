package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class JianXin
   {
      
      public static var $ob:Object = new Object();
      
      public function JianXin()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/jianxin.png","photo","JianXin");
         SystemLoading.addTask("File/indexFile/img/role/jianxin.xml","text","JianXin");
         SystemLoading.addTask("File/indexFile/img/skill/YueGuang.png","photo","YueGuang");
         SystemLoading.addTask("File/indexFile/img/skill/YueGuang.xml","text","YueGuang");
         SystemLoading.addTask("File/indexFile/img/skill/LongShan.png","photo","LongShan");
         SystemLoading.addTask("File/indexFile/img/skill/LongShan.xml","text","LongShan");
         SystemLoading.addTask("File/indexFile/img/skill/LongShanQiang.png","photo","LongShanQiang");
         SystemLoading.addTask("File/indexFile/img/skill/LongShanQiang.xml","text","LongShanQiang");
         SystemLoading.addTask("File/indexFile/img/skill/LongZhanYi.png","photo","LongZhanYi");
         SystemLoading.addTask("File/indexFile/img/skill/LongZhanYi.xml","text","LongZhanYi");
         SystemLoadType.loadRoleSkillData("LongZhanEr");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("TuLongShan");
         SystemLoadType.loadRoleSkillData("XuanJi");
         SystemLoadType.loadRoleSkillData("Xuan");
         SystemLoadType.loadRoleSkillData("JX/L");
         SystemLoadType.loadRoleSkillData("BaoFa1");
         SystemLoadType.loadRoleSkillData("TuoZhan");
         SystemLoadType.loadRoleSkillData("XieZhan");
         SystemLoadType.loadRoleSkillData("Dao1");
         SystemLoadType.loadRoleSkillData("ShangZhan");
         SystemLoadType.loadRoleSkillData("BaoFa2");
         SystemLoadType.loadRoleSkillData("BoYin");
         SystemLoadType.loadRoleSkillData("BaDao");
         SystemLoadType.loadRoleSkillData("Zhan");
         SystemLoadType.loadRoleSkillData("JX/J");
         SystemLoadType.loadRoleSkillData("JX/D");
         SystemLoadType.loadRoleSkillData("B/F");
         SystemLoadType.loadRoleSkillData("YH/Y");
         SystemLoadType.loadRoleSkillData("YH/M");
         SystemLoadType.loadRoleSkillData("JiuLongShan");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/3.mp3","sound","jianxin_3");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/HAN1.mp3","sound","jianxin_HAN1");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/HAN3.mp3","sound","jianxin_HAN3");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/HAN4.mp3","sound","jianxin_HAN4");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/HAN5.mp3","sound","jianxin_HAN5");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/HAN6.mp3","sound","jianxin_HAN6");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/KSJ.mp3","sound","jianxin_KSJ");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/KU.mp3","sound","jianxin_KU");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/O.mp3","sound","jianxin_O");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/SJ.mp3","sound","jianxin_SJ");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/SU.mp3","sound","jianxin_SU");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/U.mp3","sound","jianxin_U");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/XI.mp3","sound","jianxin_XI");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/XI2.mp3","sound","jianxin_XI2");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/XJ.mp3","sound","jianxin_XJ");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/XL.mp3","sound","jianxin_XL");
         SystemLoading.addTask("File/indexFile/sound/role/jianxin/XO1.mp3","sound","jianxin_XO1");
         SystemLoadType.loadHredSkillData("jianxin1");
         SystemLoadType.loadHredSkillData("jianxin2");
      }
      
      public static function init() : void
      {
         $ob["龍槌閃"] = {
            "cd":6,
            "w":50,
            "k":true,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["龍翔閃"] = {
            "cd":8,
            "w":50,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["九龙头闪"] = {
            "cd":45,
            "mp":200,
            "w":1000,
            "s":"",
            "key":Keyboard.O
         };
         $ob["龍卷閃．嵐"] = {
            "cd":15,
            "w":100,
            "k":true,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["龍巢閃˙咬"] = {
            "cd":15,
            "w":100,
            "s":"SS",
            "key":Keyboard.U
         };
         $ob["天翔龍閃"] = {
            "cd":35,
            "mp":250,
            "w":1000,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["破军式"] = {
            "cd":10,
            "w":200,
            "s":"AA",
            "key":Keyboard.U
         };
         $ob["龍鳴閃"] = {
            "cd":10,
            "w":100,
            "s":"AA",
            "key":Keyboard.J
         };
         $ob["土龙闪"] = {
            "cd":15,
            "w":200,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["一刀流"] = {
            "cd":12,
            "w":50,
            "s":"SS",
            "key":Keyboard.J
         };
         $ob["快速后移"] = {
            "cd":1,
            "w":100,
            "s":"S",
            "key":Keyboard.L
         };
         $ob["龍卷閃˙空"] = {
            "cd":12,
            "w":200,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["龍卷閃．凩"] = {
            "cd":8,
            "w":100,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["双龙闪"] = {
            "cd":12,
            "w":100,
            "s":"AA",
            "key":Keyboard.I
         };
         $ob["劍氣"] = {
            "cd":15,
            "w":50,
            "s":"SS",
            "key":Keyboard.I
         };
         $ob["劍擊"] = {
            "cd":5,
            "w":50,
            "k":true,
            "s":"",
            "key":Keyboard.U
         };
         $ob["拔刀術"] = {
            "cd":15,
            "w":100,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["龍巢閃"] = {
            "cd":15,
            "w":100,
            "s":"",
            "key":Keyboard.U
         };
         $ob["龍卷閃．旋"] = {
            "cd":16,
            "w":1000,
            "s":"",
            "key":Keyboard.I
         };
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
                     case "DD":
                     case "AA":
                        return "龍鳴閃";
                     case "W":
                        return "龍翔閃";
                     case "S":
                        param1.qz = 0;
                        return "土龙闪";
                     case "SS":
                        return "一刀流";
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
                        return "快速后移";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "AA":
                     case "DD":
                        return "破军式";
                     case "W":
                        return "龍卷閃˙空";
                     case "S":
                        return "龍卷閃．凩";
                     case "SS":
                        return "龍巢閃˙咬";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "DD":
                     case "AA":
                        return "双龙闪";
                     case "SS":
                        return "劍氣";
                     case "S":
                        param1.qz = 0;
                        return "拔刀術";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "天翔龍閃";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.P:
                  return "none";
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
               return "龍巢閃";
            case Keyboard.I:
               return "龍卷閃．旋";
            case Keyboard.O:
               return "九龙头闪";
            case Keyboard.P:
               return "none";
            default:
               return "none";
         }
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
                        return "龍卷閃．嵐";
                     case "S":
                        return "龍槌閃";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "龍卷閃˙空";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  return "none";
               case Keyboard.O:
                  return "none";
               case Keyboard.P:
                  return "none";
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
               return "none";
            case Keyboard.U:
               return "劍擊";
            case Keyboard.I:
               return "none";
            case Keyboard.O:
               return "none";
            case Keyboard.P:
               return "none";
            default:
               return "none";
         }
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.di = null;
         }
         switch(param1.$frameString)
         {
            case "破军式":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.Speed * 5) * param1.$scaleX;
               if(param1.$frameInt == 0 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"shun",
                     "type":"SkillJianXin",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.hitRoleBoolean && param1.$frameInt < 3)
               {
                  param1.to(3);
               }
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.5;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YueGuang",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  if(param1._ex > 1)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[3,10],
                        "name":"TuLongShan",
                        "type":"SkillNvGuiJian",
                        "gox":-1,
                        "fuck":99,
                        "fps":1,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 150 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * -1.35
                     });
                  }
               }
               break;
            case "双龙闪":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,5,9,3 * param1.$scaleX);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"Zhan",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               else if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"Dao1",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 1
                  });
                  if(param1._ex > 1)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"B/F",
                        "type":"SkillGeDouJia",
                        "gox":-1,
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 40 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
               }
               break;
            case "拔刀術":
               if((param1.$frameInt == 7 || param1.$frameInt == 12) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BaDao",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 30,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  if(param1._ex > 1 && param1.$frameInt == 12)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"BaDao",
                        "type":"SkillJianXin",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y + 30,
                        "scaleX":param1.$scaleX * 1.8
                     });
                  }
               }
               break;
            case "龍鳴閃":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,1,1,5 * param1.$scaleX);
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,2,2,10 * param1.$scaleX);
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,3,3,15 * param1.$scaleX);
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,4,4,30 * param1.$scaleX);
               if(param1._ex > 1)
               {
                  if(param1.$frameInt == 1)
                  {
                     param1.stoic = 0.1;
                  }
                  param1.goQZ(0,0,10);
               }
               break;
            case "劍氣":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"BaoFa2",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  if(param1._ex > 1)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"BaDao",
                        "type":"SkillJianXin",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y + 30,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
               }
               break;
            case "龍卷閃．嵐":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,4,6,8 * param1.$scaleX);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"Xuan",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 6 && param1.$jumpBoolean)
               {
                  param1.$frameInt = 4;
               }
               else if(!param1.$jumpBoolean && param1.$frameInt < 7)
               {
                  param1.$frameInt = 7;
               }
               if(param1.$frameInt >= 3 && param1.$frameInt < 6)
               {
                  param1.stoic = 0.5;
               }
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,4,5,12);
               break;
            case "龍卷閃．凩":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,2,7,2 * param1.$scaleX);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.5;
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XieZhan",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 45,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "龍卷閃．旋":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,3,10,12 * param1.$scaleX);
               if(param1.$frameInt >= 3 && param1.$frameInt <= 10)
               {
                  param1.stoic = 0.5;
               }
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"XuanJi",
                     "type":"SkillJianXin",
                     "gox":16,
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"Dao1",
                     "type":"SkillJianXin",
                     "gox":16,
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 40 * param1.$scaleX,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "土龙闪":
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"TuLongShan",
                     "type":"SkillJianXin",
                     "gox":10,
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "一刀流":
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YiDaoZhan",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "劍擊":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.5;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":8,
                     "goy":4,
                     "name":"JX/J",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  if(param1._ex > 1)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,5],
                        "gox":10,
                        "goy":5,
                        "name":"JX/J",
                        "type":"SkillJianXin",
                        "fuck":99,
                        "time":10,
                        "role":param1,
                        "x":param1.$bit.x + Math.random() * 70 * param1.$scaleX,
                        "y":param1.$bit.y + Math.random() * 40,
                        "scaleX":param1.$scaleX * 1
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,5],
                        "gox":10,
                        "goy":5,
                        "name":"JX/J",
                        "type":"SkillJianXin",
                        "fuck":99,
                        "time":10,
                        "role":param1,
                        "x":param1.$bit.x + Math.random() * 70 * param1.$scaleX,
                        "y":param1.$bit.y + Math.random() * 40,
                        "scaleX":param1.$scaleX * 1
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,5],
                        "gox":10,
                        "goy":5,
                        "name":"JX/J",
                        "type":"SkillJianXin",
                        "fuck":99,
                        "time":10,
                        "role":param1,
                        "x":param1.$bit.x + Math.random() * 70 * param1.$scaleX,
                        "y":param1.$bit.y + Math.random() * 40,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
               }
               break;
            case "天翔龍閃":
               RoleMathType.setPhoto(param1,"HREDjianxin1");
               RoleMathType.stoicType(param1,0,2);
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,6,8,12 * param1.$scaleX);
               if(param1.$frameInt > 4)
               {
                  param1.stoic = 0.5;
               }
               if(param1.$frameInt == 0 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"BaoFa1",
                     "type":"SkillJianXin",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               else if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,5],
                     "name":"LongZhanYi",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"TuoZhan",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               if(param1.$ob.di)
               {
                  param1.$ob.di.$x += (param1.$x + 200 * param1.$scaleX - param1.$ob.di.$x) * 0.2;
               }
               break;
            case "龍卷閃˙空":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,0,5,8 * param1.$scaleX);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,0,5,-4);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YueGuang",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 35,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 1)
               {
                  param1.$jumpBoolean = true;
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,3,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,8,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,14,2);
               if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"YueGuang",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "龍巢閃˙咬":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "name":"LongShanQiang",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "龍巢閃":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "name":"LongShan",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1._ex > 2 && param1.$frameInt > 2 && int(param1.$frameInt / 2) == param1.$frameInt / 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,3],
                     "gox":10,
                     "fps":0,
                     "goy":0,
                     "name":"YH/Y",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":3,
                     "role":param1,
                     "x":param1.$bit.x + Math.random(),
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * (2 + 0.5 * Math.random())
                  });
               }
               break;
            case "九龙头闪":
               RoleMathType.setPhoto(param1,"HREDjianxin2");
               RoleMathType.stoicType(param1,4,10);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,10,param1.$speed * 5);
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  param1.$skillFrameInt = param1.$frameInt;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"JiuLongShan",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[5,10],
                     "name":"JX/L",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"YueGuang",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y + 35,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "龍翔閃":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,8,2);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  param1.$jumpBoolean = true;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"ShangZhan",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,8,-8);
               break;
            case "快速后移":
               param1.stoic = 0.2;
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,5,-param1.$speed * 3);
               param1.$jumpBoolean = true;
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,3,-2);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,4,5,2);
               break;
            case "龍槌閃":
               if(param1.$frameInt == 1)
               {
                  param1.$ob["LongZuiShan"] = 0;
               }
               if(!param1.$jumpBoolean && param1.$frameInt < 6)
               {
                  param1.$frameInt = 6;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"JX/D",
                     "type":"SkillJianXin",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt >= 5 && param1.$jumpBoolean)
               {
                  param1.$frameInt = 2;
               }
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,1,5,8 + param1.$ob["LongZuiShan"]);
               ++param1.$ob["LongZuiShan"];
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillJianXin",
                  "fuck":0,
                  "time":0,
                  "role":param1,
                  "x":param2.$bit.x,
                  "y":param2.$bit.y - param2.height / 2,
                  "scaleX":param2.$scaleX * 1
               });
         }
      }
   }
}

