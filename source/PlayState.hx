package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.ui.FlxInputText;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var gameOver:Bool = false;
	var personajesNombres = new FlxTypedGroup<FlxText>();
	var personajesPlayer = new FlxTypedGroup<Personaje>();
	var curPersonajesPlayer:Array<String> = [
		/*'Pepe', 'Sech'*/ 'juan', 'alejandro', 'andrea', 'andres', 'pedro', 'antonio', 'adolf', 'isabella', 'jenkins', 'carlos', 'jun', 'kazuma', 'kevin',
		'leticia', 'lucas', 'lucy', 'maria', 'miyagi', 'rafa', 'raul', 'regina', 'roberto', 'sofia', 'travis', 'valentina'
	];

	var personajesBot = new FlxTypedGroup<Personaje>();
	var curPersonajesBot:Array<String> = [
		/*'Pepe', 'Sech'*/ 'juan', 'alejandro', 'andrea', 'andres', 'pedro', 'antonio', 'adolf', 'isabella', 'jenkins', 'carlos', 'jun', 'kazuma', 'kevin',
		'leticia', 'lucas', 'lucy', 'maria', 'miyagi', 'rafa', 'raul', 'regina', 'roberto', 'sofia', 'travis', 'valentina'
	];
	private var inputText:FlxInputText;

	override public function create()
	{
		super.create();

		// BTS = Button Si, TXT == text

		var afroamericanoTXT:FlxText = new FlxText(3, 388);
		afroamericanoTXT.text = "Afroamericano";
		afroamericanoTXT.size = 10;
		add(afroamericanoTXT);

		var afroamericanoBTS:FlxButton = new FlxButton(afroamericanoTXT.x + 90, afroamericanoTXT.y, "Si", afroamericanoFunction_SI);
		add(afroamericanoBTS);

		var caucasicoTXT:FlxText = new FlxText(3, afroamericanoTXT.y + 20);
		caucasicoTXT.text = "Caucastico";
		caucasicoTXT.size = 10;
		add(caucasicoTXT);

		var caucasicoBTS:FlxButton = new FlxButton(caucasicoTXT.x + 90, caucasicoTXT.y, "Si", caucasicoFunction_SI);
		add(caucasicoBTS);

		var asiaticoTXT:FlxText = new FlxText(3, caucasicoTXT.y + 20);
		asiaticoTXT.text = "Asiatico";
		asiaticoTXT.size = 10;
		add(asiaticoTXT);

		var asiaticoBTS:FlxButton = new FlxButton(caucasicoTXT.x + 90, asiaticoTXT.y, "Si", caucasicoFunction_SI);
		add(asiaticoBTS);

		var playeraTXT:FlxText = new FlxText(3, asiaticoTXT.y + 20);
		playeraTXT.text = "Playera";
		playeraTXT.size = 10;
		add(playeraTXT);

		var playeraBTS:FlxButton = new FlxButton(playeraTXT.x + 90, playeraTXT.y, "Si", playeraFunction_SI);
		add(playeraBTS);

		var sueterTXT:FlxText = new FlxText(3, playeraTXT.y + 20);
		sueterTXT.text = "Sueter";
		sueterTXT.size = 10;
		add(sueterTXT);

		var sueterBTS:FlxButton = new FlxButton(sueterTXT.x + 90, sueterTXT.y, "Si", sueterFunction_SI);
		add(sueterBTS);

		var trajeTXT:FlxText = new FlxText(3, sueterTXT.y + 20);
		trajeTXT.text = "Traje";
		trajeTXT.size = 10;
		add(trajeTXT);

		var trajeBTS:FlxButton = new FlxButton(trajeTXT.x + 90, trajeTXT.y, "Si", trajeFunction_SI);
		add(trajeBTS);

		var blusaTXT:FlxText = new FlxText(3, trajeTXT.y + 20);
		blusaTXT.text = "Blusa";
		blusaTXT.size = 10;
		add(blusaTXT);

		var blusaBTS:FlxButton = new FlxButton(blusaTXT.x + 90, blusaTXT.y, "Si", blusaFunction_SI);
		add(blusaBTS);

		var gorraTXT:FlxText = new FlxText(3, blusaTXT.y + 20);
		gorraTXT.text = "Gorra";
		gorraTXT.size = 10;
		add(gorraTXT);

		var gorraBTS:FlxButton = new FlxButton(gorraTXT.x + 90, gorraTXT.y, "Si", gorraFunction_SI);
		add(gorraBTS);

		var peloNegroTXT:FlxText = new FlxText(3, gorraTXT.y + 20);
		peloNegroTXT.text = "Pelo Negro";
		peloNegroTXT.size = 10;
		add(peloNegroTXT);

		var peloNegroBTS:FlxButton = new FlxButton(peloNegroTXT.x + 90, peloNegroTXT.y, "Si", peloCafeFunction_SI);
		add(peloNegroBTS);

		var peloCafeTXT:FlxText = new FlxText(3, peloNegroTXT.y + 20);
		peloCafeTXT.text = "Pelo Cafe";
		peloCafeTXT.size = 10;
		add(peloCafeTXT);

		var peloCafeBTS:FlxButton = new FlxButton(peloCafeTXT.x + 90, peloCafeTXT.y, "Si", peloNegroFunction_SI);
		add(peloCafeBTS);

		var peloWeroTXT:FlxText = new FlxText(3, peloCafeTXT.y + 20);
		peloWeroTXT.text = "Pelo Wero";
		peloWeroTXT.size = 10;
		add(peloWeroTXT);

		var peloWeroBTS:FlxButton = new FlxButton(peloWeroTXT.x + 90, peloWeroTXT.y, "Si", peloWeroFunction_SI);
		add(peloWeroBTS);

		var peloPelirojoTXT:FlxText = new FlxText(3, peloWeroTXT.y + 20);
		peloPelirojoTXT.text = "Pelo Pelirojo";
		peloPelirojoTXT.size = 10;
		add(peloPelirojoTXT);

		var peloPelirojoBTS:FlxButton = new FlxButton(peloPelirojoTXT.x + 90, peloPelirojoTXT.y, "Si", peloPelirojoFunction_SI);
		add(peloPelirojoBTS);

		var pielOscuraTXT:FlxText = new FlxText(3, peloPelirojoTXT.y + 20);
		pielOscuraTXT.text = "Piel Oscura";
		pielOscuraTXT.size = 10;
		add(pielOscuraTXT);

		var pielOscuraBTS:FlxButton = new FlxButton(pielOscuraTXT.x + 90, pielOscuraTXT.y, "Si", pielOscuraFunction_SI);
		add(pielOscuraBTS);

		var pielCafeTXT:FlxText = new FlxText(3, pielOscuraTXT.y + 20);
		pielCafeTXT.text = "Piel Cafe";
		pielCafeTXT.size = 10;
		add(pielCafeTXT);

		var pielCafeBTS:FlxButton = new FlxButton(pielCafeTXT.x + 90, pielCafeTXT.y, "Si", pielCafeFunction_SI);
		add(pielCafeBTS);

		var pielClaraTXT:FlxText = new FlxText(3, pielCafeTXT.y + 20);
		pielClaraTXT.text = "Piel Clara";
		pielClaraTXT.size = 10;
		add(pielClaraTXT);

		var pielClaraBTS:FlxButton = new FlxButton(pielClaraTXT.x + 90, pielClaraTXT.y, "Si", pielClaraFunction_SI);
		add(pielClaraBTS);

		var hombreTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, 388);
		hombreTXT.text = "Hombre";
		hombreTXT.size = 10;
		add(hombreTXT);

		var hombreBTS:FlxButton = new FlxButton(hombreTXT.x + 90, hombreTXT.y, "Si", hombreFunction_SI);
		add(hombreBTS);

		var mujerTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, hombreTXT.y + 20);
		mujerTXT.text = "Mujer";
		mujerTXT.size = 10;
		add(mujerTXT);

		var mujerBTS:FlxButton = new FlxButton(mujerTXT.x + 90, mujerTXT.y, "Si", mujerFunction_SI);
		add(mujerBTS);

		var jovenTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, mujerTXT.y + 20);
		jovenTXT.text = "Joven";
		jovenTXT.size = 10;
		add(jovenTXT);

		var jovenBTS:FlxButton = new FlxButton(jovenTXT.x + 90, jovenTXT.y, "Si", jovenFunction_SI);
		add(jovenBTS);

		var mayorTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, jovenTXT.y + 20);
		mayorTXT.text = "Mayor";
		mayorTXT.size = 10;
		add(mayorTXT);

		var mayorBTS:FlxButton = new FlxButton(mayorTXT.x + 90, mayorTXT.y, "Si", mayorFunction_SI);
		add(mayorBTS);

		var belloFacialTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, mayorTXT.y + 20);
		belloFacialTXT.text = "Bello Facial";
		belloFacialTXT.size = 10;
		add(belloFacialTXT);

		var belloFacialBTS:FlxButton = new FlxButton(belloFacialTXT.x + 90, belloFacialTXT.y, "Si", belloFacialFunction_SI);
		add(belloFacialBTS);

		var lentesTXT:FlxText = new FlxText(afroamericanoTXT.x + 260, belloFacialTXT.y + 20);
		lentesTXT.text = "Lentes";
		lentesTXT.size = 10;
		add(lentesTXT);

		var lentesBTS:FlxButton = new FlxButton(lentesTXT.x + 90, lentesTXT.y, "Si", lentesFunction_SI);
		add(lentesBTS);

		FlxG.mouse.visible = true;

		personajesPlayer = new FlxTypedGroup<Personaje>();
		add(personajesPlayer);

		personajesBot = new FlxTypedGroup<Personaje>();
		add(personajesBot);

		personajesNombres = new FlxTypedGroup<FlxText>();
		add(personajesNombres);

		// Ordena los personajesPlayer alfabéticamente
		curPersonajesPlayer = mergeSort(curPersonajesPlayer, compareStrings);

		// Crea los personajesPlayer
		createPersonajesPlayer();
		createPersonajesBot();

		createNombresPlayer();

		// Para acceder aun Personaje Especifico
		personajesPlayer.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1)
			{
				// Prueba
			}
		});

		personajesBot.forEach(function(spr:Personaje)
		{
			spr.color = FlxColor.YELLOW;
		});

		inputText = new FlxInputText(335, 582, 100, "");
		inputText.maxLength = 10;
		add(inputText);

		var inputTXT:FlxText = new FlxText(inputText.x, inputText.y - 20);
		inputTXT.text = "Introducir Personaje";
		inputTXT.size = 10;
		add(inputTXT);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// Prueba para detectar si funciona la busqueda lineal
		if (FlxG.keys.justPressed.UP)
		{
			linealSearch(curPersonajesPlayer, "adrian");
		}

		if (FlxG.keys.justPressed.ESCAPE)
		{
			openSubState(new GameOverSubstate());
		}

		// Funciona ((ahora mismo esta con las caracteristicas de sech))
		personajesPlayer.forEach(function(spr:Personaje)
		{
			if (spr.ID == 1)
			{
				//
			}
		});

		// Funciona (ahora mismo esta con las caracteristicas de sech)
		personajesPlayer.forEach(function(spr:Personaje)
		{
			if (inputText.text == spr.curCharacter && FlxG.keys.justPressed.ENTER)
			{
				spr.kill();
				inputText.text = "";
			}
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

	private function onTextChanged(inputText:FlxInputText):Void
	{
		// Convertir texto a minúsculas
	}

	// Método para actualizar la interfaz gráfica con los personajesPlayer ordenados
	public function updatePersonajesDisplay():Void
	{
		personajesPlayer.clear();
		createPersonajesPlayer();
	}

	// Método para crear y posicionar los personajesPlayer
	public function createPersonajesPlayer():Void
	{
		for (i in 0...6)
		{
			var personaje:Personaje = new Personaje(0, -20, curPersonajesPlayer[i]);
			personaje.ID = i;
			personaje.x = -50 + (i * 80);
			personaje.y -= 30;
			personaje.scale.set(0.25, 0.25);
			personajesPlayer.add(personaje);
		}

		for (i in 6...12)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesPlayer[i]);
			personaje.ID = i;
			personaje.x = -530 + (i * 80);
			personaje.y += 50;
			personaje.scale.set(0.25, 0.25);
			personajesPlayer.add(personaje);
		}

		for (i in 12...18)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesPlayer[i]);
			personaje.ID = i;
			personaje.x = -1010 + (i * 80);
			personaje.y += 140;
			personaje.scale.set(0.25, 0.25);
			personajesPlayer.add(personaje);
		}

		for (i in 18...24)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesPlayer[i]);
			personaje.ID = i;
			personaje.x = -1490 + (i * 80);
			personaje.y += 230;
			personaje.scale.set(0.25, 0.25);
			personajesPlayer.add(personaje);
		}
	}

	// Método para crear y posicionar los personajesBot
	public function createPersonajesBot():Void
	{
		for (i in 0...6)
		{
			var personaje:Personaje = new Personaje(0, -20, curPersonajesBot[i]);
			personaje.ID = i;
			personaje.x = 640 + (i * 80);
			personaje.y -= 30;
			personaje.scale.set(0.25, 0.25);
			personajesBot.add(personaje);
		}

		for (i in 6...12)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;
			personaje.x = 160 + (i * 80);
			personaje.y += 50;
			personaje.scale.set(0.25, 0.25);
			personajesBot.add(personaje);
		}

		for (i in 12...18)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;
			personaje.x = -320 + (i * 80);
			personaje.y += 140;
			personaje.scale.set(0.25, 0.25);
			personajesBot.add(personaje);
		}

		for (i in 18...24)
		{
			var personaje:Personaje = new Personaje(0, -10, curPersonajesBot[i]);
			personaje.ID = i;
			personaje.x = -800 + (i * 80);
			personaje.y += 230;
			personaje.scale.set(0.25, 0.25);
			personajesBot.add(personaje);
		}
	}

	// Crea nombres de los personajes
	public function createNombresPlayer():Void
	{
		for (i in 0...6)
		{
			var personajetxt:FlxText = new FlxText();
			personajetxt.ID = i;
			personajetxt.text = curPersonajesPlayer[i];
			personajetxt.x = 60 + (i * 75);
			personajetxt.y += 20;
			personajetxt.size = 10;
			personajesNombres.add(personajetxt);
		}

		for (i in 6...12)
		{
			var personajetxt:FlxText = new FlxText();
			personajetxt.ID = i;
			personajetxt.text = curPersonajesPlayer[i];
			personajetxt.x = -420 + (i * 80);
			personajetxt.size = 10;
			personajetxt.y += 115;
			personajesNombres.add(personajetxt);
		}

		for (i in 12...18)
		{
			var personajetxt:FlxText = new FlxText();
			personajetxt.ID = i;
			personajetxt.text = curPersonajesPlayer[i];
			personajetxt.x = -900 + (i * 80);
			personajetxt.size = 10;
			personajetxt.y += 210;
			personajesNombres.add(personajetxt);
		}

		for (i in 18...24)
		{
			var personajetxt:FlxText = new FlxText();
			personajetxt.ID = i;
			personajetxt.text = curPersonajesPlayer[i];
			personajetxt.x = -1490 + (i * 85);
			personajetxt.size = 10;
			personajetxt.y += 300;
			personajesNombres.add(personajetxt);
		}
	}

	private function flashScreen():Void
	{
		// Hacer que la pantalla parpadee (Para detectar si pasa algo)
		FlxG.camera.flash(FlxColor.WHITE, 0.5);
	}

	public function afroamericanoFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function caucasicoFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function asiaticoFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function playeraFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function sueterFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function trajeFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function blusaFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function gorraFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function peloNegroFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function peloCafeFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function peloWeroFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function peloPelirojoFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function pielOscuraFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function pielCafeFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function pielClaraFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function hombreFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function mujerFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function jovenFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function mayorFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function belloFacialFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}

	public function lentesFunction_SI()
	{
		FlxG.camera.flash(FlxColor.RED, 1);
	}
}
