package;

import openfl.display.Sprite;
import openfl.display.Bitmap;
import motion.Actuate;
import openfl.utils.Assets;

class Flyingtarget extends Sprite {
    public function new () {
        super();
        var shipBitmap = new Bitmap (Assets.getBitmapData ("assets/ship.png"));
		addChild(shipBitmap);
    }

    public function goToNewPosition() {
        var randx:Float = Math.random() * stage.stageWidth;
        var randy:Float = Math.random() * stage.stageHeight;
        var randT:Float = Math.random() * 1;

        Actuate.tween(this, randT, {x:randx,y:randy}).onComplete(goToNewPosition);
    }
}