package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class MoHuaJianXin
   {
      
      public static var $mxx:Array = new Array();
      
      public static var $ob:Object = new Object();
      
      public function MoHuaJianXin()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/mohuajianxin.png","photo","MoHuaJianXin");
         SystemLoading.addTask("File/indexFile/img/role/mohuajianxin.xml","text","MoHuaJianXin");
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
         SystemLoadType.loadRoleSkillData("JiuLongShan");
         SystemLoadType.loadRoleSkillData("HF/N");
         SystemLoadType.loadRoleSkillData("HF/Z");
         SystemLoadType.loadRoleSkillData("HM/Y");
         SystemLoadType.loadRoleSkillData("AS/H");
         SystemLoadType.loadRoleSkillData("XN/K");
         SystemLoadType.loadRoleSkillData("XN/BG");
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
         $mxx = $mxx.concat([1,2,3,1,15]);
         $mxx = $mxx.concat([0,1,0,0,0]);
         $mxx = $mxx.concat([0,1,0.2,0,0]);
         $mxx = $mxx.concat([0.8,0.6,0.4,0.2,0.1]);
      }
      
      public static function init() : void
      {
         $ob["龍槌閃"] = {
            "cd":6,
            "w":50,
            "k":true,
            "s":"S",
            "key":Keyboard.J,
            "g":"魔化.龍槌閃"
         };
         $ob["龍翔閃"] = {
            "cd":8,
            "w":50,
            "s":"W",
            "key":Keyboard.J,
            "g":"魔化.龍翔閃"
         };
         $ob["九龙头闪"] = {
            "cd":45,
            "mp":200,
            "w":1000,
            "s":"",
            "key":Keyboard.O,
            "g":"魔化.九龙头闪"
         };
         $ob["龍卷閃．嵐"] = {
            "cd":15,
            "w":100,
            "k":true,
            "s":"W",
            "key":Keyboard.J,
            "g":"魔化.龍卷閃．嵐"
         };
         $ob["龍巢閃˙咬"] = {
            "cd":15,
            "w":100,
            "s":"SS",
            "key":Keyboard.U,
            "g":"魔化.龍巢閃˙咬"
         };
         $ob["天翔龍閃"] = {
            "cd":35,
            "mp":250,
            "w":1000,
            "s":"S",
            "key":Keyboard.O,
            "g":"魔化.天翔龍閃"
         };
         $ob["破军式"] = {
            "cd":10,
            "w":200,
            "s":"AA",
            "key":Keyboard.U,
            "g":"魔化.破军式"
         };
         $ob["龍鳴閃"] = {
            "cd":10,
            "w":100,
            "s":"AA",
            "key":Keyboard.J,
            "g":"魔化.龍鳴閃"
         };
         $ob["土龙闪"] = {
            "cd":15,
            "w":200,
            "s":"S",
            "key":Keyboard.J,
            "g":"魔化.土龙闪"
         };
         $ob["一刀流"] = {
            "cd":12,
            "w":50,
            "s":"SS",
            "key":Keyboard.J,
            "g":"魔化.一刀流"
         };
         $ob["快速后移"] = {
            "cd":1,
            "w":100,
            "s":"S",
            "key":Keyboard.L,
            "g":"喰种后移"
         };
         $ob["龍卷閃˙空"] = {
            "cd":12,
            "w":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"魔化.龍卷閃˙空"
         };
         $ob["龍卷閃．凩"] = {
            "cd":8,
            "w":100,
            "s":"S",
            "key":Keyboard.U,
            "g":"魔化.龍卷閃．凩"
         };
         $ob["双龙闪"] = {
            "cd":12,
            "w":100,
            "s":"AA",
            "key":Keyboard.I,
            "g":"魔化.双龙闪"
         };
         $ob["劍氣"] = {
            "cd":15,
            "w":50,
            "s":"SS",
            "key":Keyboard.I,
            "g":"魔化.喰劍氣"
         };
         $ob["劍擊"] = {
            "cd":5,
            "w":50,
            "k":true,
            "s":"",
            "key":Keyboard.U,
            "g":"魔化.喰劍擊"
         };
         $ob["拔刀術"] = {
            "cd":15,
            "w":100,
            "s":"S",
            "key":Keyboard.I,
            "g":"魔化.拔刀術"
         };
         $ob["龍巢閃"] = {
            "cd":15,
            "w":100,
            "s":"",
            "key":Keyboard.U,
            "g":"魔化.龍巢閃"
         };
         $ob["龍卷閃．旋"] = {
            "cd":16,
            "w":1000,
            "s":"",
            "key":Keyboard.I,
            "g":"魔化.龍卷閃．旋"
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
         if(int(param1.$ob.time) <= 0)
         {
            param1.sethp(param1.gethp + param1.$hpMax * 0.05);
            param1.$ob.time = 36 * 5;
         }
         --param1.$ob.time;
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
                     "color":$mxx,
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
                     "color":$mxx,
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
            case "双龙闪":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,5,9,3 * param1.$scaleX);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
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
                     "color":$mxx,
                     "name":"Dao1",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 35,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "拔刀術":
               if((param1.$frameInt == 7 || param1.$frameInt == 12) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 1;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
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
               }
               break;
            case "龍鳴閃":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,1,1,5 * param1.$scaleX);
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,2,2,10 * param1.$scaleX);
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,3,3,15 * param1.$scaleX);
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,4,4,30 * param1.$scaleX);
               break;
            case "劍氣":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
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
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HF/Z",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "down":true,
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HF/N",
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
            case "龍卷閃．嵐":
               param1.$x += FrameMath.mathFrameToX(param1.$frameInt,4,6,8 * param1.$scaleX);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
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
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"XN/K",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 75,
                     "scaleX":param1.$scaleX * 1
                  });
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
                     "color":$mxx,
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
               else if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HM/Y",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":30,
                     "role":param1,
                     "x":param1.$bit.x + 120 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
                     "gox":8,
                     "goy":4,
                     "name":"AS/H",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
               else if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":5,
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HM/Y",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "time":60,
                     "role":param1,
                     "x":param1.$bit.x + 200 * param1.$scaleX,
                     "y":param1.$bit.y - 45,
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
                     "color":$mxx,
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
               else if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"XN/K",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 75,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
                     "color":$mxx,
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
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"XN/BG",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 25,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
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
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HF/Z",
                     "type":"SkillJianXin",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HF/N",
                     "type":"SkillJianXin",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 50 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
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
               // ++param1.$ob["LongZuiShan"];
               var _loc1_:* = param1.$ob; //
               var _loc2_:* = "LongZuiShan"; //
               var _loc3_:* = _loc1_[_loc2_] + 1; //
               _loc1_[_loc2_] = _loc3_; //
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                  "color":$mxx,
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

