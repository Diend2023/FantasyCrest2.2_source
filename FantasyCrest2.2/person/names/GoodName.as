package person.names
{
   public class GoodName
   {
      
      public function GoodName()
      {
         super();
      }
      
      public static function getName(param1:int) : String
      {
         if(param1 < 1000)
         {
            return "初出茅庐";
         }
         if(param1 < 2000)
         {
            return "挑战者";
         }
         if(param1 < 3000)
         {
            return "征服者";
         }
         if(param1 < 4000)
         {
            return "猎头者";
         }
         if(param1 < 5000)
         {
            return "融会贯通";
         }
         if(param1 < 6000)
         {
            return "精英克星";
         }
         if(param1 < 7000)
         {
            return "丧心病狂";
         }
         if(param1 < 8000)
         {
            return "英雄传说";
         }
         if(param1 < 9000)
         {
            return "独孤求败";
         }
         if(param1 < 10000)
         {
            return "天下无敌";
         }
         return "舞弊者";
      }
   }
}

