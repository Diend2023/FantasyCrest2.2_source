package
{
   import SystemEye.ComponentResourcesManage;
   import SystemEye.GameData;
   import SystemEye.GameScore;
   import flash.display.MovieClip;
   import flash.events.DataEvent;
   import flash.events.Event;
   import p2p2016.P2PData;
   import unit4399.events.RankListEvent;
   import unit4399.events.SaveEvent;
   
   public class R4399Main extends MovieClip
   {
      
      private static var dfightArray:Array;
      
      private static var userData:Object;
      
      public static const cgRankID:uint = 1847;
      
      public static const szRankID:uint = 1845;
      
      public static const srRankID:uint = 1846;
      
      public static const zhRankID:uint = 1848;
      
      public static var INIT_LOGIN:String = "init_login";
      
      public static var ERROR_LOGIN:String = "error_login";
      
      public static var EIXT_LOGIN:String = "eixt_login";
      
      public static var _userChenA:Object = new Object();
      
      public static var vip:int = 0;
      
      public static var _4399_function_store_id:String = "3885799f65acec467d97b4923caebaae";
      
      public static var _4399_function_gameList_id:String = "944c23f5e64a80647f8d0f3435f5c7a8";
      
      public static var _4399_function_rankList_id:String = "69f52ab6eb1061853a761ee8c26324ae";
      
      public static var serviceHold:Object = null;
      
      private static var v:int = 3;
      
      private static var sxRole:String = "";
      
      private static var itxt:String = "";
      
      private static var ceng:cint = new cint();
      
      private static var dceng:cint = new cint();
      
      private static var dtarget:String = "";
      
      private static var dhp:cint = new cint();
      
      private static var dn:cint = new cint();
      
      private static var dfight:cint = new cint();
      
      private static var dfightTo:cint = new cint();
      
      private static var dfightTarget:String = "";
      
      private static var dfightN:cint = new cint();
      
      private static var dfightFight:Object = new cint();
      
      private static var cgScoreObject:Object = new Object();
      
      private static var szScoreObject:Object = new Object();
      
      private static var srScoreObject:Object = new Object();
      
      public static var isLogin:Boolean = false;
      
      public function R4399Main()
      {
         super();
         _userChenA["zp934438567"] = "最古之王";
         _userChenA["qazplmrfvygv"] = "弑念";
         _userChenA["788803183"] = "乱入人生";
         _userChenA["shenyong123."] = "蔚蓝领域";
         _userChenA["605403861@qq.com"] = "凌空之影";
         _userChenA["jinxinbo1124"] = "雪夜殇月";
         _userChenA["897509552"] = "吃货无敌";
         _userChenA["810009994"] = "伊安倾雪";
         _userChenA["2417647212"] = "黑色遐想";
         _userChenA["as1150411765"] = "悠久之翼";
         _userChenA["zhi879718204"] = "恶魔之妹";
         _userChenA["71676859"] = "碧风领域";
         _userChenA["zxcvbnm511"] = "镇国公";
         _userChenA["189780792"] = "死战君侯";
         _userChenA["189780792"] = "死战君侯";
         _userChenA["149941619"] = "烧饼卷毛";
         _userChenA["15699840170"] = "暗夜使者";
         _userChenA["645639793"] = "琉璃";
         _userChenA["731259030"] = "上古天王";
         _userChenA["678290306"] = "剑神";
         _userChenA["a86220065"] = "无上神洛";
         _userChenA["jlpssg"] = "凌寒冷月";
         _userChenA["245292602"] = "最强之纸";
         _userChenA["yjh20010202"] = "羁绊之心";
         _userChenA["913217696"] = "神鬼奇谋";
         _userChenA["2503662457"] = "尼德霍格";
         _userChenA["1911984293"] = "空之境界";
         _userChenA["94747365"] = "飞天御剑";
         _userChenA["782892843"] = "执笔之心";
         _userChenA["flyno1"] = "格里高利";
         _userChenA["192837465hth"] = "耗子";
         _userChenA["779583520"] = "狂龙";
         _userChenA["572296202"] = "绝对领域";
         _userChenA["1640419559"] = "绅士练萌";
         _userChenA["13058306781"] = "贱贱";
         _userChenA["fhtian2001"] = "天殇";
         _userChenA["909924675"] = "柒殇";
         _userChenA["kky1888"] = "淡雪菜鸟";
         _userChenA["707764135"] = "天使领域";
         _userChenA["13654691768"] = "嗜血梦魇";
         _userChenA["9032769"] = "空虚";
         _userChenA["210263663"] = "黄瓜";
         _userChenA["812145822"] = "海之王者";
         _userChenA["817457957"] = "天下着雨";
         _userChenA["kky1777"] = "革命佐助";
         _userChenA["13378553702"] = "小小鸟";
         this.addEventListener(Event.ADDED_TO_STAGE,this.initEvent);
      }
      
      public static function loginAsk() : void
      {
         if(Main.IS_PHONE)
         {
            ComponentResourcesManage.$stage.$box.$api.addShow("提示","本版本为手机版，不开放此功能");
            return;
         }
         serviceHold.getData(false);
      }
      
      public static function getUserData() : Object
      {
         var _loc4_:* = undefined;
         userData = new Object();
         if(!userData.cg)
         {
            userData.cg = new Object();
         }
         if(!userData.sz)
         {
            userData.sz = new Object();
         }
         if(!userData.sr)
         {
            userData.sr = new Object();
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for(_loc4_ in cgScoreObject)
         {
            userData.cg[_loc4_] = cgScoreObject[_loc4_].value;
            _loc1_ += cgScoreObject[_loc4_].value;
         }
         for(_loc4_ in szScoreObject)
         {
            userData.sz[_loc4_] = szScoreObject[_loc4_].value;
            _loc2_ += szScoreObject[_loc4_].value;
         }
         for(_loc4_ in srScoreObject)
         {
            userData.sr[_loc4_] = srScoreObject[_loc4_].value;
            _loc3_ += srScoreObject[_loc4_].value;
         }
         userData.v = v;
         userData.sxRole = sxRole;
         userData.cgScore = _loc1_;
         userData.szScore = _loc2_;
         userData.srScore = _loc3_;
         userData.szCeng = ceng.value;
         userData.szDCeng = dceng.value;
         userData.szTarget = dtarget;
         userData.szName = dtarget == "" ? "无" : GameData.getSelectName(dtarget);
         userData.szHP = dhp.value;
         userData.szNanDu = dn.value;
         userData.szFight = dfight.value;
         userData.itxt = itxt;
         userData.cgFight = R4399Main.dfightFight.value;
         userData.cgTarget = dfightTarget;
         userData.cgName = dfightTarget == "" ? "无" : GameData.getSelectName(dfightTarget);
         userData.cgNanDu = dfightN.value;
         userData.cgTo = R4399Main.dfightTo.value;
         userData.cgArr = dfightArray;
         if(cheakIsDebug(_loc1_,30000,cgScoreObject) || cheakIsDebug(_loc2_,30000,szScoreObject) || cheakIsDebug(_loc3_,30000,srScoreObject))
         {
            ComponentResourcesManage.$stage.$box.$api.addShow("战力违规","系统检测到你的战力似乎出现了异常数据。",true);
            return null;
         }
         return userData;
      }
      
      public static function cheakIsDebug(param1:int, param2:int, param3:Object) : Boolean
      {
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         for(_loc4_ in cgScoreObject)
         {
            _loc5_++;
         }
         if(_loc5_ == 0)
         {
            return false;
         }
         if(param1 / _loc5_ > param2)
         {
            return true;
         }
         return false;
      }
      
      public static function setLayer(param1:int, param2:int, param3:String) : void
      {
         if(sxRole == "")
         {
            sxRole = param3;
         }
         dceng.value = param1;
         dhp.value = param2;
         dn.value = GameData.$lv;
         dtarget = param3;
         dfight.value = GameScore.getNoneScore();
         if(param1 > ceng.value)
         {
            ceng.value = param1;
         }
      }
      
      public static function setCGLayer(param1:int, param2:String) : void
      {
         if(sxRole == "")
         {
            sxRole = param2;
         }
         R4399Main.dfightTo.value = param1;
         R4399Main.dfightN.value = GameData.$lv;
         R4399Main.dfightTarget = param2;
         R4399Main.dfightFight.value = GameScore.getNoneScore();
         dfightArray = GameData.$fightArray;
      }
      
      public static function setCGScore(param1:String, param2:int) : *
      {
         if(param1 == "NoKown" || GameData.$allFightArray.indexOf(param1) == -1)
         {
            return;
         }
         if(!cgScoreObject[param1])
         {
            cgScoreObject[param1] = new cint(param2);
         }
         else if(cgScoreObject[param1].value < param2)
         {
            cgScoreObject[param1].value = param2;
         }
      }
      
      public static function setSZScore(param1:String, param2:int) : *
      {
         if(param1 == "NoKown" || GameData.$allFightArray.indexOf(param1) == -1)
         {
            return;
         }
         if(!szScoreObject[param1])
         {
            szScoreObject[param1] = new cint(param2);
         }
         else if(szScoreObject[param1].value < param2)
         {
            szScoreObject[param1].value = param2;
         }
      }
      
      public static function setSRScore(param1:String, param2:int) : *
      {
         if(param1 == "NoKown" || GameData.$allFightArray.indexOf(param1) == -1)
         {
            return;
         }
         if(!srScoreObject[param1])
         {
            srScoreObject[param1] = new cint(param2);
         }
         else if(srScoreObject[param1].value < param2)
         {
            srScoreObject[param1].value = param2;
         }
      }
      
      public static function getCGScore(param1:String) : int
      {
         if(cgScoreObject[param1])
         {
            return cgScoreObject[param1].value;
         }
         return 0;
      }
      
      public static function getSZScore(param1:String) : int
      {
         if(szScoreObject[param1])
         {
            return szScoreObject[param1].value;
         }
         return 0;
      }
      
      public static function getSRScore(param1:String) : int
      {
         if(srScoreObject[param1])
         {
            return srScoreObject[param1].value;
         }
         return 0;
      }
      
      public static function setIText(param1:String) : void
      {
         itxt = param1;
      }
      
      public static function saveData() : void
      {
         var _loc1_:* = null;
         if(Boolean(serviceHold) && R4399Main.isLogin)
         {
            _loc1_ = P2PData.compress(JSON.stringify(R4399Main.getUserData()));
            serviceHold.saveData("幻想纹章-0",_loc1_,false);
         }
      }
      
      public static function moreGame() : *
      {
         if(serviceHold)
         {
            serviceHold.showGameList();
         }
      }
      
      public static function rankByOne(param1:uint) : void
      {
         if(Boolean(serviceHold) && R4399Main.isLogin)
         {
            serviceHold.getRankListByOwn(param1,0,3);
         }
      }
      
      public static function rankByPage(param1:uint, param2:int) : void
      {
         if(Boolean(serviceHold) && R4399Main.isLogin)
         {
            serviceHold.getRankListsData(param1,7,param2);
         }
      }
      
      public static function rankByName(param1:uint, param2:String) : void
      {
         if(Boolean(serviceHold) && R4399Main.isLogin)
         {
            serviceHold.getOneRankInfo(param1,param2);
         }
      }
      
      public static function rankSubmit(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         if(!serviceHold.isLog)
         {
            return;
         }
         param1.itxt = itxt !== "" ? itxt : "无";
         var _loc14_:* = new Object();
         var _loc15_:* = new Object();
         var _loc16_:* = new Object();
         var _loc17_:* = new Object();
         _loc14_.itxt = itxt !== "" ? itxt : "无";
         _loc15_.itxt = itxt !== "" ? itxt : "无";
         _loc16_.itxt = itxt !== "" ? itxt : "无";
         _loc17_.itxt = itxt !== "" ? itxt : "无";
         if(serviceHold.isLog.name == "15119965102" || serviceHold.isLog.name == "817457957")
         {
            R4399Main.setSZScore("Ban",10000);
         }
         var _loc18_:* = "";
         var _loc19_:* = "";
         var _loc20_:* = 0;
         for(_loc2_ in cgScoreObject)
         {
            _loc18_ += _loc2_ + ",";
            _loc9_ = int(cgScoreObject[_loc2_].value / 100);
            _loc19_ += String(_loc9_ >= 100 ? "m" : _loc9_) + ",";
            _loc20_++;
         }
         _loc14_.rolez = _loc19_;
         _loc14_.role = _loc18_;
         _loc14_.rnum = _loc20_;
         _loc3_ = "";
         _loc4_ = "";
         _loc5_ = 0;
         for(_loc2_ in szScoreObject)
         {
            _loc3_ += _loc2_ + ",";
            _loc10_ = int(szScoreObject[_loc2_].value / 100);
            _loc4_ += String(_loc10_ >= 100 ? "m" : _loc10_) + ",";
            _loc5_++;
         }
         _loc15_.rolez = _loc4_;
         _loc15_.role = _loc3_;
         _loc15_.rnum = _loc5_;
         _loc6_ = "";
         _loc7_ = "";
         _loc8_ = 0;
         for(_loc2_ in srScoreObject)
         {
            _loc6_ += _loc2_ + ",";
            _loc11_ = int(srScoreObject[_loc2_].value / 100);
            _loc7_ += String(_loc11_ >= 100 ? "m" : _loc11_) + ",";
            _loc8_++;
         }
         _loc16_.rolez = _loc7_;
         _loc16_.role = _loc6_;
         _loc16_.rnum = _loc8_;
         _loc17_.role = "no";
         _loc17_.rnum = -1;
         if(serviceHold.isLog.name == "15119965102")
         {
            _loc12_ = GameData.getSelectName(R4399Main.sxRole);
            if(_loc12_ == "???" || _loc12_ == "")
            {
               _loc12_ = "破损的选择";
            }
            _loc12_ = "不忘的初心";
            _loc14_.ch = "左眼游戏";
            _loc14_.rh = _loc12_;
            _loc15_.ch = "左眼游戏";
            _loc15_.rh = _loc12_;
            _loc16_.ch = "左眼游戏";
            _loc16_.rh = _loc12_;
            _loc17_.ch = "左眼游戏";
            _loc17_.rh = _loc12_;
         }
         else if(_userChenA[serviceHold.isLog.name])
         {
            _loc12_ = GameData.getSelectName(R4399Main.sxRole);
            if(_loc12_ == "???" || _loc12_ == "")
            {
               _loc12_ = "破损的选择";
            }
            _loc12_ = "未决的选择";
            if(serviceHold.isLog.name != "2574934342wy@@@")
            {
               if(serviceHold.isLog.name == "13378553702")
               {
                  _loc12_ = "辣鸡的合金剑心";
               }
            }
            _loc14_.ch = _userChenA[serviceHold.isLog.name];
            _loc14_.rh = _loc12_;
            _loc15_.ch = _userChenA[serviceHold.isLog.name];
            _loc15_.rh = _loc12_;
            _loc16_.ch = _userChenA[serviceHold.isLog.name];
            _loc16_.rh = _loc12_;
            _loc17_.ch = _userChenA[serviceHold.isLog.name];
            _loc17_.rh = _loc12_;
         }
         else if(R4399Main.ceng.value >= 41)
         {
            _loc14_.ch = "死战";
            _loc14_.rh = "最终的荣誉";
            _loc15_.ch = "死战";
            _loc15_.rh = "最终的荣誉";
            _loc16_.ch = "死战";
            _loc16_.rh = "最终的荣誉";
            _loc17_.ch = "死战";
            _loc17_.rh = "最终的荣誉";
         }
         if(serviceHold.isLog.name == "2574934342wy@@@")
         {
            return;
         }
         if(Boolean(serviceHold) && R4399Main.isLogin)
         {
            _loc13_ = R4399Main.getUserData();
            if(_loc13_)
            {
               serviceHold.submitScoreToRankLists(0,[{
                  "rId":zhRankID,
                  "score":_loc13_.cgScore + _loc13_.szScore,
                  "extra":P2PData.compress(JSON.stringify(_loc17_))
               },{
                  "rId":cgRankID,
                  "score":_loc13_.cgScore,
                  "extra":P2PData.compress(JSON.stringify(_loc14_))
               },{
                  "rId":szRankID,
                  "score":_loc13_.szScore,
                  "extra":P2PData.compress(JSON.stringify(_loc15_))
               },{
                  "rId":srRankID,
                  "score":_loc13_.srScore,
                  "extra":P2PData.compress(JSON.stringify(_loc16_))
               }]);
            }
         }
      }
      
      public function setHold(param1:*) : void
      {
         serviceHold = param1;
      }
      
      public function initEvent(param1:Event) : void
      {
         stage.addEventListener(SaveEvent.SAVE_GET,this.saveProcess);
         stage.addEventListener(SaveEvent.SAVE_SET,this.saveProcess);
         stage.addEventListener(SaveEvent.SAVE_LIST,this.saveProcess);
         stage.addEventListener("saveBackIndex",this.saveProcess);
         stage.addEventListener("netSaveError",this.netSaveErrorHandler,false,0,true);
         stage.addEventListener("netGetError",this.netGetErrorHandler,false,0,true);
         stage.addEventListener("multipleError",this.multipleErrorHandler,false,0,true);
         stage.addEventListener("StoreStateEvent",this.getStoreStateHandler,false,0,true);
         stage.addEventListener("getDataExcep",this.getDataExcepHandler,false,0,true);
         stage.addEventListener(RankListEvent.RANKLIST_ERROR,this.onRankListErrorHandler);
         stage.addEventListener(RankListEvent.RANKLIST_SUCCESS,this.onRankListSuccessHandler);
         stage.addEventListener("userLoginOut",this.onUserLogOutHandler,false,0,true);
      }
      
      private function onRankListErrorHandler(param1:RankListEvent) : void
      {
         var _loc2_:* = param1.data;
         var _loc3_:* = "apiFlag:" + _loc2_.apiName + "   errorCode:" + _loc2_.code + "   message:" + _loc2_.message + "\n";
         ComponentResourcesManage.$stage.$box.$api.addShow("系统提示",_loc3_);
      }
      
      private function onUserLogOutHandler(param1:Event) : void
      {
         itxt = "";
         sxRole = "";
         userData = null;
         ceng.value = 0;
         dceng.value = 0;
         dtarget = "";
         dhp.value = 0;
         dn.value = 0;
         dfight.value = 0;
         dfightTo.value = 0;
         dfightTarget = "";
         dfightN.value = 0;
         dfightFight.value = 0;
         dfightArray = null;
         cgScoreObject = new Object();
         szScoreObject = new Object();
         srScoreObject = new Object();
         R4399Main.isLogin = false;
         ComponentResourcesManage.$stage.$box.$api.addShow("系统提示","你已成功退出",true);
         this.dispatchEvent(new Event(R4399Main.EIXT_LOGIN));
      }
      
      private function onRankListSuccessHandler(param1:RankListEvent) : void
      {
         var _loc2_:* = param1.data;
         var _loc3_:* = _loc2_.data;
         switch(_loc2_.apiName)
         {
            case "1":
               ComponentResourcesManage.$stage.showUserRank(_loc2_);
            case "2":
               ComponentResourcesManage.$stage.showUserRank(_loc2_);
            case "4":
               ComponentResourcesManage.$stage.showUserRank(_loc2_);
               break;
            case "3":
               this.decodeSumitScoreInfo(_loc3_);
               break;
            case "5":
               this.decodeUserData(_loc3_);
         }
      }
      
      private function decodeUserData(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:* = "存档索引：" + param1.index + "\n标题:" + param1.title + "\n数据：" + param1.data + "\n存档时间：" + param1.datetime + "\n";
      }
      
      private function decodeSumitScoreInfo(param1:Array) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = "第" + (_loc2_ + 1) + "条数据。排行榜ID：" + _loc3_.rId + "，信息码值：" + _loc3_.code + "\n";
            if(_loc3_.code == "10000")
            {
               _loc4_ += "当前排名:" + _loc3_.curRank + ",当前分数：" + _loc3_.curScore + ",上一局排名：" + _loc3_.lastRank + ",上一局分数：" + _loc3_.lastScore + "\n";
            }
            else
            {
               _loc4_ += "该排行榜提交的分数出问题了。信息：" + _loc3_.message + "\n";
            }
         }
      }
      
      private function decodeRankListInfo(param1:Array) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = "第" + (_loc2_ + 1) + "条数据。存档索引：" + _loc3_.index + ",用户id:" + _loc3_.uId + ",昵称：" + _loc3_.userName + ",分数：" + _loc3_.score + ",排名：" + _loc3_.rank + ",来自：" + _loc3_.area + ",扩展信息：" + _loc3_.extra + "\n";
         }
      }
      
      private function saveProcess(param1:SaveEvent) : void
      {
         var obData:Object = null;
         var logInfo:Object = null;
         var tmpObj:Object = null;
         var data:Array = null;
         var i:* = undefined;
         var uname:String = null;
         var arr:Array = null;
         var obj:Object = null;
         var tmpStr:String = null;
         var e:SaveEvent = param1;
         switch(e.type)
         {
            case SaveEvent.SAVE_GET:
               obData = null;
               try
               {
                  obData = JSON.parse(P2PData.extract(e.data.data));
               }
               catch(e:Error)
               {
                  obData = null;
               }
               if(Boolean(obData) && int(obData.v) >= v)
               {
                  for(i in obData.cg)
                  {
                     R4399Main.setCGScore(i,obData.cg[i]);
                  }
                  for(i in obData.sz)
                  {
                     R4399Main.setSZScore(i,obData.sz[i]);
                  }
                  for(i in obData.sr)
                  {
                     R4399Main.setSRScore(i,obData.sr[i]);
                  }
                  dhp.value = int(obData.szHP);
                  dn.value = int(obData.szNanDu);
                  ceng.value = int(obData.szCeng);
                  dceng.value = int(obData.szDCeng);
                  dtarget = obData.szTarget;
                  itxt = obData.itxt ? obData.itxt : "";
                  dfight.value = int(obData.szFight);
                  dfightFight.value = obData.cgFight;
                  dfightTarget = obData.cgTarget;
                  dfightN.value = obData.cgNanDu;
                  dfightTo.value = obData.cgTo;
                  sxRole = obData.sxRole ? obData.sxRole : "";
                  try
                  {
                     dfightArray = obData.cgArr ? JSON.parse(obData.cgArr) as Array : null;
                  }
                  catch(e:Error)
                  {
                     dfightArray = null;
                  }
               }
               if(!isLogin)
               {
                  isLogin = true;
                  this.dispatchEvent(new Event(R4399Main.INIT_LOGIN));
               }
               logInfo = serviceHold.isLog;
               if(logInfo)
               {
                  uname = serviceHold.isLog.name;
                  R4399Main.rankByName(R4399Main.cgRankID,uname);
                  arr = ["913217696","964169387","15119965102","907319589","748022205","1024398201","flyno1","495418323","jinxinbo1124","5536894","huangzufeiai","110131076"];
                  if(arr.indexOf(uname) != -1)
                  {
                     vip = 1;
                  }
               }
               ComponentResourcesManage.$stage.$box.$api.addShow("系统提示","读档成功",true);
               break;
            case SaveEvent.SAVE_SET:
               if(e.ret as Boolean != true)
               {
                  ComponentResourcesManage.$stage.$box.$api.addShow("系统提示","保存失败");
               }
               break;
            case "saveBackIndex":
               tmpObj = e.ret as Object;
               if(tmpObj == null || int(tmpObj.idx) == -1)
               {
               }
               break;
            case SaveEvent.SAVE_LIST:
               data = e.ret as Array;
               if(data == null)
               {
                  break;
               }
               for(i in data)
               {
                  obj = data[i];
                  if(obj != null)
                  {
                     tmpStr = "存档的位置:" + obj.index + "存档时间:" + obj.datetime + "存档标题:" + obj.title + "存档状态:" + obj.status;
                  }
               }
         }
      }
      
      private function netSaveErrorHandler(param1:Event) : void
      {
      }
      
      private function netGetErrorHandler(param1:DataEvent) : void
      {
         var _loc2_:* = "网络取" + param1.data + "档失败了！";
         this.dispatchEvent(new Event(R4399Main.ERROR_LOGIN));
      }
      
      private function multipleErrorHandler(param1:Event) : void
      {
      }
      
      private function getStoreStateHandler(param1:DataEvent) : void
      {
      }
      
      private function getDataExcepHandler(param1:SaveEvent) : void
      {
         var _loc2_:* = param1.ret as Object;
         var _loc3_:* = "存档的位置:" + _loc2_.index + "存档状态:" + _loc2_.status;
      }
      
      public function get name4399() : String
      {
         if(Boolean(serviceHold) && Boolean(serviceHold.isLog))
         {
            return serviceHold.isLog.name;
         }
         return null;
      }
   }
}

