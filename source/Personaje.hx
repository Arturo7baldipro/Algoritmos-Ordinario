package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

class Personaje extends FlxSprite
{
	public var curCharacter:String;
	public var curSombrero:String;
	public var curAccesorio:String;

	public function new(x:Float = 0, y:Float = 0, character:String = "Pepe", sombrero:String = "Ninguno", accesorio:String = "Ninguno")
	{
		super(x, y);
		this.curCharacter = character;
		this.curSombrero = sombrero;
		this.curAccesorio = accesorio;

		switch (curCharacter)
		{
			case "Pepe":
				loadGraphic("assets/images/PlaceHolder.png");
				antialiasing = false;
				curSombrero = "PlaceHolder";
				curAccesorio = "Ninguno";
			case "Sech":
				loadGraphic("assets/images/PlaceHolder2.png");
				antialiasing = false;
				curSombrero = "Sech";
				curAccesorio = "bola";
		}
	}
}
