package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.GameData;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class HongFa
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function HongFa()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/hongfa.png","photo","HongFa");
         SystemLoading.addTask("File/indexFile/img/role/hongfa.xml","text","HongFa");
         SystemLoadType.loadRoleSkillData("YH/Y3");
         SystemLoadType.loadRoleSkillData("HF/D");
         SystemLoadType.loadRoleSkillData("HF/K");
         SystemLoadType.loadRoleSkillData("HF/S");
         SystemLoadType.loadRoleSkillData("HF/Y");
         SystemLoadType.loadRoleSkillData("HF/C");
         SystemLoadType.loadRoleSkillData("HF/O");
         SystemLoadType.loadRoleSkillData("HF/N");
         SystemLoadType.loadRoleSkillData("HF/V");
         SystemLoadType.loadRoleSkillData("HF/J");
         SystemLoadType.loadRoleSkillData("HF/Z");
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function init() : void
      {
         $ob["红牙"] = {
            "cd":4,
            "w":100,
            "h":200,
            "s":"W",
            "key":Keyboard.J
         };
         $ob["爆气"] = {
            "cd":4,
            "w":60,
            "s":"S",
            "key":Keyboard.J
         };
         $ob["空翻"] = {
            "cd":6,
            "w":250,
            "s":"W",
            "key":Keyboard.L
         };
         $ob["飞腿"] = {
            "cd":4,
            "w":50,
            "s":"W",
            "key":Keyboard.U
         };
         $ob["霸王色"] = {
            "cd":8,
            "w":170,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["衲卸"] = {
            "cd":8,
            "mp":0,
            "w":150,
            "s":"AA",
            "key":Keyboard.U
         };
         $ob["抓取"] = {
            "cd":6,
            "mp":0,
            "w":30,
            "h":200,
            "s":"WW",
            "key":Keyboard.I
         };
         $ob["红空牙"] = {
            "cd":8,
            "mp":0,
            "w":300,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["霸气斩"] = {
            "cd":8,
            "w":160,
            "s":"S",
            "key":Keyboard.I
         };
         $ob["红莲"] = {
            "cd":30,
            "mp":250,
            "w":250,
            "s":"S",
            "key":Keyboard.O
         };
         $ob["瞬杀"] = {
            "cd":6,
            "mp":0,
            "w":100,
            "s":"",
            "key":Keyboard.U
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["霸气一击"] = {
            "cd":6,
            "w":120,
            "h":150,
            "s":"",
            "key":Keyboard.I
         };
         $ob["霸气瞬斩"] = {
            "cd":30,
            "mp":250,
            "w":250,
            "h":50,
            "s":"",
            "key":Keyboard.O
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
         $ob["冲杀"] = {
            "cd":6,
            "w":120,
            "h":120,
            "s":"W",
            "k":true,
            "key":Keyboard.U
         };
         $ob["空剑气"] = {
            "cd":6,
            "w":120,
            "h":120,
            "s":"",
            "k":true,
            "key":Keyboard.U
         };
         $mxx = $mxx.concat([1,2,3,1,0.5]);
         $mxx = $mxx.concat([0,1,0,0,0]);
         $mxx = $mxx.concat([0,1,0.2,0,0]);
         $mxx = $mxx.concat([0.8,0.6,0.4,0.2,0.1]);
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
                        return "红牙";
                     case "S":
                        return "爆气";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "W":
                        return "空翻";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        return "飞腿";
                     case "S":
                        return "霸王色";
                     case "AA":
                     case "DD":
                        return "衲卸";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "WW":
                        return "抓取";
                     case "W":
                        return "红空牙";
                     case "S":
                        return "霸气斩";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "S":
                        return "红莲";
                     default:
                        break loop2;
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
               return "瞬杀";
            case Keyboard.I:
               return "霸气一击";
            case Keyboard.O:
               return "霸气瞬斩";
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function Hrut(param1:SystemGameRole) : int
      {
         switch(param1.$frameString)
         {
            case "霸气瞬斩":
               return 30;
            default:
               if(param1.$frameString !== "普通攻击")
               {
                  return 10;
               }
               return 0;
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
                     case "S":
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
                        return "冲杀";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "S":
                        return "霸气斩";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
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
               return "空中攻击";
            case Keyboard.K:
               return "none";
            case Keyboard.L:
               return "none";
            case Keyboard.U:
               return "空剑气";
            case Keyboard.I:
            case Keyboard.O:
               break;
            case Keyboard.P:
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:Array = null;
         if(param1.$frameInt == 1)
         {
            param1.$ob.fps = 0;
         }
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         if(param1.$frameInt == 0)
         {
            param1.$ob.see = null;
         }
         switch(param1.$frameString)
         {
            case "霸气斩":
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,0,2,-6);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "goy":0,
                     "gox":0,
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HF/Z",
                     "type":"SkillHongFa",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  param1.stoic = 0.2;
                  param1.$jumpBoolean = true;
               }
               break;
            case "瞬杀":
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "goy":0,
                     "gox":0,
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HF/J",
                     "type":"SkillHongFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  param1.$x += 100 * param1.$scaleX;
                  param1.$y -= 40;
                  param1.stoic = 0.2;
                  param1.$jumpBoolean = true;
               }
               break;
            case "红空牙":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  param1.$jumpBoolean = true;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "goy":2,
                     "gox":2,
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HF/V",
                     "type":"SkillHongFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,4,6);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,2,4,-10);
               break;
            case "霸王色":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "ka":[1,10],
                     "name":"HF/N",
                     "type":"SkillHongFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "down":true,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "红莲":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":0,
                     "ka":[1,10],
                     "name":"HF/D",
                     "type":"SkillHongFa",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":6,
                     "ka":[5,10],
                     "name":"HF/O",
                     "type":"SkillHongFa",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "衲卸":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,20);
               if(param1.$frameInt < 4 && Boolean(param1.hitGameRole))
               {
                  param1.to(4);
               }
               break;
            case "爆气":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"HF/C",
                     "type":"SkillHongFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "红牙":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":3,
                     "ka":[1,10],
                     "name":"HF/S",
                     "type":"SkillHongFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "霸气一击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,5,6);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,11,13,15);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":0,
                     "ka":[1,10],
                     "name":"HF/D",
                     "type":"SkillHongFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 15 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":0,
                     "ka":[1,10],
                     "name":"HF/K",
                     "type":"SkillHongFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 5 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "霸气瞬斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,10,12,-2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,16,17,2);
               if(param1.$frameInt == 15 && param1.$ob.fps < 3)
               {
                  ++param1.$ob.fps;
                  param1.to(7);
               }
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"shun",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
                  param1.$x += 200 * param1.$scaleX;
               }
               else if(param1.$frameInt == 14 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"shun",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * -1
                  });
                  param1.$x -= 200 * param1.$scaleX;
               }
               else if(param1.$frameInt == 18 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc2_ = param1.hitRoleAndSkill(500,true);
                  if(_loc2_.length !== 0)
                  {
                     param1.$x = _loc2_[0].$x;
                     param1.$y = _loc2_[0].$y;
                  }
               }
               else if(param1.$frameInt == 20 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$x += 100 * param1.$scaleX;
               }
               param1.stoic = 0.1;
               break;
            case "抓取":
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,2,5,20);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,6,8,8);
               if(param1.$frameInt > 2 && param1.$frameInt < 5)
               {
                  param1.$ob.zq = param1.hitGameRole;
               }
               if(Boolean(param1.$ob.zq) && Boolean(param1.$frameInt > 2) && param1.$frameInt < 11)
               {
                  param1.$ob.zq.$down = false;
                  param1.$ob.zq.$jumpBoolean = true;
                  param1.$ob.zq.frameString = "受伤";
                  param1.$ob.zq.$jumpNumMath = 0;
                  param1.$ob.zq.rigid = 60;
                  param1.$ob.zq.$x = param1.$x - 5 * param1.$scaleX;
                  param1.$ob.zq.$y = param1.$y - 35;
                  param1.$ob.zq.$txTime = 0;
                  if(param1.$frameInt < 6)
                  {
                     param1.$frameInt = 6;
                     GameData.$KaTime = 10;
                  }
               }
               else if(param1.$frameInt == 8)
               {
                  param1.stopSkill();
               }
               break;
            case "空翻":
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,0,3,20);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,4,7,4);
               param1.stoic = 0.1;
               break;
            case "飞腿":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,0,5,9);
               break;
            case "空剑气":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":6,
                     "ka":[3,10],
                     "name":"YH/Y3",
                     "type":"SkillHongFa",
                     "fuck":3,
                     "time":15,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               break;
            case "冲杀":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,4,4);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,0,4,9);
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":$mxx,
                     "gox":2,
                     "goy":-2,
                     "ka":[1,10],
                     "name":"HF/Y",
                     "type":"SkillHongFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 5 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               break;
            case "空中攻击":
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,24);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,4,4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,7,9,4);
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "衲卸":
               GameData.$KaTime = 10;
               param2.$down = false;
               param2.$frameString = "受伤";
               break;
            case "霸气瞬斩":
               if(param1.$frameInt > 17)
               {
                  GameData.$KaTime = 10;
               }
         }
      }
   }
}

