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
		this.curRopa = ropa; // blusa, traje, playera, sueter
		this.curSombrero = sombrero;
		this.curPelo = pelo; // negro, cafe, wero, pelirojo
		this.curPiel = piel; // Oscuro, claro, cafe
		this.curSexo = sexo; // Hombre, Mujer
		this.curEdad = edad; // joven, mayor
		this.curBelloFacial = belloFacial;
		this.curRaza = raza; // afroamericana, caucasico, asiatico
		this.curLentes = lentes;
		// Usen los "cur" si quieren cambiar variables de un personajes, tienen de default "Ninguno";
		switch (curCharacter)
		{
			case "juan":
				loadGraphic("assets/images/Juan.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "si";
				curPelo = "negro";
				curPiel = "oscura";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "playera";
				curRaza = "afroamericana";
			case "alejandro":
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
			case "andrea":
				loadGraphic("assets/images/Andrea.png");
				antialiasing = false;
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "oscura";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "blusa";
				curRaza = "caucasica";
			case "andres":
				loadGraphic("assets/images/Andres.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "sueter";
				curRaza = "caucasica";
			case "pedro":
				loadGraphic("assets/images/Pedro.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "playera";
				curRaza = "caucasica";
			case "antonio":
				loadGraphic("assets/images/Antonio.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "si";
				curRopa = "sueter";
				curRaza = "caucasica";
			case "adolf":
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
			case "isabella":
				loadGraphic("assets/images/Isabella.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "playera";
				curRaza = "caucasica";
			case "jenkins":
				loadGraphic("assets/images/Jenkins.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "blanco";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "mayor";
				curBelloFacial = "no";
				curRopa = "traje";
				curRaza = "caucasica";
			case "carlos":
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
			case "jun":
				loadGraphic("assets/images/Jun.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "playera";
				curRaza = "asiatica";
			case "kazuma":
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
			case "kevin":
				loadGraphic("assets/images/Kevin.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "playera";
				curRaza = "caucasica";
			case "leticia":
				loadGraphic("assets/images/Leticia.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "mayor";
				curBelloFacial = "no";
				curRopa = "playera";
				curRaza = "caucasica";
			case "lucas":
				loadGraphic("assets/images/Lucas.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "traje";
				curRaza = "caucasica";
			case "lucy":
				loadGraphic("assets/images/Lucy.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "wero";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "blusa";
				curRaza = "caucasica";
			case "maria":
				loadGraphic("assets/images/Maria.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "cafe";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "blusa";
				curRaza = "afroamericana";
			case "miyagi":
				loadGraphic("assets/images/Miyagi.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "blanco";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "mayor";
				curBelloFacial = "si";
				curRopa = "playera";
				curRaza = "asiatica";
			case "rafa":
				loadGraphic("assets/images/Rafa.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "si";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "si";
				curRopa = "playera";
				curRaza = "caucasica";
			case "raul":
				loadGraphic("assets/images/Raul.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "Hombre";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "sueter";
				curRaza = "caucasica";
			case "regina":
				loadGraphic("assets/images/Regina.png");
				antialiasing = false;
				curLentes = "no";
				// curAccesorio = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "blusa";
				curRaza = "caucasica";
			case "roberto":
				loadGraphic("assets/images/Roberto.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "si";
				curPelo = "blanco";
				curPiel = "clara";
				curSexo = "hombre";
				curEdad = "mayor";
				curBelloFacial = "si";
				curRopa = "sueter";
				curRaza = "caucasica";
			case "sofia":
				loadGraphic("assets/images/Sofia.png");
				antialiasing = false;
				curLentes = "no";
				curSombrero = "no";
				curPelo = "pelirojo";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "traje";
				curRaza = "caucasica";
			case "travis":
				loadGraphic("assets/images/Travis.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "negro";
				curPiel = "cafe";
				curSexo = "hombre";
				curEdad = "joven";
				curBelloFacial = "si";
				curRopa = "sueter";
				curRaza = "afroamericana";
			case "valentina":
				loadGraphic("assets/images/Valentina.png");
				antialiasing = false;
				curLentes = "si";
				curSombrero = "no";
				curPelo = "cafe";
				curPiel = "clara";
				curSexo = "mujer";
				curEdad = "joven";
				curBelloFacial = "no";
				curRopa = "blusa";
				curRaza = "caucasica";
		}
	}
}
