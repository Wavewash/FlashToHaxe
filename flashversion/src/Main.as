package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Mo Kakwan
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			ImageAssets.init();
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			var space:Bitmap = new Bitmap(ImageAssets.spaceTexture);
			this.addChild(space);
			
			for (var i = 0; i < 5; i++) {
				var ship:flyingtarget = new flyingtarget();
				ship.scaleX = ship.scaleY = Math.random() * 0.5 + 0.5;
				this.addChild(ship);
				ship.goToNewPosition();
			}
			
		}
		
	}
	
}