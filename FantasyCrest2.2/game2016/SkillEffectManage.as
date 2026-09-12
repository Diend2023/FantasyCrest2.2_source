package game2016
{
   import SystemComponent.SystemGameRole;
   import SystemEye.ComponentResourcesManage;
   
   public class SkillEffectManage
   {
      
      public static const effectManage:SkillEffectManage = new SkillEffectManage();
      
      public function SkillEffectManage()
      {
         super();
      }
      
      public function parsing(param1:SystemGameRole, param2:String) : void
      {
         var i:Object = null;
         var arr:Array = null;
         var ob:Object = null;
         var role:SystemGameRole = param1;
         var data:String = param2;
         try
         {
            arr = JSON.parse(data) as Array;
         }
         catch(e:Error)
         {
            return;
         }
         for(i in arr)
         {
            ob = JSON.parse(arr[i]);
            ComponentResourcesManage.$word.askElements("skill",{
               "name":role.roleTarget + "_effect/" + ob.name,
               "scaleX":ob.scaleX * role.$scaleX,
               "scaleY":ob.scaleY,
               "blendMode":ob.blendMode,
               "fps":ob.fps - 1,
               "x":role.$x + ob.x * role.$scaleX,
               "y":role.$y + ob.y,
               "fuck":ob.fightTime,
               "role":role,
               "type":"SkillParsing",
               "hitX":ob.hitX,
               "hitY":ob.hitY,
               "hurt":ob.hurt,
               "hitEff":role.FuckClass,
               "ka":(ob.blow ? [1,10] : undefined),
               "gox":ob.gox,
               "goy":ob.goy,
               "stiff":ob.stiff,
               "time":ob.time,
               "color":(ob.srcColor == -1 ? null : ob.color),
               "isBreak":ob.isBreak,
               "isFollow":ob.isFollow,
               "isLock":ob.isLockAction,
               "findName":ob.findName
            });
         }
      }
   }
}

