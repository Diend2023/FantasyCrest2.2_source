package SystemComponent.Word
{
   import SystemComponent.*;
   import SystemEye.*;
   import flash.geom.*;
   
   public class RoleMathType
   {
      
      public function RoleMathType()
      {
         super();
      }
      
      public static function setPhoto(param1:SystemGameRole, param2:String) : void
      {
         if(param1.$frameInt == 0 && param1.$frameInt !== param1.$skillFrameInt)
         {
            ComponentResourcesManage.$word.$setPhoto.setPhoto(param2,20);
         }
      }
      
      public static function alphaFrame(param1:SystemGameRole) : void
      {
         if(param1.$frameInt == 3)
         {
            param1.$god = 7;
         }
         if(param1.$frameInt < 3)
         {
            param1.alpha -= 0.2;
         }
         else
         {
            param1.alpha += 0.3;
         }
         if(param1.alpha < 0)
         {
            param1.alpha = 0;
         }
         else if(param1.alpha > 1)
         {
            param1.alpha = 1;
         }
      }
      
      public static function skillType(param1:SystemGameRole, param2:SkillShow, param3:String) : void
      {
         if(param3.indexOf(param1.$frameString) == -1)
         {
            param2.alpha -= 0.3;
            if(param2.alpha <= 0)
            {
               param2.CG();
            }
         }
      }
      
      public static function stoicType(param1:SystemGameRole, param2:int, param3:int, param4:int = 0) : void
      {
         if(param2 <= param1.$frameInt && param1.$frameInt <= param3)
         {
            param1.stoic = 0.2;
         }
      }
      
      public static function addTSHurt(param1:SystemGameRole, param2:Class) : int
      {
         var _loc4_:* = undefined;
         var _loc3_:* = 0;
         if(param2["Hrut"] is Function)
         {
            _loc4_ = param2;
            _loc3_ = _loc4_["Hrut"](param1) + int(param1.$fightOB.hurt);
            return Math.random() * _loc3_ * 0.4 + _loc3_ * 0.6 * param1.$lv / 10;
         }
         _loc3_ = int(param1.$fightOB.hurt);
         return Math.random() * _loc3_ * 0.4 + _loc3_ * 0.6 * param1.$lv / 10;
      }
      
      public static function addSkillHurt(param1:SkillShow, param2:Class) : int
      {
         var _loc5_:* = undefined;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(param2["Hrut"] is Function && param2["MHrut"] is Function)
         {
            _loc5_ = param2;
            _loc5_ = param2;
            _loc3_ = _loc5_["Hrut"](param1) * _loc5_["MHrut"](param1);
            _loc4_ = param1.$fuck > 50 ? Math.random() * 50 : 0;
            return Math.random() * _loc3_ * 0.4 + _loc3_ * 0.6 * param1.$role.$lv / 10 + _loc4_;
         }
         return 0;
      }
      
      public static function setSkillHurtOrAdd(param1:SkillShow, param2:int = 0) : void
      {
         param1.$hp -= param2 + 1;
         if(param1.$hp <= 0)
         {
            param1.$time = 0;
         }
      }
      
      public static function setSpeed(param1:SystemGameRole, param2:int) : void
      {
         var _loc3_:* = param2 - param1.$speed;
         param1.$ob.BUFFSpeed = _loc3_;
      }
      
      public static function getGoXY(param1:Object, param2:Object, param3:int) : Point
      {
         var _loc4_:* = param1.$x - param2.$x;
         var _loc5_:* = (param1.$y - param2.$y) * param1.$scaleX;
         var _loc6_:* = Math.atan(_loc5_ / _loc4_) * 180 / Math.PI;
         var _loc7_:* = Math.cos(_loc6_ * Math.PI / 180);
         var _loc8_:* = Math.sin(_loc6_ * Math.PI / 180);
         return new Point(param3 * _loc7_,param3 * _loc8_);
      }
      
      public static function getFront(param1:Object, param2:Object) : Boolean
      {
         if(param1.$scaleX == -1)
         {
            if(param1.x > param2.x)
            {
               return true;
            }
         }
         else if(param1.x < param2.x)
         {
            return true;
         }
         return false;
      }
   }
}

