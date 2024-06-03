package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import haxe.macro.Expr.Case;

class Personaje extends FlxSprite
{
	public var curCharacter:String;
	public var curRaza:String;
	public var curBelloFacial:String;
	public var curEdad:String;
	public var curRopa:String;
	public var curLunar:String;
	public var curSombrero:String;
	public var curPelo:String;
	public var curPiel:String;
	public var curSexo:String;
	public var curLentes:String;

	public function new(x:Float = 0, y:Float = 0, character:String = "Pepe", edad:String = "Ninguno", ropa:String = "Ninguno", anteojos:String = "Ninguno",
			sombrero:String = "Ninguno", pelo:String = "Ninguno", belloFacial:String = "Ninguno", raza:String = "Ninguno", piel:String = "Ninguno",
			sexo:String = "Ninguno", lentes:String = "Ninguno")
	{
		super(x, y);
		this.curCharacter = character; // No cuenta como caracteristica
		this.curRopa = ropa;
		this.curSombrero = sombrero;
		this.curPelo = pelo;
		this.curPiel = piel;
		this.curSexo = sexo;
		this.curEdad = edad;
		this.curBelloFacial = belloFacial;
		this.curRaza = raza;
		this.curLentes = lentes;
		// Usen los "cur" si quieren cambiar variables de un personajes, tienen de default "Ninguno";
		switch (curCharacter)
		{
			case "Juan":
				loadGraphic("assets/images/Juan.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "si";
				curPelo = "negro";
				curPiel = "oscura";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "negra";
				curRaza = "afroamericana";
			case "Alejandro":
				loadGraphic("assets/images/Alejandro.png");
				antialiasing = false;
				curLentes = "si";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "traje";
				curRaza = "caucasica";
			case "Andrea":
				loadGraphic("assets/images/Andrea.png");
				antialiasing = false;
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "oscura";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "morada";
				curRaza = "caucasica";
			case "Andres":
				loadGraphic("assets/images/Andres.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "verde";
				curRaza = "caucasica";
			case "Pedro":
				loadGraphic("assets/images/Pedro.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "azul";
				curRaza = "caucasica";
			case "Antonio":
				loadGraphic("assets/images/Antonio.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "si";
				curRopa = "negra";
				curRaza = "caucasica";
			case "Adolf":
				loadGraphic("assets/images/Hit.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "si";
				curRopa = "traje";
				curRaza = "caucasica";
			case "Isabella":
				loadGraphic("assets/images/Isabella.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "gris";
				curRaza = "caucasica";
			case "Jenkins":
				loadGraphic("assets/images/Jenkins.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "blanco";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "mayor";
				curBelloFacial = "no";
				curRopa = "formal";
				curRaza = "caucasica";
			case "Carlos":
				loadGraphic("assets/images/Carlos.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "blanco";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "mayor";
				curBelloFacial = "si";
				curRopa = "traje";
				curRaza = "caucasica";
			case "Jun":
				loadGraphic("assets/images/Jun.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "beige";
				curRaza = "asiatica";
			case "Kazuma":
				loadGraphic("assets/images/Kazuma.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "traje";
				curRaza = "asiatica";
			case "Kevin":
				loadGraphic("assets/images/Kevin.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "naranja";
				curRaza = "caucasica";
			case "Leticia":
				loadGraphic("assets/images/Leticia.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "negrisro";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "mayor";
				curBelloFacial = "no";
				curRopa = "morada";
				curRaza = "caucasica";
			case "Lucas":
				loadGraphic("assets/images/Lucas.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "nerga";
				curRaza = "caucasica";
			case "Lucy":
				loadGraphic("assets/images/Lucy.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "wero";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "gris";
				curRaza = "caucasica";
			case "Maria":
				loadGraphic("assets/images/Maria.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "cafe";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "azul";
				curRaza = "afroamericana";
			case "Miyagi":
				loadGraphic("assets/images/Miyagi.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "blanco";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "mayor";
				curBelloFacial = "si";
				curRopa = "gris";
				curRaza = "asiatica";
			case "Rafa":
				loadGraphic("assets/images/Rafa.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "si";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "si";
				curRopa = "beige";
				curRaza = "caucasica";
			case "Raul":
				loadGraphic("assets/images/Raul.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "Hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "azul";
				curRaza = "caucasica";
			case "Regina":
				loadGraphic("assets/images/Regina.png");
				antialiasing = false;
				curLentes = "no";
				// curAccesorio = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "verde";
				curRaza = "caucasica";
			case "Roberto":
				loadGraphic("assets/images/Roberto.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "blanco";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "mayor";
				curBelloFacial = "si";
				curRopa = "gris";
				curRaza = "caucasica";
			case "Sofia":
				loadGraphic("assets/images/Sofia.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "peliroja";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "traje";
				curRaza = "caucasica";
			case "Travis":
				loadGraphic("assets/images/Kevin.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "cafe";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "si";
				curRopa = "negra";
				curRaza = "afroamericana";
			case "Valentina":
				loadGraphic("assets/images/Kevin.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "negra";
				curRaza = "caucasica";
		}
	}
}
