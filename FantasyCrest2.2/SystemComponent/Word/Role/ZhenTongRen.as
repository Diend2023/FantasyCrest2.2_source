package SystemComponent.Word.Role
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemLoading;
   import SystemComponent.SystemMucisPlay;
   import SystemComponent.Word.RoleMathType;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.SystemLoadType;
   import eye.Math.FrameMath;
   import flash.display.BlendMode;
   import flash.ui.Keyboard;
   
   public class ZhenTongRen
   {
      
      public static var $ob:Object = new Object();
      
      public static var $mxx:Array = new Array();
      
      public function ZhenTongRen()
      {
         super();
      }
      
      public static function loadData() : void
      {
         var _loc1_:int = 0;
         SystemLoading.addTask("File/indexFile/img/role/zhentongren.png","photo","ZhenTongRen");
         SystemLoading.addTask("File/indexFile/img/role/zhentongren.xml","text","ZhenTongRen");
         SystemLoading.addTask("File/indexFile/img/role/zhentongren_shuangdao.png","photo","ZhenTongRenSD");
         SystemLoading.addTask("File/indexFile/img/role/zhentongren_shuangdao.xml","text","ZhenTongRenSD");
         SystemLoadType.loadRoleSkillData("YiDaoZhan");
         SystemLoadType.loadRoleSkillData("LongZhanYi");
         SystemLoadType.loadRoleSkillData("CiTu");
         SystemLoadType.loadRoleSkillData("XieZhan");
         SystemLoadType.loadRoleSkillData("BJR/J");
         SystemLoadType.loadRoleSkillData("YueGuang");
         SystemLoadType.loadRoleSkillData("JiuLongShan");
         SystemLoadType.loadRoleSkillData("GJS/T");
         SystemLoadType.loadRoleSkillData("XXQ");
         SystemLoadType.loadRoleSkillData("LongShanQiang");
         SystemLoadType.loadRoleSkillData("GDJ/Z");
         SystemLoadType.loadRoleSkillData("AS/huo");
         SystemLoadType.loadRoleSkillData("AS/HQ");
         SystemLoadType.loadRoleSkillData("JL/A");
         SystemLoadType.loadRoleSkillData("GJS/Z");
         SystemLoadType.loadRoleSkillData("AS/HQ");
         SystemLoadType.loadRoleSkillData("AS/HQ");
         SystemLoadType.loadRoleSkillData("YH/M");
         SystemLoadType.loadRoleSkillData("SB/P");
         SystemLoadType.loadRoleSkillData("XD/Bao");
         SystemLoadType.loadRoleSkillData("HF/D");
         SystemLoadType.loadRoleSkillData("BaDao");
         SystemLoadType.loadRoleSkillData("XN/T");
         SystemLoadType.loadRoleSkillData("HF/V");
         SystemLoadType.loadRoleSkillData("LD/Boom");
         SystemLoadType.loadRoleSkillData("S/D");
         SystemLoadType.loadRoleSkillData("TianJie");
         _loc1_ = 1;
         while(_loc1_ < 15)
         {
            SystemLoading.addTask("File/indexFile/sound/role/tongren/" + _loc1_ + ".mp3","sound","tongren_" + _loc1_);
            _loc1_++;
         }
         _loc1_ = 1;
         while(_loc1_ < 5)
         {
            SystemLoading.addTask("File/indexFile/sound/role/tongren/s" + _loc1_ + ".mp3","sound","tongren_s_" + _loc1_);
            _loc1_++;
         }
         SystemLoading.addTask("File/indexFile/sound/role/tongren/shuangdao.mp3","sound","tongren_sd");
         $mxx = $mxx.concat([0,0,1.2,1.55,0]);
         $mxx = $mxx.concat([0,0.5,0,0,0]);
         $mxx = $mxx.concat([0,0,0,0,0]);
         $mxx = $mxx.concat([0.2,0.2,0.2,1,0]);
      }
      
      private static function sound(param1:int) : void
      {
         SystemMucisPlay.setMusic = "tongren_" + param1;
      }
      
      public static function PasvSkill(param1:SystemGameRole) : void
      {
      }
      
      public static function init() : void
      {
         $ob["抓取"] = {
            "cd":6,
            "w":170,
            "s":"S",
            "key":Keyboard.J,
            "g":"三尺掷",
            "n":"(双刀流)将敌人抓取，破防"
         };
         $ob["上挑·双"] = {
            "cd":6,
            "w":170,
            "s":"W",
            "key":Keyboard.U,
            "n":"(双刀流)快速向上攻击砍出2段击",
            "g":"垂直煌四方斩"
         };
         $ob["地爆破"] = {
            "cd":8,
            "w":270,
            "s":"S",
            "key":Keyboard.U,
            "g":"大日金煌破",
            "n":"(双刀流)"
         };
         $ob["地爆"] = {
            "cd":4,
            "w":170,
            "s":"W",
            "key":Keyboard.I,
            "n":"(双刀流)地面划出攻击",
            "g":"星辰爆"
         };
         $ob["瞬落斩"] = {
            "cd":6,
            "w":370,
            "s":"S",
            "key":Keyboard.I,
            "n":"(双刀流)快速向前攻击",
            "g":"空袭跃·解"
         };
         $ob["爆破炎"] = {
            "cd":35,
            "mp":350,
            "w":570,
            "s":"S",
            "key":Keyboard.O,
            "n":"(双刀流)蓄力释放出巨大能量",
            "g":"黎明逐暗.日蚀"
         };
         $ob["空斩"] = {
            "cd":8,
            "w":170,
            "s":"S",
            "k":true,
            "key":Keyboard.U,
            "g":"裂空四方斩",
            "n":"(双刀流)"
         };
         $ob["空落"] = {
            "cd":35,
            "mp":250,
            "w":370,
            "s":"S",
            "k":true,
            "key":Keyboard.O,
            "n":"(双刀流)由空中落下进行多段攻击",
            "g":"崩空四方斩·解"
         };
         $ob["二击"] = {
            "cd":6,
            "w":170,
            "s":"",
            "key":Keyboard.I,
            "n":"(双刀流)快速砍出二连击",
            "g":"寂稳双刃"
         };
         $ob["寸破（双刀）"] = {
            "cd":4,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "g":"寸破（双刀）"
         };
         $ob["寸破"] = {
            "cd":4,
            "w":200,
            "s":"S",
            "key":Keyboard.U,
            "g":"寸破"
         };
         $ob["上削"] = {
            "cd":4,
            "w":200,
            "s":"W",
            "key":Keyboard.U,
            "g":"涂鸦影斩"
         };
         $ob["切削"] = {
            "cd":8,
            "w":200,
            "s":"",
            "key":Keyboard.U,
            "g":"连削带斩"
         };
         $ob["上挑"] = {
            "cd":4,
            "w":200,
            "s":"W",
            "key":Keyboard.I,
            "g":"湛月光斩"
         };
         $ob["飞落"] = {
            "cd":4,
            "w":200,
            "s":"S",
            "key":Keyboard.I,
            "g":"空袭跃"
         };
         $ob["突刺·地"] = {
            "cd":6,
            "w":200,
            "s":"",
            "key":Keyboard.I,
            "g":"音速冲击·地"
         };
         $ob["突刺·空"] = {
            "cd":6,
            "w":200,
            "k":true,
            "s":"",
            "key":Keyboard.I,
            "g":"音速冲击·天"
         };
         $ob["大冲破"] = {
            "cd":25,
            "mp":200,
            "w":200,
            "s":"DD",
            "key":Keyboard.O,
            "g":"御破煌炎击"
         };
         $ob["爆破"] = {
            "cd":28,
            "w":300,
            "mp":250,
            "s":"S",
            "key":Keyboard.O,
            "g":"阐释剑歌"
         };
         $ob["空后翻"] = {
            "cd":4,
            "w":400,
            "s":"S",
            "k":true,
            "key":Keyboard.L,
            "g":"空后翻"
         };
         $ob["双刀模式"] = {
            "cd":32,
            "mp":200,
            "w":300,
            "s":"",
            "key":Keyboard.P,
            "g":"二刀流模式"
         };
         $ob["解除双刀"] = {
            "cd":4,
            "mp":0,
            "w":300,
            "s":"",
            "key":Keyboard.P,
            "g":"二刀流模式·解除"
         };
      }
      
      public static function getKeyString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         loop0:
         // while(true)
         // {
            // if(_loc4_ > 1)
            for(; _loc4_ <= 1; _loc3_ = _loc3_.charAt(1),_loc4_++) //
            {
               // switch(param2)
               // {
               //    case Keyboard.J:
               //       return "普通攻击";
               //    case Keyboard.K:
               //       return "none";
               //    case Keyboard.L:
               //       return "瞬步";
               //    case Keyboard.U:
               //       if(param1.$ob.shuangdao)
               //       {
               //          return "寸破（双刀）";
               //       }
               //       return "切削";
               //       break;
               //    case Keyboard.I:
               //       if(param1.$ob.shuangdao)
               //       {
               //          return "二击";
               //       }
               //       return "突刺·地";
               //       break;
               //    case Keyboard.O:
               //       break;
               //    case Keyboard.P:
               //       if(param1.$ob.shuangdao)
               //       {
               //          return "解除双刀";
               //       }
               //       return "双刀模式";
               // }
               if(param1.$ob.shuangdao) //
               { //
                  switch(param2) //
                  { //
                     case Keyboard.J: //
                        switch(_loc3_) //
                        { //
                           case "S": //
                              return "抓取"; //
                        } //
                        break; //
                     case Keyboard.K: //
                        return "none"; //
                     case Keyboard.L: //
                        switch(_loc3_) //
                        { //
                           case "S": //
                        } //
                        break; //
                     case Keyboard.U: //
                        switch(_loc3_) //
                        { //
                           case "W": //
                              return "上挑·双"; //
                           case "S": //
                              return "地爆破"; //
                        } //
                        break; //
                     case Keyboard.I: //
                        switch(_loc3_) //
                        { //
                           case "W": //
                              return "地爆"; //
                           case "S": //
                              return "瞬落斩"; //
                        } //
                        break; //
                     case Keyboard.O: //
                        switch(_loc3_) //
                        { //
                           case "S": //
                              return "爆破炎"; //
                        } //
                        break; //
                     case Keyboard.P: //
                        switch(_loc3_) //
                        { //
                           case "S": //
                              return "none"; //
                        } //
                  } //
               } //
               else //
               { //
                  switch(param2) //
                  { //
                     case Keyboard.J: //
                        break loop0; //
                     case Keyboard.K: //
                        return "none"; //
                     case Keyboard.L: //
                        switch(_loc3_) //
                        { //
                           case "S": //
                        } //
                        continue; //
                     case Keyboard.U: //
                        switch(_loc3_) //
                        { //
                           case "W": //
                              return "上削"; //
                           case "S": //
                              return "寸破"; //
                           default: //
                              continue; //
                        } //
                        break; //
                     case Keyboard.I: //
                        switch(_loc3_) //
                        { //
                           case "W": //
                              return "上挑"; //
                           case "S": //
                              return "飞落"; //
                           default: //
                              continue; //
                        } //
                        break; //
                     case Keyboard.O: //
                        switch(_loc3_) //
                        { //
                           case "AA": //
                           case "DD": //
                              return "大冲破"; //
                           case "S": //
                              return "爆破"; //
                           case "W": //
                              return "none"; //
                           default: //
                              continue; //
                        } //
                        break; //
                     case Keyboard.P: //
                        switch(_loc3_) //
                        { //
                           case "S": //
                              return "none"; //
                        } //
                  } //
               } //
            }
            // addr051d:
            // if(param1.$ob.shuangdao)
            // {
            //    switch(param2)
            //    {
            //       case Keyboard.J:
            //          switch(_loc3_)
            //          {
            //             case "S":
            //                return "抓取";
            //          }
            //          break;
            //       case Keyboard.K:
            //          return "none";
            //       case Keyboard.L:
            //          switch(_loc3_)
            //          {
            //             case "S":
            //          }
            //          break;
            //       case Keyboard.U:
            //          switch(_loc3_)
            //          {
            //             case "W":
            //                return "上挑·双";
            //             case "S":
            //                return "地爆破";
            //          }
            //          break;
            //       case Keyboard.I:
            //          switch(_loc3_)
            //          {
            //             case "W":
            //                return "地爆";
            //             case "S":
            //                return "瞬落斩";
            //          }
            //          break;
            //       case Keyboard.O:
            //          switch(_loc3_)
            //          {
            //             case "S":
            //                return "爆破炎";
            //          }
            //          break;
            //       case Keyboard.P:
            //          switch(_loc3_)
            //          {
            //             case "S":
            //                return "none";
            //          }
            //    }
            // }
            // else
            // {
            //    switch(param2)
            //    {
            //       case Keyboard.J:
            //          break loop0;
            //       case Keyboard.K:
            //          return "none";
            //       case Keyboard.L:
            //          switch(_loc3_)
            //          {
            //             case "S":
            //          }
            //          continue;
            //       case Keyboard.U:
            //          switch(_loc3_)
            //          {
            //             case "W":
            //                return "上削";
            //             case "S":
            //                return "寸破";
            //             default:
            //                continue;
            //          }
            //          break;
            //       case Keyboard.I:
            //          switch(_loc3_)
            //          {
            //             case "W":
            //                return "上挑";
            //             case "S":
            //                return "飞落";
            //             default:
            //                continue;
            //          }
            //          break;
            //       case Keyboard.O:
            //          switch(_loc3_)
            //          {
            //             case "AA":
            //             case "DD":
            //                return "大冲破";
            //             case "S":
            //                return "爆破";
            //             case "W":
            //                return "none";
            //             default:
            //                continue;
            //          }
            //          break;
            //       case Keyboard.P:
            //          switch(_loc3_)
            //          {
            //             case "S":
            //                return "none";
            //          }
            //    }
            // }
            // continue;
            switch(param2) //
            { //
               case Keyboard.J: //
                  return "普通攻击"; //
               case Keyboard.K: //
                  return "none"; //
               case Keyboard.L: //
                  return "瞬步"; //
               case Keyboard.U: //
                  if(param1.$ob.shuangdao) //
                  { //
                     return "寸破（双刀）"; //
                  } //
                  return "切削"; //
                  break; //
               case Keyboard.I: //
                  if(param1.$ob.shuangdao) //
                  { //
                     return "二击"; //
                  } //
                  return "突刺·地"; //
                  break; //
               case Keyboard.O: //
                  break; //
               case Keyboard.P: //
                  if(param1.$ob.shuangdao) //
                  { //
                     return "解除双刀"; //
                  } //
                  return "双刀模式"; //
            } //
            return "none";
         //    _loc3_ = _loc3_.charAt(1);
         //    _loc4_++;
         // }
         // var _loc5_:String = _loc3_;
         // switch(0)
         // {
         // }
         // §§goto(addr051d);
      }
      
      public static function getKeyJumpString(param1:SystemGameRole, param2:int = 0) : String
      {
         var _loc3_:String = param1.$keyString.substring(param1.$keyString.length - 2,param1.$keyString.length);
         var _loc4_:int = 0;
         for(; _loc4_ <= 1; _loc3_ = _loc3_.charAt(1),_loc4_++)
         {
            if(param1.$ob.shuangdao)
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
                  case Keyboard.L:
                     break;
                  case Keyboard.U:
                     switch(_loc3_)
                     {
                        case "S":
                           return "空斩";
                     }
                     break;
                  case Keyboard.I:
                     switch(_loc3_)
                     {
                        case "S":
                           return "none";
                     }
                     break;
                  case Keyboard.O:
                     switch(_loc3_)
                     {
                        case "S":
                           return "空落";
                     }
                     break;
                  case Keyboard.P:
                     return "none";
               }
               continue;
            }
            switch(param2)
            {
               case Keyboard.J:
                  switch(_loc3_)
                  {
                     case "W":
                     case "S":
                  }
                  break;
               case Keyboard.L:
                  if(_loc3_ == "S")
                  {
                     return "空后翻";
                  }
                  return "none";
                  break;
               case Keyboard.L:
                  break;
               case Keyboard.U:
                  switch(_loc3_)
                  {
                     case "W":
                  }
                  break;
               case Keyboard.I:
                  return "突刺·空";
               case Keyboard.O:
                  break;
               case Keyboard.P:
                  return "none";
            }
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
         var _loc2_:SystemGameRole = null;
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
            case "爆破炎":
               if(param1.$frameInt == 10 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  SystemMucisPlay.setMusic = "tongren_s_1";
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "gox":0,
                     "name":"S/D",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":2.5 * param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "gox":0,
                     "name":"TianJie",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":3.5 * param1.$scaleX
                  });
               }
               break;
            case "地爆":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(13);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":0,
                     "name":"LD/Boom",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 35 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":1.5 * param1.$scaleX
                  });
               }
               break;
            case "上挑·双":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(5);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":0,
                     "name":"HF/V",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":1 * param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"XN/T",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":1 * param1.$scaleX
                  });
               }
               break;
            case "二击":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(4);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":0,
                     "name":"HF/D",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":1 * param1.$scaleX
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"BaDao",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":1 * param1.$scaleX
                  });
               }
               break;
            case "空落":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$y += 100;
                  sound(10);
                  sound(11);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"YH/M",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 150,
                     "y":param1.$bit.y + 50,
                     "scaleX":0.7
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"YH/M",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 150,
                     "y":param1.$bit.y,
                     "scaleX":-0.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"YH/M",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 150,
                     "y":param1.$bit.y - 50,
                     "scaleX":1
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"YH/M",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 150,
                     "y":param1.$bit.y - 100,
                     "scaleX":-1.25
                  });
               }
               break;
            case "抓取":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,4,15);
               _loc2_ = param1.hitGameRole;
               if(Boolean(_loc2_) && param1.$frameInt <= 5)
               {
                  _loc2_.stopSkill();
                  _loc2_.$frameString = "受伤";
                  _loc2_.$x = param1.$x + param1.$scaleX * 25;
                  if(param1.$frameInt == 5)
                  {
                     _loc2_.frameString = "受伤";
                     _loc2_.$x = param1.$x - param1.$scaleX * 10;
                     _loc2_.$y = param1.$y;
                     _loc2_.fuckY = 20;
                     _loc2_.rigid = 30;
                     _loc2_.$jumpNumMath = 0;
                     _loc2_.$tx = 4 * -param1.$scaleX;
                  }
               }
               break;
            case "地爆破":
            case "爆破":
               if(param1.$ob.shuangdao)
               {
                  if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     sound(7);
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[1,10],
                        "gox":20,
                        "name":"SB/P",
                        "type":"SkillTongRen",
                        "fuck":3,
                        "time":0,
                        "role":param1,
                        "x":param1.$bit.x + 20 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1
                     });
                  }
               }
               else
               {
                  param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,3,6,8);
                  if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
                  {
                     sound(14);
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[5,10],
                        "name":"LongShanQiang",
                        "type":"SkillJianXin",
                        "fuck":6,
                        "time":36,
                        "role":param1,
                        "x":param1.$bit.x - 40 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * 1.8
                     });
                     ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                        "ka":[5,10],
                        "name":"LongShanQiang",
                        "type":"SkillJianXin",
                        "fuck":6,
                        "time":36,
                        "role":param1,
                        "x":param1.$bit.x + 40 * param1.$scaleX,
                        "y":param1.$bit.y,
                        "scaleX":param1.$scaleX * -1.8
                     });
                  }
                  if(param1.$frameInt >= 6)
                  {
                     param1.stoic = 0.1;
                  }
               }
               break;
            case "空斩":
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.$x += param1.$scaleX * 200;
                  param1.$y += 60;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"YH/M",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"YH/M",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 50,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "双刀模式":
               if(param1.$frameInt >= 7)
               {
                  SystemMucisPlay.setMusic = "tongren_sd";
                  param1.chanageRoleTarget("ZhenTongRenSD");
                  param1.frameString = "待机";
                  param1.$ob.shuangdao = true;
               }
               break;
            case "解除双刀":
               if(param1.$frameInt >= 9)
               {
                  param1.chanageRoleTarget("ZhenTongRen");
                  param1.frameString = "待机";
                  param1.$ob.shuangdao = false;
               }
               break;
            case "瞬落斩":
            case "飞落":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,5,15);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,0,3,12 / param1.$frameInt);
               param1.$y += FrameMath.mathFrameToX(param1.$frameInt,3,6,12);
               if(param1.$jumpBoolean == false && param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(5);
                  param1.stoic = 0.3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"GJS/Z",
                     "gox":0,
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 30 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               else if(param1.$jumpBoolean == true && param1.$frameInt > 5)
               {
                  param1.stopSkill();
               }
               break;
            case "上削":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,8,5);
               if(param1.$frameInt == 5 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "blendMode":BlendMode.NORMAL,
                     "ka":[1,10],
                     "name":"JL/A",
                     "gox":5,
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
            case "空后翻":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,8,-5);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,0,8,12 / param1.$frameInt);
               param1.stoic = 0.1;
               break;
            case "大冲破":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,8,14);
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  param1.stoic = 0.3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "gox":5,
                     "name":"CiTu",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.8
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[2,10],
                     "gox":5,
                     "name":"CiTu",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.5
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[3,10],
                     "gox":5,
                     "name":"CiTu",
                     "type":"SkillJianXin",
                     "fuck":3,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1.2
                  });
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[4,10],
                     "gox":5,
                     "name":"CiTu",
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
            case "寸破（双刀）":
            case "寸破":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,-3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,6,8);
               if(param1.$frameInt > 3 && param1.hitRoleBoolean && param1.$frameInt < 6)
               {
                  param1.to(6);
               }
               if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(3);
                  param1.stoic = 0.3;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XXQ",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 25 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               break;
            case "上挑":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,3,5,3);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(2);
                  param1.stoic = 0.5;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":Wo.$mxx,
                     "ka":[1,10],
                     "name":"GJS/T",
                     "type":"SkillJianXin",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.8
                  });
               }
               break;
            case "突刺·空":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,10,14);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,7,14);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(6);
                  param1.stoic = 0.5;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":1,
                     "ka":[3,10],
                     "name":"JiuLongShan",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "gox":14,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "突刺·地":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,5,7,14);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,4,10,14);
               if(param1.$frameInt == 4 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(6);
                  param1.stoic = 0.2;
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "fps":1,
                     "ka":[3,10],
                     "name":"JiuLongShan",
                     "type":"SkillJianXin",
                     "fuck":6,
                     "gox":14,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.5
                  });
               }
               break;
            case "切削":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,8,5);
               param1.$y -= FrameMath.mathFrameToX(param1.$frameInt,6,8,8);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(3);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"BJR/J",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(5);
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "gox":5,
                     "gox":-5,
                     "name":"YueGuang",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 1
                  });
               }
               break;
            case "空中攻击":
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"YiDaoZhan",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 7 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"XieZhan",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x - 60 * param1.$scaleX,
                     "y":param1.$bit.y - 18,
                     "scaleX":param1.$scaleX * 1.2
                  });
               }
               if(param1.$frameInt == 3 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(3);
               }
               break;
            case "瞬步":
               RoleMathType.alphaFrame(param1);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,0,3,param1.$speed * 4);
               break;
            case "普通攻击":
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,1,2,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,6,8,3);
               param1.$x += param1.$scaleX * FrameMath.mathFrameToX(param1.$frameInt,13,15,5);
               if(param1.$frameInt == 2 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[0,10],
                     "name":"YiDaoZhan",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "color":Wo.$mxx,
                     "ka":[0,10],
                     "gox":-5,
                     "name":"LongZhanYi",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x,
                     "y":param1.$bit.y - 18,
                     "scaleX":param1.$scaleX * -0.7
                  });
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  ComponentResourcesManage.$Ob["SystemWord"].askElements("skill",{
                     "ka":[1,10],
                     "name":"CiTu",
                     "type":"SkillTongRen",
                     "fuck":99,
                     "time":0,
                     "role":param1,
                     "x":param1.$bit.x + 40 * param1.$scaleX,
                     "y":param1.$bit.y,
                     "scaleX":param1.$scaleX * 0.7
                  });
               }
               if(param1.$frameInt == 1 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(1);
               }
               else if(param1.$frameInt == 6 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(2);
               }
               else if(param1.$frameInt == 13 && param1.$skillFrameInt !== param1.$frameInt)
               {
                  sound(3);
               }
         }
         param1.$skillFrameInt = param1.$frameInt;
      }
      
      public static function getFightBuff(param1:SystemGameRole, param2:SystemGameRole) : void
      {
         switch(param1.$frameString)
         {
            case "龍鳴閃":
               ComponentResourcesManage.$Ob["SystemTongRenrd"].askElements("skill",{
                  "name":"BoYin",
                  "type":"SkillTongRen",
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

