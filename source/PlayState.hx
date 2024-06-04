package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var gameOver:Bool = false;
	var personajes = new FlxTypedGroup<Personaje>();
	var curPersonajes:Array<String> = [
		/*'Pepe', 'Sech'*/ 'Juan', 'Alejandro', 'Andrea', 'Andres', 'Pedro', 'Antonio', 'Adolf', 'Isabella', 'Jenkins', 'Carlos', 'Jun', 'Kazuma', 'Kevin',
		'Leticia', 'Lucas', 'Lucy', 'Maria', 'Miyagi', 'Rafa', 'Raul', 'Regina', 'Roberto', 'Sofia', 'Travis', 'Valentina'
	];

	override public function create()
	{
		super.create();

		// BTS = Button Si, BTN = Button No, TXT == text

		var afroamericanoTXT:FlxText = new FlxText(3, 388);
		afroamericanoTXT.text = "Afroamericano";
		afroamericanoTXT.size = 10;
		add(afroamericanoTXT);

		var afroamericanoBTS:FlxButton = new FlxButton(afroamericanoTXT.x + 90, afroamericanoTXT.y, "Si", afroamericanoFunction_SI);
		add(afroamericanoBTS);

		var afroamericanoBTN:FlxButton = new FlxButton(afroamericanoBTS.x + 80, afroamericanoTXT.y, "No", afroamericanoFunction_NO);
		add(afroamericanoBTN);

		var caucasicoTXT:FlxText = new FlxText(3, afroamericanoTXT.y + 20);
		caucasicoTXT.text = "Caucastico";
		caucasicoTXT.size = 10;
		add(caucasicoTXT);

		var caucasicoBTS:FlxButton = new FlxButton(caucasicoTXT.x + 90, caucasicoTXT.y, "Si", caucasicoFunction_SI);
		add(caucasicoBTS);

		var caucasicoBTN:FlxButton = new FlxButton(caucasicoBTS.x + 80, caucasicoTXT.y, "No", caucasicoFunction_NO);
		add(caucasicoBTN);

		var asiaticoTXT:FlxText = new FlxText(3, caucasicoTXT.y + 20);
		asiaticoTXT.text = "Asiatico";
		asiaticoTXT.size = 10;
		add(asiaticoTXT);

		var asiaticoBTS:FlxButton = new FlxButton(caucasicoTXT.x + 90, asiaticoTXT.y, "Si", caucasicoFunction_SI);
		add(asiaticoBTS);

		var asiaticoBTN:FlxButton = new FlxButton(asiaticoBTS.x + 80, asiaticoTXT.y, "No", caucasicoFunction_NO);
		add(asiaticoBTN);

		var playeraTXT:FlxText = new FlxText(3, asiaticoTXT.y + 20);
		playeraTXT.text = "Playera";
		playeraTXT.size = 10;
		add(playeraTXT);

		var playeraBTS:FlxButton = new FlxButton(playeraTXT.x + 90, playeraTXT.y, "Si", playeraFunction_SI);
		add(playeraBTS);

		var playeraBTN:FlxButton = new FlxButton(asiaticoBTS.x + 80, playeraTXT.y, "No", playeraFunction_NO);
		add(playeraBTN);

		var sueterTXT:FlxText = new FlxText(3, playeraTXT.y + 20);
		sueterTXT.text = "Sueter";
		sueterTXT.size = 10;
		add(sueterTXT);

		var sueterBTS:FlxButton = new FlxButton(sueterTXT.x + 90, sueterTXT.y, "Si", sueterFunction_SI);
		add(sueterBTS);

		var sueterBTN:FlxButton = new FlxButton(sueterBTS.x + 80, sueterTXT.y, "No", sueterFunction_NO);
		add(sueterBTN);

		var trajeTXT:FlxText = new FlxText(3, sueterTXT.y + 20);
		trajeTXT.text = "Traje";
		trajeTXT.size = 10;
		add(trajeTXT);

		var trajeBTS:FlxButton = new FlxButton(trajeTXT.x + 90, trajeTXT.y, "Si", trajeFunction_SI);
		add(trajeBTS);

		var trajeBTN:FlxButton = new FlxButton(trajeBTS.x + 80, trajeTXT.y, "No", trajeFunction_NO);
		add(trajeBTN);

		var blusaTXT:FlxText = new FlxText(3, trajeTXT.y + 20);
		blusaTXT.text = "Blusa";
		blusaTXT.size = 10;
		add(blusaTXT);

		var blusaBTS:FlxButton = new FlxButton(blusaTXT.x + 90, blusaTXT.y, "Si", blusaFunction_SI);
		add(blusaBTS);

		var blusaBTN:FlxButton = new FlxButton(blusaBTS.x + 80, blusaTXT.y, "No", blusaFunction_NO);
		add(blusaBTN);

		var gorraTXT:FlxText = new FlxText(3, blusaTXT.y + 20);
		gorraTXT.text = "Gorra";
		gorraTXT.size = 10;
		add(gorraTXT);

		var gorraBTS:FlxButton = new FlxButton(gorraTXT.x + 90, gorraTXT.y, "Si", gorraFunction_SI);
		add(gorraBTS);

		var gorraBTN:FlxButton = new FlxButton(gorraBTS.x + 80, gorraTXT.y, "No", gorraFunction_NO);
		add(gorraBTN);

		var peloNegroTXT:FlxText = new FlxText(3, gorraTXT.y + 20);
		peloNegroTXT.text = "Pelo Negro";
		peloNegroTXT.size = 10;
		add(peloNegroTXT);

		var peloNegroBTS:FlxButton = new FlxButton(peloNegroTXT.x + 90, peloNegroTXT.y, "Si", peloCafeFunction_SI);
		add(peloNegroBTS);

		var peloNegroBTN:FlxButton = new FlxButton(peloNegroBTS.x + 80, peloNegroTXT.y, "No", peloCafeFunction_NO);
		add(peloNegroBTN);

		var peloCafeTXT:FlxText = new FlxText(3, peloNegroTXT.y + 20);
		peloCafeTXT.text = "Pelo Cafe";
		peloCafeTXT.size = 10;
		add(peloCafeTXT);

		var peloCafeBTS:FlxButton = new FlxButton(peloCafeTXT.x + 90, peloCafeTXT.y, "Si", peloNegroFunction_SI);
		add(peloCafeBTS);

		var peloCafeBTN:FlxButton = new FlxButton(peloCafeBTS.x + 80, peloCafeTXT.y, "No", peloNegroFunction_NO);
		add(peloCafeBTN);

		var peloWeroTXT:FlxText = new FlxText(3, peloCafeTXT.y + 20);
		peloWeroTXT.text = "Pelo Wero";
		peloWeroTXT.size = 10;
		add(peloWeroTXT);

		var peloWeroBTS:FlxButton = new FlxButton(peloWeroTXT.x + 90, peloWeroTXT.y, "Si", peloWeroFunction_SI);
		add(peloWeroBTS);

		var peloWeroBTN:FlxButton = new FlxButton(peloWeroBTS.x + 80, peloWeroTXT.y, "No", peloWeroFunction_NO);
		add(peloWeroBTN);

		var peloPelirojoTXT:FlxText = new FlxText(3, peloWeroTXT.y + 20);
		peloPelirojoTXT.text = "Pelo Pelirojo";
		peloPelirojoTXT.size = 10;
		add(peloPelirojoTXT);

		var peloPelirojoBTS:FlxButton = new FlxButton(peloPelirojoTXT.x + 90, peloPelirojoTXT.y, "Si", peloPelirojoFunction_SI);
		add(peloPelirojoBTS);

		var peloPelirojoBTN:FlxButton = new FlxButton(peloPelirojoBTS.x + 80, peloPelirojoTXT.y, "No", peloPelirojoFunction_NO);
		add(peloPelirojoBTN);

		var pielOscuraTXT:FlxText = new FlxText(3, peloPelirojoTXT.y + 20);
		pielOscuraTXT.text = "Piel Oscura";
		pielOscuraTXT.size = 10;
		add(pielOscuraTXT);

		var pielOscuraBTS:FlxButton = new FlxButton(pielOscuraTXT.x + 90, pielOscuraTXT.y, "Si", pielOscuraFunction_SI);
		add(pielOscuraBTS);

		var pielOscuraBTN:FlxButton = new FlxButton(pielOscuraBTS.x + 80, pielOscuraTXT.y, "No", pielOscuraFunction_NO);
		add(pielOscuraBTN);

		var pielCafeTXT:FlxText = new FlxText(3, pielOscuraTXT.y + 20);
		pielCafeTXT.text = "Piel Cafe";
		pielCafeTXT.size = 10;
		add(pielCafeTXT);

		var pielCafeBTS:FlxButton = new FlxButton(pielCafeTXT.x + 90, pielCafeTXT.y, "Si", pielCafeFunction_SI);
		add(pielCafeBTS);

		var pielCafeBTN:FlxButton = new FlxButton(pielCafeBTS.x + 80, pielCafeTXT.y, "No", pielCafeFunction_NO);
		add(pielCafeBTN);

		var pielClaraTXT:FlxText = new FlxText(3, pielCafeTXT.y + 20);
		pielClaraTXT.text = "Piel Clara";
		pielClaraTXT.size = 10;
		add(pielClaraTXT);

		var pielClaraBTS:FlxButton = new FlxButton(pielClaraTXT.x + 90, pielClaraTXT.y, "Si", pielClaraFunction_SI);
		add(pielClaraBTS);

		var pielClaraBTN:FlxButton = new FlxButton(pielClaraBTS.x + 80, pielClaraTXT.y, "No", pielClaraFunction_NO);
		add(pielClaraBTN);

		var hombreTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, 388);
		hombreTXT.text = "Hombre";
		hombreTXT.size = 10;
		add(hombreTXT);

		var hombreBTS:FlxButton = new FlxButton(hombreTXT.x + 90, hombreTXT.y, "Si", hombreFunction_SI);
		add(hombreBTS);

		var hombreBTN:FlxButton = new FlxButton(hombreBTS.x + 80, hombreTXT.y, "No", hombreFunction_NO);
		add(hombreBTN);

		var mujerTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, hombreTXT.y + 20);
		mujerTXT.text = "Mujer";
		mujerTXT.size = 10;
		add(mujerTXT);

		var mujerBTS:FlxButton = new FlxButton(mujerTXT.x + 90, mujerTXT.y, "Si", mujerFunction_SI);
		add(mujerBTS);

		var mujerBTN:FlxButton = new FlxButton(mujerBTS.x + 80, mujerTXT.y, "No", mujerFunction_NO);
		add(mujerBTN);

		var jovenTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, mujerTXT.y + 20);
		jovenTXT.text = "Joven";
		jovenTXT.size = 10;
		add(jovenTXT);

		var jovenBTS:FlxButton = new FlxButton(jovenTXT.x + 90, jovenTXT.y, "Si", jovenFunction_SI);
		add(jovenBTS);

		var jovenBTN:FlxButton = new FlxButton(jovenBTS.x + 80, jovenTXT.y, "No", jovenFunction_NO);
		add(jovenBTN);

		var mayorTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, jovenTXT.y + 20);
		mayorTXT.text = "Mayor";
		mayorTXT.size = 10;
		add(mayorTXT);

		var mayorBTS:FlxButton = new FlxButton(mayorTXT.x + 90, mayorTXT.y, "Si", mayorFunction_SI);
		add(mayorBTS);

		var mayorBTN:FlxButton = new FlxButton(mayorBTS.x + 80, mayorTXT.y, "No", mayorFunction_NO);
		add(mayorBTN);

		var belloFacialTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, mayorTXT.y + 20);
		belloFacialTXT.text = "Bello Facial";
		belloFacialTXT.size = 10;
		add(belloFacialTXT);

		var belloFacialBTS:FlxButton = new FlxButton(belloFacialTXT.x + 90, belloFacialTXT.y, "Si", belloFacialFunction_SI);
		add(belloFacialBTS);

		var belloFacialBTN:FlxButton = new FlxButton(belloFacialBTS.x + 80, belloFacialTXT.y, "No", belloFacialFunction_NO);
		add(belloFacialBTN);

		var lentesTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, belloFacialTXT.y + 20);
		lentesTXT.text = "Lentes";
		lentesTXT.size = 10;
		add(lentesTXT);

		var lentesBTS:FlxButton = new FlxButton(lentesTXT.x + 90, lentesTXT.y, "Si", lentesFunction_SI);
		add(lentesBTS);

		var lentesBTN:FlxButton = new FlxButton(lentesBTS.x + 80, lentesTXT.y, "No", lentesFunction_NO);
		add(lentesBTN);

		FlxG.mouse.visible = true;

		personajes = new FlxTypedGroup<Personaje>();
		add(personajes);

		// Ordena los personajes alfabéticamente
		curPersonajes = mergeSort(curPersonajes, compareStrings);

		// Crea los personajes
		createPersonajes();

		// Para acceder aun Personaje Especifico
		personajes.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1)
			{
				// spr.alpha = 0.6;
			}
		});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// Prueba para detectar si funciona la busqueda lineal
		if (FlxG.keys.justPressed.UP)
		{
			linealSearch(curPersonajes, "adrian");
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			openSubState(new GameOverSubstate());
		}

		// Funciona ((ahora mismo esta con las caracteristicas de sech))
		personajes.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1) {}
		});

		do {}
		while (gameOver = false);
	}

	// Funciona
	public function linealSearch(array:Array<String>, search:String)
	{
		for (i in 0...array.length)
		{
			if (array.contains(search))
			{
				FlxG.camera.flash(FlxColor.RED, 1);
			}
			FlxG.camera.flash(FlxColor.BLUE, 1);
		}
	}

	// Inteligencia
	public function InteligenciaInteligensiosa() {}

	// Función de comparación para ordenar alfabeticamente
	public static function compareStrings(a:String, b:String):Int
	{
		a = a.toUpperCase();
		b = b.toUpperCase();

		if (a < b)
		{
			return -1;
		}
		else if (a > b)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}

	// Implementación de Merge Sort
	public static function mergeSort(array:Array<String>, compare:Dynamic):Array<String>
	{
		if (array.length <= 1)
		{
			return array;
		}

		var middle:Int = Std.int(array.length / 2);
		var left:Array<String> = mergeSort(array.slice(0, middle), compare);
		var right:Array<String> = mergeSort(array.slice(middle, array.length), compare);

		return merge(left, right, compare);
	}

	public static function merge(left:Array<String>, right:Array<String>, compare:Dynamic):Array<String>
	{
		var result:Array<String> = [];
		var i:Int = 0;
		var j:Int = 0;

		while (i < left.length && j < right.length)
		{
			if (compare(left[i], right[j]) <= 0)
			{
				result.push(left[i]);
				i++;
			}
			else
			{
				result.push(right[j]);
				j++;
			}
		}

		while (i < left.length)
		{
			result.push(left[i]);
			i++;
		}

		while (j < right.length)
		{
			result.push(right[j]);
			j++;
		}

		return result;
	}

	// Método para actualizar la interfaz gráfica con los personajes ordenados
	public function updatePersonajesDisplay():Void
	{
		personajes.clear();
		createPersonajes();
	}

	// Método para crear y posicionar los personajes
	public function createPersonajes():Void
	{
		for (i in 0...6)
		{
			var personaje:Personaje = new Personaje(0, -20, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -50 + (i * 80);
			personaje.scale.set(0.25, 0.25);
			personajes.add(personaje);
		}

		for (i in 6...12)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -530 + (i * 80);
			personaje.y += 70;
			personaje.scale.set(0.25, 0.25);
			personajes.add(personaje);
		}

		for (i in 12...18)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -1010 + (i * 80);
			personaje.y += 150;
			personaje.scale.set(0.25, 0.25);
			personajes.add(personaje);
		}

		for (i in 18...24)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajes[i]);
			personaje.ID = i;
			personaje.x = -1490 + (i * 80);
			personaje.y += 230;
			personaje.scale.set(0.25, 0.25);
			personajes.add(personaje);
		}
	}

	public function afroamericanoFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function afroamericanoFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function caucasicoFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function caucasicoFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function asiaticoFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function asiaticoFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function playeraFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function playeraFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function sueterFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function sueterFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function trajeFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function trajeFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function blusaFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function blusaFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function gorraFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function gorraFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function peloNegroFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function peloNegroFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function peloCafeFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function peloCafeFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function peloWeroFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function peloWeroFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function peloPelirojoFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function peloPelirojoFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function pielOscuraFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function pielOscuraFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function pielCafeFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function pielCafeFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function pielClaraFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function pielClaraFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function hombreFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function hombreFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function mujerFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function mujerFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function jovenFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function jovenFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function mayorFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function mayorFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function belloFacialFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function belloFacialFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}

	public function lentesFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function lentesFunction_NO()
	{
		FlxG.camera.flash(FlxColor.BLUE, 1);
	}
}
