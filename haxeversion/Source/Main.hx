package;


import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.utils.Assets;

class Main extends Sprite {
		
	
	public function new () {
		super ();

		var spaceBitmap = new Bitmap (Assets.getBitmapData ("assets/space.jpg"));
		addChild(spaceBitmap);

		for (i in 0...5) {
			var ship = new Flyingtarget();
			var s = Math.random() * 0.5 + 0.5;
			ship.scaleX = s;
			ship.scaleY = s;
			this.addChild(ship);
			ship.goToNewPosition();
		}
	
	}
	
	
	
}