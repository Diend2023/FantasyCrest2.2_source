package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class NanMoFa
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function NanMoFa()
      {
         super();
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/nanmofa.png","photo","NanMoFa");
         SystemLoading.addTask("File/indexFile/img/role/nanmofa.xml","text","NanMoFa");
         SystemLoadType.loadRoleSkillData("NMF/U");
         SystemLoadType.loadRoleSkillData("NGJ/B");
         SystemLoadType.loadRoleSkillData("LD/Q");
         SystemLoadType.loadRoleSkillData("NMF/B");
         SystemLoadType.loadRoleSkillData("NMF/BB");
         SystemLoadType.loadRoleSkillData("NMF/P");
         SystemLoadType.loadRoleSkillData("NMF/Z");
         SystemLoadType.loadRoleSkillData("NMF/F");
         SystemLoadType.loadRoleSkillData("GJS/Z");
         SystemLoadType.loadRoleSkillData("NMF/L");
         SystemLoadType.loadRoleSkillData("NMF/D");
         SystemLoadType.loadRoleSkillData("JL/Q");
         SystemLoadType.loadRoleSkillData("JL/Qi");
         SystemLoading.addTask("File/indexFile/sound/role/nanmofa/mw_1atk_02.mp3","sound","nanmofa_mw_1atk_02");
         SystemLoading.addTask("File/indexFile/sound/role/nanmofa/mw_2atk_01.mp3","sound","nanmofa_mw_2atk_01");
         SystemLoading.addTask("File/indexFile/sound/role/nanmofa/mw_2atk_02.mp3","sound","nanmofa_mw_2atk_02");
         SystemLoading.addTask("File/indexFile/sound/role/nanmofa/mw_4atk_02.mp3","sound","nanmofa_mw_4atk_02");
         SystemLoading.addTask("File/indexFile/sound/role/nanmofa/mw_ancient_01.mp3","sound","nanmofa_mw_ancient_01");
         SystemLoading.addTask("File/indexFile/sound/role/nanmofa/mw_ancient_02.mp3","sound","nanmofa_mw_ancient_02");
         SystemLoading.addTask("File/indexFile/sound/role/nanmofa/mw_concentrate.mp3","sound","nanmofa_mw_concentrate");
         SystemLoading.addTask("File/indexFile/sound/role/nanmofa/mw_wcannon_ready.mp3","sound","nanmofa_mw_wcannon_ready");
         $mxx = $mxx.concat([0,0,1.2,1.55,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,0,0,0,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function init() : void
      {
         $ob["怵"] = {
            "cd":6,
            "w":70,
            "h":300,
            "s":"W",
            "key":Keyboard.U,
            "g":"幽冥火.怵"
         };
         $ob["重摔"] = {
            "cd":6,
            "w":150,
            "s":"S",
            "key":Keyboard.U,
            "g":"幽冥力.地白"
         };
         $ob["火焰"] = {
            "cd":8,
            "w":50,
            "s":"W",
            "key":Keyboard.I,
            "g":"幽冥火.天炎破"
         };
         $ob["拖拽"] = {
            "cd":8,
            "w":200,
            "s":"S",
            "key":Keyboard.I,
            "g":"幽冥风.擒纵"
         };
         $ob["天降"] = {
            "cd":40,
            "mp":350,
            "w":500,
            "h":500,
            "s":"S",
            "key":Keyboard.O,
            "g":"元素轰炸.血晶天降"
         };
         $ob["龙卷"] = {
            "cd":12,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "g":"幽冥风.龙卷"
         };
         $ob["爆破"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.I,
            "g":"幽冥火.阴阳破"
         };
         $ob["白元次"] = {
            "cd":30,
            "mp":200,
            "w":250,
            "s":"",
            "key":Keyboard.O,
            "g":"元素幻灭.次元切割"
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
         $ob["空中攻击"] = {
            "cd":1,
            "w":50,
            "h":50,
            "k":true,
            "s":"",
            "key":Keyboard.J
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
                     case "W":
                     case "S":
                  }
                  break;
               case Keyboard.K:
                  return "none";
               case Keyboard.L:
                  switch(_loc3_)
                  {
                     case "S":
                  }
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                        param1.qz = 0;
                        return "怵";
                     case "S":
                        return "重摔";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.I:
                  switch(_loc3_)
                  {
                     case "W":
                        param1.qz = 0;
                        return "火焰";
                     case "S":
                        param1.qz = 0;
                        return "拖拽";
                     default:
                        break loop2;
                  }
                  break;
               case Keyboard.O:
                  switch(_loc3_)
                  {
                     case "W":
                        return "none";
                     case "S":
                        return "天降";
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
               return "龙卷";
            case Keyboard.I:
               return "爆破";
            case Keyboard.O:
               return "白元次";
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
               break;
            case Keyboard.I:
               return "none";
            case Keyboard.O:
               return "none";
            case Keyboard.P:
               return "none";
         }
         return "none";
      }
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
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
            case "怵":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "name":"JL/Qi",
                     "type":"SkillNanMoFa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 100 * param1.$scaleX,
                     "y":param1.$bit.y + 60,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "火焰":
               if((param1.$frameInt == 3 || param1.$frameInt == 7) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troop":param1.$troops,
                     "hp":1,
                     "gox":8,
                     "goy":-6,
                     "ka":[3,10],
                     "name":"JL/Q",
                     "type":"SkillNanMoFa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "龙卷":
               if((param1.$frameInt == 3 || param1.$frameInt == 8) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "troop":param1.$troops,
                     "hp":1,
                     "gox":6,
                     "ka":[3,10],
                     "name":"NMF/L",
                     "type":"SkillNanMoFa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "重摔":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,8,8);
               if(param1.$frameInt == 1)
               {
                  param1.stoic = 0.5;
               }
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GJS/Z",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 80 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "拖拽":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"NMF/F",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"NMF/Z",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 200 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "天降":
               if(param1.$frameInt > 6 && param1.$frameInt / 2 != int(param1.$frameInt / 2) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"NMF/B",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":100,
                     "role":param1,
                     "x":param1.$bit.x + Math.random() * 500 * param1.$scaleX,
                     "y":param1.$bit.y - 500,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "爆破":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,10,12);
               if(param1.hitRoleBoolean && param1.$frameInt > 1 && param1.$frameInt < 9)
               {
                  param1.$frameInt = 9;
               }
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"NGJ/B",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 60 * param1.$scaleX,
                     "y":param1.$bit.y - 40,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "白元次":
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "fps":2,
                     "name":"NMF/U",
                     "type":"SkillNanMoFa",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 20 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":8,
                     "ka":[5,10],
                     "name":"LD/Q",
                     "type":"SkillNanMoFa",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "空中攻击":
               if((param1.$frameInt == 2 || param1.$frameInt == 6) && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,3],
                     "gox":9,
                     "goy":6,
                     "name":"NMF/D",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,9,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,3,6);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,7,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,11,13,4);
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NMF/P",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "name":"NMF/P",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 40 * param1.$scaleX,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"NMF/P",
                     "type":"SkillNanMoFa",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 40 * param1.$scaleX,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         if(param1.$ob.yan == true)
         {
            param2.sethp(param2.gethp - 15);
            ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
               "name":"AS/huo",
               "type":"SkillNanMoFa",
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

