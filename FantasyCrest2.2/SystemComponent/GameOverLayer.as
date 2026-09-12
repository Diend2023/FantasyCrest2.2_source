package SystemComponent
{
   import SystemEye.*;
   import com.gskinner.motion.*;
   import eye.Draw.*;
   import flash.display.*;
   import flash.text.*;
   import person.names.*;
   import person.text.*;
   
   public class GameOverLayer extends Sprite
   {
      
      public function GameOverLayer(param1:String = "1PALL")
      {
         var mode:*;
         var sprite:*;
         var text:*;
         var score:*;
         var button:*;
         var gtw:*;
         var strText:String = null;
         super();
         mode = param1;
         this.graphics.beginBitmapFill(DataStorage.readImg("BOX"));
         this.graphics.drawRect(0,0,412,150);
         sprite = new Sprite();
         this.addChild(sprite);
         sprite.graphics.beginBitmapFill(DataStorage.readImg("BOX"));
         sprite.graphics.drawRect(0,DataStorage.readImg("BOX").height - 150,412,150);
         sprite.y = -DataStorage.readImg("BOX").height + 300;
         if(mode != "SZ")
         {
            if(mode == "TwoAll")
            {
            }
         }
         text = TextBitmap.createBitmap(strText + "挑战结果",412,46,28);
         text.y = 8;
         this.addChild(text);
         text = TextBitmap.createBitmap("挑战难度【" + GameData.NDString() + "】",412,46,18);
         text.y = 55;
         this.addChild(text);
         text = TextBitmap.createBitmap("挑战BOSS【" + GameData.$boss + "】",412,46,18);
         text.y = 85;
         this.addChild(text);
         text = TextBitmap.createBitmap("使用角色【" + GameData.getSelectName(GameData.$roleSelectArray[0]) + "】",412,46,18);
         text.y = 115;
         this.addChild(text);
         score = GameScore.getScore();
         text = TextBitmap.createBitmap("你的战力【" + score + "】",412,46,18);
         text.y = 145;
         this.addChild(text);
         text = TextBitmap.createBitmap("获得称号【" + GoodName.getName(score) + "】",412,46,18);
         text.y = 175;
         this.addChild(text);
         if(GameData.NDString() == "变态")
         {
            text = TextBitmap.createBitmap("<战力高的原因，更在于HP剩余以及战斗速度上>",312,76,12,TextFormatAlign.CENTER,16711680);
         }
         else
         {
            text = TextBitmap.createBitmap("<如果挑战变态难度，战力可以提高50%>",312,76,12,TextFormatAlign.CENTER,16711680);
         }
         text.y = 203;
         text.x += 50;
         this.addChild(text);
         button = new SystemButton(BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"),XML(DataStorage.readText("buttonUI2"))),TextBitmap.createBitmapData("返回主页",250,46,26));
         this.addChild(button);
         button.x = this.width / 2 - button.width / 2;
         button.y = this.height - button.height;
         button.$function = function():*
         {
            SystemEvent.exit();
            this.parent.parent.removeChild(this.parent);
         };
         this.alpha = 0;
         gtw = new GTween(this,0.3,{
            "y":10,
            "alpha":1
         });
         gtw.play();
         if(mode == "SZ")
         {
            R4399Main.setSZScore(GameData.$roleSelectArray[0],score);
         }
         else if(mode == "TwoAll")
         {
            R4399Main.setSRScore(GameData.$roleSelectArray[0],score);
            R4399Main.setSRScore(GameData.$roleSelectArray[1],score);
         }
         else
         {
            R4399Main.setCGScore(GameData.$roleSelectArray[0],score);
         }
         R4399Main.saveData();
      }
   }
}

