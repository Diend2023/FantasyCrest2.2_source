package p2p2016
{
   import SystemComponent.SystemGameRole;
   import SystemComponent.SystemWord;
   import SystemComponent.Word.HPMP;
   import SystemComponent.Word.HurtMath;
   import SystemComponent.Word.SkillShow;
   import SystemEye.ComponentResourcesManage;
   import SystemEye.GameData;
   import com.dynamicflash.util.Base64;
   import flash.events.Event;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   import rainy.p2p.P2PManage;
   
   public class P2PData
   {
      
      public static var p2p:P2PManage;
      
      private static const SERVER:String = "rtmfp://p2p.rtmfp.net/";
      
      private static const DEVKEY:String = "eab5eb35df059722f1670741-b0cbffefae78";
      
      public static var _isVideo:Boolean = false;
      
      public static var videoData:ByteArray = new ByteArray();
      
      public function P2PData()
      {
         super();
      }
      
      public static function init(param1:Function) : void
      {
         if(!p2p)
         {
            p2p = new P2PManage();
         }
         if(Main.IS_LAN)
         {
            p2p.connectServer("rtmfp:",param1);
            return;
         }
         p2p.connectServer(SERVER + DEVKEY,param1);
      }
      
      public static function conversionWorldData(param1:SystemWord) : String
      {
         var _loc2_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = null;
         var _loc5_:* = new Object();
         _loc5_.world = [];
         for(_loc2_ in param1.$elementsOb)
         {
            if(param1.$elementsOb[_loc2_] != null)
            {
               _loc4_ = {
                  "time":new Date().getTime(),
                  "name":_loc2_,
                  "x":param1.$elementsOb[_loc2_].x,
                  "y":param1.$elementsOb[_loc2_].y,
                  "data":getClassData(param1.$elementsOb[_loc2_])
               };
               _loc5_.world.push(_loc4_);
            }
         }
         _loc3_ = 0;
         while(_loc3_ < param1.$hpmpArray.length)
         {
            _loc5_["p" + (_loc3_ + 1)] = {
               "hp":(param1.$hpmpArray[_loc3_].$role as SystemGameRole).gethp,
               "mp":(param1.$hpmpArray[_loc3_].$role as SystemGameRole).$mp,
               "cd":(param1.$hpmpArray[_loc3_].$role as SystemGameRole).$skillCD,
               "hit":(param1.$hpmpArray[_loc3_] as HPMP).getNum()
            };
            _loc3_++;
         }
         if(videoData.length == 0)
         {
            _loc5_.map = GameData.$mapTarget;
            _loc5_.mode = GameData.$mode;
         }
         _loc5_.zhen = param1.$map.$zhen;
         _loc5_.time = param1.$time.$fightTime;
         var _loc6_:* = JSON.stringify(_loc5_);
         if(_isVideo && Boolean(videoData))
         {
            videoData.writeUTFBytes(_loc6_);
         }
         return compress(_loc6_);
      }
      
      public static function saveVideo() : void
      {
         var file:FileReference = null;
         if(Boolean(videoData) && videoData.length != 0)
         {
            videoData.compress();
            file = new FileReference();
            file.save(videoData,"video_" + new Date().getTime() + ".zygame");
            file.addEventListener(Event.COMPLETE,function(param1:Event):*
            {
               ComponentResourcesManage.$stage.$box.$api.addShow("提示","保存完毕");
            });
         }
      }
      
      public static function clearVideo() : void
      {
         if(videoData)
         {
            videoData.clear();
         }
      }
      
      public static function compress(param1:String) : String
      {
         if(Main.IS_ONLINE_ZIP == false)
         {
            return param1;
         }
         var _loc2_:* = new ByteArray();
         _loc2_.writeUTF(param1);
         _loc2_.compress();
         return Base64.encodeByteArray(_loc2_);
      }
      
      public static function extract(param1:String) : String
      {
         if(Main.IS_ONLINE_ZIP == false)
         {
            return param1;
         }
         var _loc2_:* = Base64.decodeToByteArray(param1);
         _loc2_.uncompress();
         return _loc2_.readUTF();
      }
      
      private static function getClassData(param1:Object) : Object
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(param1 as HurtMath)
         {
            _loc2_ = param1 as HurtMath;
            _loc5_ = new Object();
            _loc5_.type = "hurt";
            _loc5_.hurt = _loc2_.hurt;
         }
         else if(param1 as SystemGameRole)
         {
            _loc3_ = param1 as SystemGameRole;
            _loc5_ = new Object();
            _loc5_.type = "role";
            _loc5_.frame = _loc3_.$frameInt;
            _loc5_.frameString = _loc3_.$frameString;
            _loc5_.target = _loc3_.$target;
            _loc5_.x = _loc3_.$x;
            _loc5_.y = _loc3_.$y;
            _loc5_.scaleX = _loc3_.$scaleX;
            _loc5_.scaleY = _loc3_.$scaleY;
            _loc5_.god = _loc3_.$god;
            _loc5_.stoic = _loc3_.$stoic;
            _loc5_.roleTarget = _loc3_.roleTarget;
            _loc5_.qzFrameString = _loc3_.qzFrameString;
         }
         else if(param1 as SkillShow)
         {
            _loc4_ = param1 as SkillShow;
            _loc5_ = new Object();
            _loc5_.type = "skill";
            _loc5_.frame = _loc4_.$frameInt;
            _loc5_.target = _loc4_.$skillType;
            _loc5_.x = _loc4_.$x;
            _loc5_.y = _loc4_.$y;
            _loc5_.color = _loc4_.skillColor;
            _loc5_.scaleX = _loc4_.$scaleX;
            _loc5_.scaleY = _loc4_.$scaleY;
            _loc5_.blendMode = _loc4_.blendMode;
         }
         return _loc5_;
      }
   }
}

