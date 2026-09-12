package SystemAPI
{
   import SystemComponent.*;
   import SystemComponent.Word.*;
   import flash.geom.*;
   
   public class SkillMath
   {
      
      public function SkillMath()
      {
         super();
      }
      
      public static function MoveDirection(param1:SystemGameRole, param2:int) : Point
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = undefined;
         var _loc6_:* = new Point(5,0);
         if(param1)
         {
            _loc3_ = param1.hitRoleAndSkill(3000);
            for(_loc5_ in _loc3_)
            {
               _loc4_ = _loc3_[_loc5_];
               if(RoleMathType.getFront(param1,_loc4_) && _loc4_ is SystemGameRole)
               {
                  break;
               }
               _loc4_ = null;
            }
            if(_loc4_ !== null)
            {
               _loc6_ = RoleMathType.getGoXY(param1,_loc4_,15);
            }
            else
            {
               _loc6_ = new Point(param2,0);
            }
         }
         return _loc6_;
      }
      
      public static function get JianTX() : String
      {
         return "JIAN" + String(int(Math.random() * 4 + 1));
      }
   }
}

