package SystemComponent.Select
{
   import SystemEye.*;
   import flash.display.*;
   
   public class HeadSelect extends Bitmap
   {
      
      public var m_target:String;
      
      public var m_ob:Object;
      
      public var m_name:String;
      
      public function HeadSelect(param1:String, param2:XML)
      {
         super();
         this.m_target = param1;
         this.bitmapData = DataStorage.readImg("Hred" + param1);
         this.m_ob = new Object();
         this.m_name = param2.@name;
         this.m_ob.hp = param2.@hp;
         this.m_ob.mp = param2.@mp;
         this.m_ob.fang = param2.@fang;
         this.m_ob.li = param2.@li;
         this.m_ob.kt = param2.@kt;
         this.m_ob.speed = param2.@speed;
         this.m_ob.zl = param2.@zl;
         this.m_ob.jump = param2.@jump;
         this.m_ob.bq = param2.@bq;
         if(!GameData.$roleNengLi[param1])
         {
            GameData.$roleNengLi[param1] = this.m_ob;
         }
      }
   }
}

