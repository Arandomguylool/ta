package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('healthIcons'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('gf', [2, 3], 0, false, isPlayer);
		animation.add('face', [4, 5], 0, false, isPlayer);
		animation.add('hank', [6, 7], 0, false, isPlayer);
		animation.add('tricky', [8, 9], 0, false, isPlayer);
		animation.add('boombox', [4, 5], 0, false, isPlayer);
		animation.add('gf-hands-up', [4, 5], 0, false, isPlayer);
		animation.add('hank-real', [10, 11], 0, false, isPlayer);
		animation.add('hank-white', [12, 13], 0, false, isPlayer);
		animation.play(char);

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}