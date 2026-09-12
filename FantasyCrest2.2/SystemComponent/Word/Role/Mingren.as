package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class Mingren
   {
      
      public static var $ob:Object = new Object();
      
      public static var matrix:Array = new Array();
      
      public static var $mxx:Array = new Array();
      
      public function Mingren()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["空飞镖"] = {
            "cd":6,
            "w":270,
            "h":400,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["螺旋丸"] = {
            "cd":8,
            "w":300,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["击飞影分身"] = {
            "cd":5,
            "w":250,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["妖尾螺旋丸"] = {
            "cd":30,
            "mp":300,
            "w":250,
            "s":"",
            "key":Keyboard.O
         };
         $ob["飞镖"] = {
            "cd":6,
            "w":420,
            "s":"",
            "key":Keyboard.U
         };
         $ob["出击影分身"] = {
            "cd":6,
            "w":350,
            "s":"",
            "key":Keyboard.I
         };
         $ob["螺旋爆丸"] = {
            "cd":32,
            "mp":200,
            "w":550,
            "s":"A",
            "key":Keyboard.O
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["空镖"] = {
            "cd":6,
            "w":400,
            "h":500,
            "s":"",
            "k":true,
            "key":Keyboard.U
         };
         $ob["多重影分身"] = {
            "cd":30,
            "w":9999,
            "h":500,
            "s":"",
            "key":Keyboard.P
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["空中攻击"] = {
            "cd":0,
            "k":true,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["逆風殘月"] = {
            "cd":8,
            "mp":0,
            "w":550,
            "s":"AA",
            "key":Keyboard.U,
            "n":"尾化技能"
         };
         $ob["查克炎"] = {
            "cd":4,
            "mp":0,
            "w":250,
            "s":"W",
            "key":Keyboard.U,
            "n":"尾化技能"
         };
         $ob["查克拉释放"] = {
            "cd":8,
            "mp":0,
            "w":250,
            "s":"S",
            "key":Keyboard.U,
            "n":"尾化技能"
         };
         $ob["朱玉螺旋丸"] = {
            "cd":8,
            "mp":0,
            "w":250,
            "s":"",
            "key":Keyboard.U,
            "n":"尾化技能"
         };
         $ob["闪现"] = {
            "cd":3,
            "mp":0,
            "w":250,
            "s":"W",
            "key":Keyboard.I,
            "n":"尾化技能"
         };
         $ob["天界陣歪"] = {
            "cd":8,
            "mp":0,
            "w":250,
            "s":"S",
            "key":Keyboard.I,
            "n":"尾化技能"
         };
         $ob["妖手"] = {
            "cd":8,
            "mp":0,
            "w":350,
            "s":"AA",
            "key":Keyboard.I,
            "n":"尾化技能"
         };
         $ob["野性之爪"] = {
            "cd":6,
            "mp":0,
            "w":350,
            "s":"",
            "key":Keyboard.I,
            "n":"尾化技能"
         };
         $ob["四尾化˙尾獸砲"] = {
            "cd":30,
            "mp":300,
            "w":650,
            "s":"SS",
            "key":Keyboard.O,
            "n":"尾化技能"
         };
         matrix = matrix.concat([0,0,1,0,0]);
         matrix = matrix.concat([0,0,0.2,0,0]);
         matrix = matrix.concat([0,0,0,0,0]);
         matrix = matrix.concat([0,0,0,1,0]);
         $mxx = $mxx.concat([0.3,0,0,0,0]);
         $mxx = $mxx.concat([0.5,0.3,0,0,0]);
         $mxx = $mxx.concat([1,0.6,0.5,0.3,0.2]);
         $mxx = $mxx.concat([0.8,0.6,0.5,0.3,0.2]);
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/mingren.png","photo","YaoHuaMingren");
         SystemLoading.addTask("File/indexFile/img/role/mingren.xml","text","YaoHuaMingren");
         SystemLoading.addTask("File/indexFile/img/role/putongmingren.png","photo","Mingren");
         SystemLoading.addTask("File/indexFile/img/role/putongmingren.xml","text","Mingren");
         SystemLoading.addTask("File/indexFile/img/skill/LuoXuanWan.png","photo","LuoXuanWan");
         SystemLoading.addTask("File/indexFile/img/skill/LuoXuanWan.xml","text","LuoXuanWan");
         SystemLoading.addTask("File/indexFile/img/skill/ChaKeLa.png","photo","ChaKeLa");
         SystemLoading.addTask("File/indexFile/img/skill/ChaKeLa.xml","text","ChaKeLa");
         SystemLoading.addTask("File/indexFile/img/skill/TianJie.png","photo","TianJie");
         SystemLoading.addTask("File/indexFile/img/skill/TianJie.xml","text","TianJie");
         SystemLoading.addTask("File/indexFile/img/skill/SiWei.png","photo","SiWei");
         SystemLoading.addTask("File/indexFile/img/skill/SiWei.xml","text","SiWei");
         SystemLoading.addTask("File/indexFile/img/skill/NiFeng.png","photo","NiFeng");
         SystemLoading.addTask("File/indexFile/img/skill/NiFeng.xml","text","NiFeng");
         SystemLoading.addTask("File/indexFile/img/skill/SiZhua.png","photo","SiZhua");
         SystemLoading.addTask("File/indexFile/img/skill/SiZhua.xml","text","SiZhua");
         SystemLoadType.loadRoleSkillData("CiTu");
         SystemLoadType.loadRoleSkillData("MR/S");
         SystemLoadType.loadRoleSkillData("MR/B");
         SystemLoadType.loadRoleSkillData("MR/F");
         SystemLoadType.loadRoleSkillData("MR/Q");
         SystemLoadType.loadRoleSkillData("MR/FS");
         SystemLoadType.loadRoleSkillData("MR/FS2");
         SystemLoadType.loadRoleSkillData("MR/FS3");
         SystemLoadType.loadRoleSkillData("MR/YanWu");
         SystemLoadType.loadRoleSkillData("NGJ/F");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz0.mp3","sound","Mingren_zz0");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz10.mp3","sound","Mingren_zz10");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz11.mp3","sound","Mingren_zz11");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz12.mp3","sound","Mingren_zz12");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz13.mp3","sound","Mingren_zz13");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz2.mp3","sound","Mingren_zz2");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz4.mp3","sound","Mingren_zz4");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz6.mp3","sound","Mingren_zz6");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz66.mp3","sound","Mingren_zz66");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz67.mp3","sound","Mingren_zz67");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz71.mp3","sound","Mingren_zz71");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz74.mp3","sound","Mingren_zz74");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/zz77.mp3","sound","Mingren_zz77");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/luoxuanwan.mp3","sound","Mingren_luoxuanwan");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/yingfenshen.mp3","sound","Mingren_yingfenshen");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/1.mp3","sound","Mingren_1");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/2.mp3","sound","Mingren_2");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/3.mp3","sound","Mingren_3");
         SystemLoading.addTask("File/indexFile/sound/role/Mingren/5.mp3","sound","Mingren_5");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         if(param1.$ob.yaohua)
         {
            _loc3_ = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               loop3:
               switch(param2)
               {
                  case Keyboard.J:
                     switch(_loc3_)
                     {
                        case "W":
                        case "S":
                     }
                     break;
                  case Keyboard.K:
                     return "none";
                  case Keyboard.L:
                     switch(_loc3_)
                     {
                        case "W":
                     }
                     break;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "AA":
                        case "DD":
                           return "逆風殘月";
                        case "W":
                           return "查克炎";
                        case "S":
                           return "查克拉释放";
                        default:
                           break loop3;
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "W":
                           return "闪现";
                        case "S":
                           return "天界陣歪";
                        case "AA":
                        case "DD":
                           return "妖手";
                        default:
                           break loop3;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "W":
                        case "SS":
                           return "四尾化˙尾獸砲";
                        default:
                           break loop3;
                     }
                     break;
                  case Keyboard.P:
                     switch(_loc3_)
                     {
                        case "S":
                           return "none";
                     }
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
                  return "朱玉螺旋丸";
               case Keyboard.I:
                  return "野性之爪";
               case Keyboard.O:
                  break;
               case Keyboard.P:
            }
         }
         else
         {
            _loc3_ = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               loop17:
               switch(param2)
               {
                  case Keyboard.J:
                     switch(_loc3_)
                     {
                        case "W":
                        case "S":
                     }
                     break;
                  case Keyboard.K:
                     return "none";
                  case Keyboard.L:
                     switch(_loc3_)
                     {
                        case "W":
                     }
                     break;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "W":
                           return "空飞镖";
                        case "S":
                           return "螺旋丸";
                        default:
                           break loop17;
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "W":
                           return "击飞影分身";
                        case "S":
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "W":
                        case "A":
                        case "D":
                           return "螺旋爆丸";
                        default:
                           break loop17;
                     }
                     break;
                  case Keyboard.P:
                     switch(_loc3_)
                     {
                        case "SS":
                           return "九尾化";
                     }
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
                  return "飞镖";
               case Keyboard.I:
                  return "出击影分身";
               case Keyboard.O:
                  return "妖尾螺旋丸";
               case Keyboard.P:
                  if(param1.$hpMax > 1000)
                  {
                     return "多重影分身";
                  }
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
                  return "空中攻击";
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        return "闪现";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  return "空镖";
            }
            _loc3_ = _loc3_.charAt(1);
            _loc4_++;
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:Array = null;
         var _loc3_:SystemGameRole = null;
         var _loc4_:Point = null;
         if(param1.$ob.yaohua)
         {
            switch(param1.$frameString)
            {
               case "妖手":
                  param1.stoic = param1.$frameInt >= 2 ? 0.5 : 0;
                  if(param1.$frameInt == 0)
                  {
                     param1.$ob.ys = false;
                  }
                  if(Boolean(param1.$ob.ys) && param1.$frameInt == 8)
                  {
                     param1.$frameInt = 11;
                  }
                  if(param1.$frameInt == 10)
                  {
                     param1.stopSkill();
                  }
                  break;
               case "闪现":
                  param1.$y += FrameMath.mathFrameToX(param1.$frameInt,4,5,-2);
                  if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$god = 5;
                     param1.alpha = 0;
                     _loc2_ = param1.hitRoleAndSkill(150,true);
                     if(_loc2_.length !== 0)
                     {
                        param1.$ob.s = true;
                        param1.$x = _loc2_[0].$x;
                        param1.$y = _loc2_[0].$y;
                     }
                     else
                     {
                        param1.$ob.s = false;
                        param1.$y -= 150;
                     }
                  }
                  else if(param1.$frameInt == 3)
                  {
                     param1.$god = 0;
                     param1.alpha = 1;
                  }
                  if(param1.$frameInt == 4 && !param1.$ob.s)
                  {
                     param1.stopSkill();
                  }
                  break;
               case "查克炎":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$skillFrameInt = param1.$frameInt;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"CiTu",
                        "type":"SkillMingRen",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 75 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * -1.25
                     });
                  }
                  break;
               case "普通攻击":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,2);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,7,4);
                  break;
               case "朱玉螺旋丸":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,11,param1.$speed * 2);
                  if(param1.hitRoleBoolean && param1.$frameInt < 12 && param1.$frameInt > 6)
                  {
                     param1.$frameInt = 12;
                  }
                  if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$skillFrameInt = param1.$frameInt;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[5,10],
                        "name":"LuoXuanWan",
                        "type":"SkillMingRen",
                        "fuck":5,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 45 * param1.$scaleX,
                        "y":param1.$bit.y - 33,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "查克拉释放":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$skillFrameInt = param1.$frameInt;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[3,10],
                        "name":"ChaKeLa",
                        "type":"SkillMingRen",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "天界陣歪":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$skillFrameInt = param1.$frameInt;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"TianJie",
                        "type":"SkillMingRen",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y - 70,
                        "scaleX":param1.$scaleX * 1.3
                     });
                  }
                  break;
               case "四尾化˙尾獸砲":
                  if(param1.$frameInt == 22 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$skillFrameInt = param1.$frameInt;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[5,10],
                        "name":"SiWei",
                        "type":"SkillMingRen",
                        "fuck":3,
                        "time":80,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 3
                     });
                  }
                  break;
               case "逆風殘月":
                  if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$skillFrameInt = param1.$frameInt;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":6,
                        "name":"NiFeng",
                        "type":"SkillMingRen",
                        "fuck":6,
                        "time":30,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  else if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$skillFrameInt = param1.$frameInt;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "gox":6,
                        "name":"NiFeng",
                        "type":"SkillMingRen",
                        "fuck":6,
                        "time":30,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1.3
                     });
                  }
                  break;
               case "野性之爪":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,param1.$speed * 3);
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[3,10],
                        "name":"SiZhua",
                        "type":"SkillMingRen",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x - 50 * param1.$scaleX,
                        "y":param1.$bit.y + 15,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "瞬步":
                  RoleMathType.alphaFrame(param1);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,24);
            }
         }
         else
         {
            switch(param1.$frameString)
            {
               case "九尾化":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"TianJie",
                        "type":"SkillMingRen",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y - 70,
                        "scaleX":param1.$scaleX * 1.3
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"ChaKeLa",
                        "type":"SkillMingRen",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$ob.yaohua = true;
                     param1.chanageRoleTarget("YaoHuaMingren");
                     param1.frameString = "待机";
                     param1.stoic = 100;
                     param1.$ob.ai = 30 * 10;
                     param1.$ob.key = param1.$keyP;
                     param1.$keyP = -1;
                     param1.$ob.aiBoolean = true;
                     param1.$speed = 6;
                  }
                  break;
               case "多重影分身":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$word.askElements("role",{
                        "hp":300,
                        "point":new Point(param1.$x + 25 * param1.$scaleX,param1.$y),
                        "name":param1.name + "Mingren" + Math.random(),
                        "troops":param1.$troops,
                        "target":"Mingren",
                        "id":-1
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"MR/YanWu",
                        "type":"SkillMingRen",
                        "role":param1,
                        "x":param1.$bit.x + 25 * param1.$scaleX,
                        "y":param1.$bit.y - 0,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "出击影分身":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[3,5],
                        "blendMode":BlendMode.NORMAL,
                        "name":"MR/FS3",
                        "type":"SkillMingRen",
                        "fuck":0,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 25 * param1.$scaleX,
                        "y":param1.$bit.y - 0,
                        "scaleX":param1.$scaleX * 1
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "name":"MR/YanWu",
                        "type":"SkillMingRen",
                        "role":param1,
                        "x":param1.$bit.x + 25 * param1.$scaleX,
                        "y":param1.$bit.y - 0,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "击飞影分身":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     _loc3_ = param1.hitRoleAndSkill(200,true)[0] as SystemGameRole;
                     if(_loc3_)
                     {
                        if(_loc3_.$jumpBoolean)
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "goy":-4,
                              "ka":[1,5],
                              "blendMode":BlendMode.NORMAL,
                              "name":"MR/FS2",
                              "type":"SkillMingRen",
                              "fuck":99,
                              "time":0,
                              "role":param1,
                              "x":_loc3_.$bit.x,
                              "y":_loc3_.$bit.y - 0,
                              "scaleX":param1.$scaleX * 1
                           });
                        }
                        else
                        {
                           ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                              "ka":[1,5],
                              "blendMode":BlendMode.NORMAL,
                              "name":"MR/FS",
                              "type":"SkillMingRen",
                              "fuck":99,
                              "time":0,
                              "role":param1,
                              "x":_loc3_.$bit.x,
                              "y":_loc3_.$bit.y - 0,
                              "scaleX":param1.$scaleX * 1
                           });
                        }
                        ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                           "name":"MR/YanWu",
                           "type":"SkillMingRen",
                           "role":param1,
                           "x":_loc3_.$bit.x,
                           "y":_loc3_.$bit.y - 0,
                           "scaleX":param1.$scaleX * 1
                        });
                     }
                  }
                  break;
               case "螺旋丸":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,18,25,12);
                  if(param1.$frameInt == 18 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[3,5],
                        "name":"MR/Q",
                        "type":"SkillMingRen",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 5 * param1.$scaleX,
                        "y":param1.$bit.y - 0,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "空飞镖":
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     _loc4_ = RoleMathType.getGoXY(param1,param1.hitRoleAndSkill(9999,true)[0],10);
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "hp":1,
                        "troops":param1.$troops,
                        "blendMode":BlendMode.NORMAL,
                        "gox":_loc4_.x,
                        "goy":_loc4_.y,
                        "ka":[1,5],
                        "name":"MR/F",
                        "type":"SkillMingRen",
                        "fuck":99,
                        "time":30,
                        "role":param1,
                        "x":param1.$bit.x + 35 * param1.$scaleX,
                        "y":param1.$bit.y - 20,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "空镖":
                  if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     _loc4_ = RoleMathType.getGoXY(param1,param1.hitRoleAndSkill(9999,true)[0],10);
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "hp":1,
                        "troops":param1.$troops,
                        "blendMode":BlendMode.NORMAL,
                        "gox":_loc4_.x,
                        "goy":_loc4_.y,
                        "ka":[1,5],
                        "name":"MR/F",
                        "type":"SkillMingRen",
                        "fuck":99,
                        "time":30,
                        "role":param1,
                        "x":param1.$bit.x + 35 * param1.$scaleX,
                        "y":param1.$bit.y - 20,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "飞镖":
                  if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "hp":1,
                        "troops":param1.$troops,
                        "blendMode":BlendMode.NORMAL,
                        "gox":10,
                        "ka":[1,5],
                        "name":"MR/F",
                        "type":"SkillMingRen",
                        "fuck":99,
                        "time":30,
                        "role":param1,
                        "x":param1.$bit.x + 35 * param1.$scaleX,
                        "y":param1.$bit.y - 20,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
                  break;
               case "妖尾螺旋丸":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,15,22,12);
                  param1.stoic = param1.$frameInt > 5 ? 0.1 : 0;
                  if(param1.$frameInt > 15 && param1.$frameInt < 22 && Boolean(param1.hitGameRole))
                  {
                     param1.to(22);
                  }
                  if(param1.$frameInt == 32 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"MR/B",
                        "type":"SkillMingRen",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 65 * param1.$scaleX,
                        "y":param1.$bit.y - 30,
                        "scaleX":param1.$scaleX * 2
                     });
                  }
                  break;
               case "蛤蟆闪杀":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,32,34,12);
                  if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "name":"MR/S",
                        "type":"SkillMingRen",
                        "fuck":99,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                     param1.$x += 300 * param1.$scaleX;
                     param1.$y -= 100;
                  }
                  break;
               case "螺旋爆丸":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,32,34,12);
                  if(param1.$frameInt == 34 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     param1.$skillFrameInt = param1.$frameInt;
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "color":$mxx,
                        "gox":10,
                        "ka":[5,10],
                        "name":"LuoXuanWan",
                        "type":"SkillMingRen",
                        "fuck":5,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 45 * param1.$scaleX,
                        "y":param1.$bit.y - 33,
                        "scaleX":param1.$scaleX * 1.7
                     });
                  }
                  break;
               case "普通攻击":
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,2);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,6,4);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,9,10,4);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,12,13,12);
                  break;
               case "瞬步":
                  RoleMathType.alphaFrame(param1);
                  param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,14);
            }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
         param1.$ob.ai -= param1.$ob.ai > 0 ? 1 : 0;
         if(param1.$ob.ai <= 0 && Boolean(param1.$ob.aiBoolean))
         {
            param1.$ob.aiBoolean = false;
            param1.$keyP = param1.$ob.key;
            param1.stoic = 0;
            param1.$down = false;
            param1.$up = false;
            param1.$left = false;
            param1.$right = false;
         }
         if(param1.$ob.aiBoolean)
         {
            param1.stoic = 1;
         }
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "妖手":
               param1.$ob.ys = true;
               if(param1.$frameInt == 11)
               {
                  param2.$x = param1.$x + 55 * param1.$scaleX;
               }
         }
      }
   }
}

