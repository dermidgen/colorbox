package 
{
	import flash.display.*;
	import flash.net.*;
	import flash.text.*;
	import flash.events.Event;
	import flash.external.ExternalInterface;
	
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
						
			stage.scaleMode = "noScale";
			stage.align = "TL";
			
			var flashvars:Object = LoaderInfo(this.root.loaderInfo).parameters;
						
			if (flashvars.background) {
				var ldr:Loader = new Loader();
				var request:URLRequest = new URLRequest(flashvars.background);
				ldr.load(request);
				addChild(ldr);
			}
			
			if (flashvars.title) {
				var tf:TextField = new TextField();
				tf.autoSize = TextFieldAutoSize.LEFT;
				tf.border = true;
				tf.background = true;
				tf.backgroundColor = 0xFFFFFF;
				tf.appendText(flashvars.title);
				tf.selectable = false;
				addChild(tf);
				tf.x = 50;
				tf.y = 50;
			}
		}
		
	}
	
}
