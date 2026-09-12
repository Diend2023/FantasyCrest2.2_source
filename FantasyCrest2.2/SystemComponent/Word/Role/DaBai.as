package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.ui.Keyboard;
   
   public class DaBai
   {
      
      public static var $ob:Object = new Object();
      
      public static var matrix:Array = new Array();
      
      public function DaBai()
      {
         super();
      }
      
      public static function init() : void
      {
         $ob["灵压"] = {
            "cd":3,
            "w":50,
            "s":"S",
            "key":Keyboard.J,
            "g":"灵压.樱斩"
         };
         $ob["瞬斩"] = {
            "cd":3,
            "w":150,
            "s":"AA",
            "key":Keyboard.U
         };
         $ob["六道光牢"] = {
            "cd":18,
            "w":80,
            "s":"W",
            "key":Keyboard.I
         };
         $ob["苍火坠"] = {
            "cd":8,
            "w":200,
            "s":"",
            "key":Keyboard.U
         };
         $ob["白雷"] = {
            "cd":8,
            "w":250,
            "s":"",
            "key":Keyboard.I
         };
         $ob["千本樱"] = {
            "cd":25,
            "mp":200,
            "w":500,
            "s":"",
            "key":Keyboard.O
         };
         $ob["瞬步"] = {
            "cd":0,
            "w":1000,
            "s":"",
            "key":Keyboard.L
         };
         $ob["断空"] = {
            "cd":10,
            "w":300,
            "s":"S",
            "key":Keyboard.U
         };
         $ob["空中攻击"] = {
            "cd":0,
            "k":true,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["普通攻击"] = {
            "cd":0,
            "w":50,
            "s":"",
            "key":Keyboard.J
         };
         $ob["空蝉"] = {
            "cd":13,
            "mode":"DK",
            "w":500,
            "s":"",
            "key":Keyboard.L,
            "n":"被攻击时按L"
         };
         $ob["卍解"] = {
            "cd":60,
            "w":50,
            "s":"",
            "key":Keyboard.P
         };
         $ob["空刃"] = {
            "cd":5,
            "k":true,
            "w":250,
            "s":"",
            "key":Keyboard.U,
            "g":"红樱空刃"
         };
         $ob["闪花"] = {
            "cd":3,
            "w":200,
            "s":"AA",
            "key":Keyboard.I
         };
         $ob["樱花飞"] = {
            "cd":1,
            "w":100,
            "h":300,
            "s":"W",
            "key":Keyboard.J,
            "n":"卍解技能"
         };
         $ob["樱花涟"] = {
            "cd":2,
            "w":100,
            "s":"S",
            "key":Keyboard.J,
            "n":"卍解技能"
         };
         $ob["樱花撮"] = {
            "cd":2,
            "w":150,
            "s":"W",
            "key":Keyboard.U,
            "n":"卍解技能"
         };
         $ob["普通攻击2"] = {
            "cd":1,
            "w":100,
            "s":"",
            "key":Keyboard.J,
            "n":"卍解技能"
         };
         $ob["樱花堕"] = {
            "cd":2,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "n":"卍解技能"
         };
         $ob["樱花空"] = {
            "cd":2,
            "w":200,
            "k":true,
            "s":"",
            "key":Keyboard.J,
            "n":"卍解技能"
         };
         matrix = matrix.concat([0,0,1,0,0]);
         matrix = matrix.concat([0,0,0.1,0,0]);
         matrix = matrix.concat([0,0,0.5,0,0]);
         matrix = matrix.concat([0,0,0,1,0]);
      }
      
      public static function loadData() : void
      {
         SystemLoading.addTask("File/indexFile/img/role/dabai.png","photo","DaBai");
         SystemLoading.addTask("File/indexFile/img/role/dabai.xml","text","DaBai");
         SystemLoading.addTask("File/indexFile/img/role/dabai2.xml","text","DaBai2");
         SystemLoadType.loadRoleSkillData("BaoFa2");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("DB/L");
         SystemLoadType.loadRoleSkillData("DB/D");
         SystemLoadType.loadRoleSkillData("DB/G");
         SystemLoadType.loadRoleSkillData("DB/Y");
         SystemLoadType.loadRoleSkillData("DB/X");
         SystemLoadType.loadRoleSkillData("DB/Q");
         SystemLoadType.loadRoleSkillData("DB/K");
         SystemLoadType.loadRoleSkillData("DB/WJ");
         SystemLoadType.loadRoleSkillData("DB/W1");
         SystemLoadType.loadRoleSkillData("DB/W2");
         SystemLoadType.loadRoleSkillData("DB/W3");
         SystemLoadType.loadRoleSkillData("DB/W4");
         SystemLoadType.loadRoleSkillData("DB/W5");
         SystemLoadType.loadRoleSkillData("DB/W7");
         SystemLoadType.loadRoleSkillData("DB/B1");
         SystemLoadType.loadRoleSkillData("DB/B2");
         SystemLoadType.loadRoleSkillData("DB/QC");
         SystemLoadType.loadRoleSkillData("DB/H");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/11_1.mp3","sound","DaBai_11_1");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/11.mp3","sound","DaBai_11");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/12_2.mp3","sound","DaBai_12_2");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/12.mp3","sound","DaBai_12");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/2.mp3","sound","DaBai_2");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/3.mp3","sound","DaBai_3");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/4.mp3","sound","DaBai_4");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/9.mp3","sound","DaBai_9");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/h2.mp3","sound","DaBai_h2");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/h3.mp3","sound","DaBai_h3");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/h5.mp3","sound","DaBai_h5");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/h7.mp3","sound","DaBai_h7");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/h8.mp3","sound","DaBai_h8");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/in.mp3","sound","DaBai_in");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/speed.mp3","sound","DaBai_speed");
         SystemLoading.addTask("File/indexFile/sound/role/DaBai/wanjie.mp3","sound","DaBai_wanjie");
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc4_:int = 0;
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         if(param1.$ob.wanjie == true)
         {
            _loc4_ = 0;
            loop1:
            while(true)
            {
               if(_loc4_ <= 1)
               {
                  switch(param2)
                  {
                     case Keyboard.J:
                        switch(_loc3_)
                        {
                           case "W":
                              return "樱花飞";
                           case "S":
                              return "樱花涟";
                           default:
                              continue;
                        }
                        break;
                     case Keyboard.U:
                        switch(_loc3_)
                        {
                           case "W":
                              return "樱花撮";
                           default:
                              continue;
                        }
                        break;
                     case Keyboard.I:
                        break loop1;
                     case Keyboard.O:
                        switch(_loc3_)
                        {
                           case "AA":
                           case "DD":
                           case "W":
                        }
                        continue;
                     default:
                        continue;
                  }
               }
               addr01dc:
               switch(param2)
               {
                  case Keyboard.J:
                     return "普通攻击2";
                  case Keyboard.K:
                     return "none";
                  case Keyboard.L:
                     break;
                  case Keyboard.U:
                     return "樱花堕";
                  case Keyboard.I:
                  case Keyboard.O:
                     break;
                  case Keyboard.P:
                     return "解除卍解";
               }
               _loc3_ = _loc3_.charAt(1);
               _loc4_++;
            }
            var _loc5_:String = _loc3_;
            switch(0)
            {
            }
            §§goto(addr01dc);
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               loop13:
               switch(param2)
               {
                  case Keyboard.J:
                     switch(_loc3_)
                     {
                        case "S":
                           return "灵压";
                        default:
                           break loop13;
                     }
                     break;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "AA":
                        case "DD":
                           return "瞬斩";
                        case "S":
                           return "断空";
                        default:
                           break loop13;
                     }
                     break;
                  case Keyboard.L:
                     if(param1.$frameString == "受伤")
                     {
                        return "空蝉";
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "A":
                        case "D":
                           return "闪花";
                        case "W":
                           return "六道光牢";
                        default:
                           break loop13;
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "AA":
                        case "DD":
                        case "W":
                     }
                     break;
                  case Keyboard.P:
                  case "WW":
                     return "卍解";
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
                  return "苍火坠";
               case Keyboard.I:
                  return "白雷";
               case Keyboard.O:
                  return "千本樱";
            }
         }
         return "none";
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = null;
         if(param1.$ob.wanjie == true)
         {
            switch(param2)
            {
               case Keyboard.J:
                  return "樱花空";
            }
         }
         else
         {
            _loc3_ = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
            switch(param2)
            {
               case Keyboard.J:
                  return "空中攻击";
               case Keyboard.U:
                  return "空刃";
            }
         }
         return "none";
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
      
      public static function getSkillBuff(param1:SystemGameRole) : void
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc4_:SystemGameRole = null;
         if(!param1.$jumpBoolean)
         {
            param1.$y += param1.Speed;
         }
         switch(param1.$frameString)
         {
            case "解除卍解":
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$ob.wanjie = false;
                  param1.chanageRoleTarget("DaBai");
                  param1.frameString = "待机";
               }
               break;
            case "白剑帝":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "down":true,
                     "name":"DB/B1",
                     "type":"SkillDaBai",
                     "fuck":0,
                     "time":200,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$word.askElements("skill",{
                     "name":"DB/B2",
                     "type":"SkillDaBai",
                     "fuck":0,
                     "time":200,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "樱花空":
               param1.$y += 5;
               param1.$x += 5 * param1.$scaleX;
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "gox":3,
                     "goy":-3,
                     "ka":[3,10],
                     "name":"DB/W7",
                     "type":"SkillDaBai",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "樱花爆":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "ka":[4,10],
                     "name":"DB/W6",
                     "type":"SkillDaBai",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x - 100 * param1.$scaleX,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "樱花撮":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "ka":[2,10],
                     "name":"DB/W5",
                     "type":"SkillDaBai",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "樱花飞":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "ka":[4,10],
                     "name":"DB/W4",
                     "type":"SkillDaBai",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "樱花堕":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "gox":5,
                     "ka":[4,10],
                     "name":"DB/W3",
                     "type":"SkillDaBai",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1.5
                  });
               }
               break;
            case "樱花涟":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "ka":[2,10],
                     "name":"DB/W2",
                     "type":"SkillDaBai",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "普通攻击2":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "ka":[2,10],
                     "name":"DB/W1",
                     "type":"SkillDaBai",
                     "fuck":6,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "卍解":
               param1.$god = 25;
               if(param1.$frameInt == 9 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "name":"DB/WJ",
                     "type":"SkillDaBai",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               if(param1.$frameInt == 26 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$ob.wanjie = true;
                  param1.chanageRoleTarget("DaBai2");
                  ComponentResourcesManage.$word.askElements("skill",{
                     "name":"DB/H",
                     "type":"SkillDaBai",
                     "fuck":0,
                     "time":40,
                     "role":param1,
                     "x":param1.$x,
                     "y":param1.$y,
                     "scaleX":param1.$scaleX * 1
                  });
                  param1.frameString = "待机";
               }
               break;
            case "空蝉":
               param1.$god = 25;
               if(param1.$frameInt == 12)
               {
                  _loc2_ = param1.hitRoleAndSkill(500,true);
                  if(_loc2_[0] is SystemGameRole)
                  {
                     param1.$x = _loc2_[0].$x;
                     param1.$y = _loc2_[0].$y;
                  }
               }
               break;
            case "闪花":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.Speed * 4);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,5,-param1.Speed * 4);
               if(param1.hitRoleBoolean && param1.$frameInt < 4)
               {
                  param1.stoic = 0.2;
                  param1.to(4);
               }
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  if(param1.$scaleX == 1)
                  {
                     param1.$scaleX = -1;
                  }
                  else
                  {
                     param1.$scaleX = 1;
                  }
               }
               break;
            case "六道光牢":
               if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  _loc2_ = param1.hitRoleAndSkill(200);
                  for(_loc3_ in _loc2_)
                  {
                     if(_loc2_[_loc3_] is SystemGameRole)
                     {
                        _loc4_ = _loc2_[_loc3_];
                     }
                  }
                  if(_loc4_ is SystemGameRole)
                  {
                     ComponentResourcesManage.$word.askElements("skill",{
                        "troops":param1.$troops,
                        "hp":1,
                        "name":"DB/K",
                        "type":"SkillDaBai",
                        "fuck":999,
                        "time":200,
                        "role":param1,
                        "x":_loc4_.$x,
                        "y":_loc4_.$y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
               }
               break;
            case "千本樱":
               param1.stoic = 0.2;
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "name":"DB/Q",
                     "type":"SkillDaBai",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               else if(param1.$frameInt == 12 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$word.askElements("skill",{
                     "name":"DB/X",
                     "type":"SkillDaBai",
                     "fuck":0,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 1
                  });
                  ComponentResourcesManage.$word.askElements("skill",{
                     "color":matrix,
                     "name":"DB/Y",
                     "type":"SkillDaBai",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 30,
                     "scaleX":param1.$scaleX * 2
                  });
               }
               break;
            case "断空":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$word.askElements("skill",{
                     "hp":200,
                     "troops":param1.$troops,
                     "name":"DB/G",
                     "type":"SkillDaBai",
                     "fuck":0,
                     "time":400,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.3
                  });
               }
               break;
            case "白雷":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DB/D",
                     "type":"SkillDaBai",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 3 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "苍火坠":
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"DB/L",
                     "type":"SkillDaBai",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 3 * param1.$scaleX,
                     "y":param1.$bit.y - 15,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬斩":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.Speed * 4);
               if(param1.hitRoleBoolean && param1.$frameInt < 4)
               {
                  param1.stoic = 0.2;
                  param1.to(4);
               }
               break;
            case "空刃":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "gox":3,
                     "goy":3,
                     "ka":[1,10],
                     "color":matrix,
                     "name":"YiDaoZhan",
                     "type":"SkillDaBai",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "灵压":
               if(param1.$frameInt == 8 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":0,
                     "ka":[1,10],
                     "color":matrix,
                     "name":"DB/QC",
                     "type":"SkillDaBai",
                     "fuck":999,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "瞬步":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,6,param1.Speed * 4);
               RoleMathType.alphaFrame(param1);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,2,5,2);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,8,12,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,15,17,2);
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

