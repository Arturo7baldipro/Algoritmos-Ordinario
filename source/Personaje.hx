package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

class Personaje extends FlxSprite
{
	public var curCharacter:String;

	public var curEdad:String;
	public var curColorOjos:String;
	public var curRopa:String;
	public var curLunar:String;
	public var curAnteojos:String;
	public var curSombrero:String;
	public var curAccesorio:String;
	public var curPelo:String;
	public var curPiel:String;
	public var curSexo:String;

	public function new(x:Float = 0, y:Float = 0, character:String = "Pepe", edad:String = "Ninguno", colorOjos:String = "Ninguno", ropa:String = "Ninguno",
			lunar:String = "Ninguno", anteojos:String = "Ninguno", sombrero:String = "Ninguno", accesorio:String = "Ninguno", pelo:String = "Ninguno",
			piel:String = "Ninguno", sexo:String = "Ninguno")
	{
		super(x, y);
		this.curCharacter = character; // No cuenta como caracteristica
		this.curColorOjos = colorOjos;
		this.curRopa = ropa;
		this.curLunar = lunar;
		this.curAnteojos = anteojos;
		this.curSombrero = sombrero;
		this.curAccesorio = accesorio;
		this.curPelo = pelo;
		this.curPiel = piel;
		this.curSexo = sexo;
		// Usen los "cur" si quieren cambiar variables de un personajes, tienen de default "Ninguno";
		switch (curCharacter)
		{
			case "Pepe":
				loadGraphic("assets/images/PlaceHolder.png");
				antialiasing = false;
				curSombrero = "PlaceHolder";
				curAccesorio = "Ninguno";
				curPelo = "Afro";
				curPiel = "Cafe";
				curSexo = "Hombre";
			case "Sech":
				loadGraphic("assets/images/PlaceHolder2.png");
				antialiasing = false;
				curSombrero = "Sech";
				curAccesorio = "bola";
				curPelo = "Esponjado";
				curPiel = "Cafe";
				curSexo = "Hombre";
			case "Quaso":
				loadGraphic("assets/images/PlaceHolder3.png");
				antialiasing = false;
				curSombrero = "Sech";
				curAccesorio = "bola";
				curPelo = "Esponjado";
				curPiel = "Cafe";
				curSexo = "Hombre";
		}
	}
}
