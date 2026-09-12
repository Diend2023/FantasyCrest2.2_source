package SystemComponent.Word
{
   import SystemComponent.*;
   import SystemEye.*;
   import eye.Draw.*;
   import flash.display.*;
   import flash.geom.*;
   import flash.text.*;
   import flash.ui.*;
   import game2016.*;
   import person.animation.easyShow.apps.*;
   import person.fight.hits.*;
   
   public class HPMP extends Sprite
   {
      
      private var $hredR:Shape;
      
      private var $hredM:Bitmap;
      
      private var $hred:Bitmap;
      
      private var $HP:Bitmap;
      
      private var $MP:Bitmap;
      
      private var $bitmapHP:Bitmap;
      
      private var $bitmapMP:Bitmap;
      
      private var $bitmap:Bitmap;
      
      private var $bitmapData:BitmapData;
      
      private var $hpText:TextField;
      
      private var $xml:XML;
      
      private var $scaleX:int = 1;
      
      private var tfrom:TextFormat;
      
      private var $gif:EasyGIF;
      
      private var $hit:Hits;
      
      private var $redHP:Shape;
      
      private var $winBitmap:Bitmap;
      
      public var $win:int = 0;
      
      private var m_x:int = 0;
      
      private var m_point:Point;
      
      public var $role:SystemGameRole;
      
      private var $hpWidth:int;
      
      private var $mpWidth:int;
      
      private var $hpx:int;
      
      private var $mpx:int;
      
      private var $ahp:int = -1;
      
      private var m_array:Array;
      
      private var m_zhen:int = 0;
      
      public var CDBoolean:Boolean = true;
      
      private var $cdW:int = 100;
      
      private var $cdData:BitmapData;
      
      private var $cdXML:XML;
      
      private var $cdOrder:Bitmap;
      
      private var $CDSprite:Sprite;
      
      private var $CD:Object;
      
      private var $Order:Object;
      
      public function HPMP(param1:int)
      {
         super();
         this.$hredR = new Shape();
         this.$hredM = new Bitmap();
         this.$hred = new Bitmap();
         this.$HP = new Bitmap();
         this.$MP = new Bitmap();
         this.$bitmapHP = new Bitmap();
         this.$bitmapMP = new Bitmap();
         this.$bitmap = new Bitmap();
         this.$hpText = new TextField();
         this.tfrom = new TextFormat();
         this.$redHP = new Shape();
         this.$winBitmap = new Bitmap();
         this.m_array = new Array();
         this.$CDSprite = new Sprite();
         this.$CD = new Object();
         this.$Order = new Object();
         this.$bitmapData = DataStorage.readImg("HPMP");
         this.$xml = XML(DataStorage.readText("HPMP"));
         this.$cdData = DataStorage.readImg("System_CD");
         this.$cdXML = XML(DataStorage.readText("System_CD"));
         var _loc2_:* = 1;
         if(param1 == 0)
         {
            this.$bitmap.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[1]);
         }
         else
         {
            _loc2_ = -1;
            this.$bitmap.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[1],-1);
            this.x = 700 - this.$bitmap.width;
         }
         this.addChild(this.$bitmap);
         this.addChild(this.$redHP);
         this.$bitmapHP.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[2],_loc2_);
         this.$bitmapMP.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[2],_loc2_);
         this.$HP.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[3],_loc2_);
         this.$MP.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[4],_loc2_);
         this.addChild(this.$bitmapHP);
         this.addChild(this.$bitmapMP);
         this.addChild(this.$HP);
         this.addChild(this.$MP);
         if(_loc2_ == 1)
         {
            this.$HP.x -= int(this.$xml.SubTexture[3].@frameX);
            this.$HP.y -= int(this.$xml.SubTexture[3].@frameY);
            this.$MP.x -= int(this.$xml.SubTexture[4].@frameX);
            this.$MP.y -= int(this.$xml.SubTexture[4].@frameY);
            this.$winBitmap.x = this.$MP.x;
            this.$winBitmap.y = this.$MP.y + 10;
         }
         else
         {
            this.$HP.x += int(this.$xml.SubTexture[3].@frameX) - int(this.$xml.SubTexture[3].@width) + int(this.$xml.SubTexture[3].@frameWidth);
            this.$HP.y -= int(this.$xml.SubTexture[3].@frameY);
            this.$MP.x += int(this.$xml.SubTexture[4].@frameX) - int(this.$xml.SubTexture[4].@width) + int(this.$xml.SubTexture[4].@frameWidth);
            this.$MP.y -= int(this.$xml.SubTexture[4].@frameY);
            this.$winBitmap.x = this.$MP.x + this.$MP.width;
            this.$winBitmap.y = this.$MP.y + 10;
            this.$winBitmap.scaleX = -1;
         }
         this.$hpText.x = this.$HP.x;
         this.$hpText.y = this.$HP.y + 4;
         this.$hpText.width = this.$HP.width;
         this.addChild(this.$hpText);
         this.$hpText.mouseEnabled = false;
         this.$hpText.blendMode = BlendMode.SCREEN;
         this.tfrom.color = 16558178;
         if(_loc2_ == 1)
         {
            this.tfrom.align = TextFormatAlign.RIGHT;
         }
         this.$hpWidth = this.$HP.bitmapData.width;
         this.$mpWidth = this.$MP.bitmapData.width;
         this.$bitmapHP.mask = this.$HP;
         this.$bitmapMP.mask = this.$MP;
         this.$hpx = this.$HP.x;
         this.$mpx = this.$MP.x;
         this.$redHP.graphics.beginFill(16711680);
         this.$redHP.graphics.drawRect(0,1,this.$HP.width,this.$HP.height - 1);
         this.$redHP.x = this.$HP.x;
         this.$redHP.y = this.$HP.y;
         this.$scaleX = _loc2_;
         this.addChild(this.$winBitmap);
      }
      
      public function pointinit() : void
      {
         this.m_point = new Point(this.x,this.y);
      }
      
      public function addNum(param1:int = -1) : void
      {
         this.$hit.addNum(param1);
      }
      
      public function getNum() : int
      {
         return this.$hit.getHitNum();
      }
      
      public function addWin() : void
      {
         if(this.$winBitmap.bitmapData == null)
         {
            this.$winBitmap.bitmapData = new BitmapData(100,50,true,0);
         }
         var _loc1_:* = DataStorage.readImg("WIN");
         this.$winBitmap.bitmapData.draw(_loc1_,new Matrix(1,0,0,1,50 * this.$win));
         this.$winBitmap.blendMode = BlendMode.SCREEN;
         _loc1_.dispose();
         var _loc2_:* = this;
         var _loc3_:* = this.$win + 1;
         _loc2_.$win = _loc3_;
      }
      
      public function set role(param1:SystemGameRole) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:* = undefined;
         this.$role = param1;
         if(this.$hred.bitmapData == null)
         {
            this.$hred.bitmapData = DataStorage.readImg("Hred" + this.$role.$target);
            this.$hred.x = 16;
            this.$hred.y = 10;
            if(this.$scaleX == -1)
            {
               this.$hred.x = this.$bitmapHP.width - 16 - this.$hred.width;
            }
            this.addChild(this.$hred);
            this.$hredM.bitmapData = BitmapDataDraw.xmlForBitmapData(this.$bitmapData,this.$xml.SubTexture[0],this.$scaleX);
            this.addChild(this.$hredM);
            this.$hredR.graphics.beginFill(16711680);
            this.$hredR.graphics.drawCircle(this.$hred.x + 20,this.$hred.y + 20,20);
            this.$hredR.graphics.endFill();
            this.addChild(this.$hredR);
            this.$hred.mask = this.$hredR;
            this.$gif = new EasyGIF(DataStorage.readImg("buff1"),DataStorage.readText("buff1"));
            this.$gif.x = this.$hred.x - 26;
            this.$gif.y = this.$hred.y - 46;
            this.$gif.$scaleX = this.$scaleX;
            this.addChild(this.$gif);
            this.$hit = new Hits(DataStorage.readImg("System_HIT"),DataStorage.readImg("System_NUM"));
            this.$hit.x = this.$hred.x + 40 * this.$scaleX;
            this.$hit.y = this.$hred.y + 80;
            this.$hit.$scaleX = this.$scaleX;
            this.addChild(this.$hit);
            this.addChild(this.$CDSprite);
            this.$CDSprite.y = 70;
            this.$CDSprite.scaleX = this.$scaleX;
            if(this.$scaleX == -1)
            {
               this.$CDSprite.x = this.$bitmap.width;
            }
         }
         else
         {
            for(_loc3_ in this.$CD)
            {
               if(this.$CD[_loc3_] is Shape)
               {
                  this.$CDSprite.removeChild(this.$CD[_loc3_]);
                  this.$Order[_loc3_].bitmapData.dispose();
                  this.$CDSprite.removeChild(this.$Order[_loc3_]);
                  this.$CD[_loc3_] = null;
                  this.$Order[_loc3_] = null;
               }
            }
         }
      }
      
      public function onFrame() : void
      {
         var _loc7_:* = undefined;
         var _loc8_:int = 0;
         var _loc9_:* = undefined;
         var _loc1_:* = undefined;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = undefined;
         var _loc6_:* = null;
         if(this.$role is SystemGameRole)
         {
            for(_loc7_ in this.m_array)
            {
               this.m_array[_loc7_].alpha -= 0.05;
               if(this.m_array[_loc7_].alpha <= 0)
               {
                  this.removeChild(this.m_array[_loc7_]);
                  this.m_array.splice(_loc7_,1);
               }
            }
            if(this.m_zhen > 0)
            {
               --this.m_zhen;
               this.x = this.m_point.x + Math.random() * 5;
               this.y = this.m_point.y + Math.random() * 5;
            }
            else
            {
               this.x = this.m_point.x;
               this.y = this.m_point.y;
            }
            if(this.CDBoolean)
            {
               _loc8_ = 0;
               for(_loc9_ in this.$role.$skillCD)
               {
                  if(this.$CD[_loc9_] is Shape)
                  {
                     if(this.$role.$skillCD[_loc9_] == 1)
                     {
                        this.$CDSprite.removeChild(this.$CD[_loc9_]);
                        this.$CD[_loc9_] = null;
                        this.$CDSprite.removeChild(this.$Order[_loc9_]);
                        this.$Order[_loc9_].bitmapData.dispose();
                        this.$Order[_loc9_] = null;
                     }
                  }
                  else if(this.$role.$skillCD[_loc9_] > 1 && this.$role.$skillCD[_loc9_] !== undefined)
                  {
                     this.$CD[_loc9_] = new Shape();
                     this.$CDSprite.addChild(this.$CD[_loc9_]);
                     this.$Order[_loc9_] = new Bitmap();
                     this.$CDSprite.addChild(this.$Order[_loc9_]);
                     this.drawOrder(this.$Order[_loc9_],_loc9_);
                  }
                  if(this.$CD[_loc9_] is Shape)
                  {
                     this.$CD[_loc9_].y = 18 * _loc8_;
                     this.$Order[_loc9_].y = 18 * _loc8_;
                     this.drawCD(this.$CD[_loc9_],_loc9_);
                  }
                  _loc8_++;
               }
            }
            this.$hpText.text = this.$role.gethp + "/" + this.$role.$hpMax;
            _loc2_ = this.$mpWidth * (this.$role.$mp / this.$role.$mpMax);
            _loc3_ = this.$hpWidth * (this.$role.gethp / this.$role.$hpMax);
            if(this.$ahp !== -1 && this.$ahp > this.$role.gethp)
            {
               _loc6_ = new Shape();
               _loc6_.scaleX = this.$scaleX;
               _loc6_.y = this.$HP.y + 1;
               _loc6_.x = this.$hpx;
               _loc6_.alpha = 1.2;
               _loc6_.graphics.beginFill(16777215,1);
               _loc6_.graphics.drawRect(_loc3_ - (this.$scaleX == -1 ? this.$hpWidth : 0),0,this.$hpWidth * (this.$ahp - this.$role.gethp) / this.$role.$hpMax,this.$HP.height - 1);
               _loc6_.graphics.endFill();
               this.addChild(_loc6_);
               this.m_array.push(_loc6_);
               if((this.$ahp - this.$role.gethp) / this.$role.$hpMax > 0.01)
               {
                  this.m_zhen = 10;
               }
            }
            this.$ahp = this.$role.gethp;
            this.$hpText.setTextFormat(this.tfrom);
            if(_loc3_ > this.$HP.width)
            {
               this.$HP.width -= (this.$HP.width - _loc3_) * 0.2;
            }
            else
            {
               this.$HP.width = _loc3_;
            }
            this.$MP.width -= (this.$MP.width - _loc2_) * 0.2;
            if(this.$role.$rigid <= 0)
            {
               if(this.$redHP.width > this.$HP.width)
               {
                  --this.$redHP.width;
               }
               else
               {
                  this.$redHP.width = this.$HP.width;
               }
            }
            if(this.$scaleX == -1)
            {
               this.$HP.x = this.$hpx + (this.$hpWidth - this.$HP.width);
               this.$MP.x = this.$mpx + (this.$mpWidth - this.$MP.width);
               this.$redHP.x = this.$hpx + (this.$hpWidth - this.$redHP.width);
            }
         }
      }
      
      private function drawCD(param1:Shape, param2:String) : void
      {
         var i:*;
         var cd:int = 0;
         var s:* = param1;
         var to:* = param2;
         try
         {
            if(this.$role.$class == RoleParsing)
            {
               RoleParsing.$ob = this.$role.roleData.skillData;
            }
            cd = this.$role.$class["$ob"][to] ? int(this.$role.$class["$ob"][to].cd) : 0;
         }
         catch(e:Error)
         {
            return;
         }
         i = this.$role.$skillCD[to];
         s.graphics.clear();
         s.graphics.beginFill(0,1);
         s.graphics.drawRect(-1,-1,50 / (cd * 40) * i + 2,7);
         s.graphics.endFill();
         s.graphics.beginFill(16777215,0.6);
         s.graphics.drawRect(0,0,50 / (cd * 40) * i,5);
         s.graphics.endFill();
      }
      
      private function drawOrder(param1:Bitmap, param2:String) : void
      {
         var bool:*;
         var key:*;
         var orderString:String = null;
         var mx:Matrix = null;
         var i:int = 0;
         var b:* = param1;
         var cdString:* = param2;
         try
         {
            if(this.$role.$class == RoleParsing)
            {
               RoleParsing.$ob = this.$role.roleData.skillData;
            }
            orderString = this.$role.$class["$ob"][cdString].s;
         }
         catch(e:Error)
         {
            return;
         }
         bool = this.$role.$class["$ob"][cdString].k;
         key = this.$role.$class["$ob"][cdString].key;
         b.bitmapData = new BitmapData(14 * (orderString.length + 3),18,true,0);
         while(i < orderString.length)
         {
            mx = new Matrix(1,0,0,1,11 * i);
            switch(orderString.charAt(i))
            {
               case "A":
               case "D":
                  b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[3]),mx);
                  break;
               case "S":
                  b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[1]),mx);
                  break;
               case "W":
                  b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[0]),mx);
            }
            i += 1;
         }
         mx = new Matrix(1,0,0,1,11 * orderString.length);
         if(orderString.length !== 0)
         {
            b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[18]),mx);
         }
         if(bool)
         {
            mx.tx = 11 * (orderString.length + 1);
            b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[5]),mx);
            mx.tx = 11 * (orderString.length + 2);
         }
         else
         {
            mx.tx = 11 * (orderString.length + 1);
         }
         switch(key)
         {
            case Keyboard.J:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[4]),mx);
               break;
            case Keyboard.K:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[5]),mx);
               break;
            case Keyboard.L:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[6]),mx);
               break;
            case Keyboard.U:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[7]),mx);
               break;
            case Keyboard.I:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[8]),mx);
               break;
            case Keyboard.O:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[9]),mx);
               break;
            case Keyboard.P:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[10]),mx);
               break;
            case Keyboard.NUMPAD_1:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[11]),mx);
               break;
            case Keyboard.NUMPAD_2:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[12]),mx);
               break;
            case Keyboard.NUMPAD_3:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[13]),mx);
               break;
            case Keyboard.NUMPAD_4:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[14]),mx);
               break;
            case Keyboard.NUMPAD_5:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[15]),mx);
               break;
            case Keyboard.NUMPAD_6:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[16]),mx);
               break;
            case Keyboard.NUMPAD_9:
               b.bitmapData.draw(BitmapDataDraw.xmlForBitmapData(this.$cdData,this.$cdXML.SubTexture[17]),mx);
         }
         if(this.$scaleX == -1)
         {
            b.scaleX = this.$scaleX;
            b.x += 14 * (orderString.length + 3);
         }
      }
      
      public function CG() : void
      {
         var _loc1_:* = undefined;
         if(this.$gif)
         {
            this.$gif.CG();
         }
         for(_loc1_ in this)
         {
            if(this[_loc1_] is TextField || this[_loc1_] is Bitmap)
            {
               this[_loc1_].removeChild(this[_loc1_]);
            }
         }
         this.parent.removeChild(this);
      }
   }
}

