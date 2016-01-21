package ;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.system.FlxSound;

class CombatWindow extends FlxSpriteGroup
{
	private var btn_attack:FlxButton;
	private var btn_flee:FlxButton;
	private var bg:FlxSprite;
	private var txt:FlxText;
	
	private var playState:PlayState;
	private var enemy:Enemy;
	private var sfx_hit:FlxSound;
	private var sfx_fightBegin1:FlxSound;
	private var sfx_fightBegin2:FlxSound;
	private var sfx_fightEnd1:FlxSound;
	private var sfx_fightEnd2:FlxSound;
	private var sfx_fight1:FlxSound;
	private var sfx_fight2:FlxSound;
	private var sfx_fight3:FlxSound;
	private var sfx_fight4:FlxSound;
	private var sfx_fight5:FlxSound;
	

	public function new(playState:PlayState) 
	{
		super();
		this.playState = playState;
		this.scrollFactor.x = 0;
		this.scrollFactor.y = 0;
		
		x = FlxG.width / 2 - 100;
		y = FlxG.height / 2 - 40;
		
		bg = new FlxSprite();
		add(bg);
		bg.makeGraphic(200, 80, 0xff222222);
		
		btn_attack = new FlxButton(5, 55, "Attack", onAttack);
		btn_flee = new FlxButton(115, 55, "Flee", onFlee);
		add(btn_attack);
		add(btn_flee);
		
		txt = new FlxText(5, 5, 190);
		add(txt);
		
		sfx_hit = FlxG.sound.load("assets/sounds/punch.mp3");
		sfx_fightBegin1 = FlxG.sound.load("assets/sounds/hero/fight_begin1.wav");
		sfx_fightBegin2 = FlxG.sound.load("assets/sounds/hero/fight_begin2.wav");
		sfx_fightEnd1 = FlxG.sound.load("assets/sounds/hero/fight_end1.wav");
		sfx_fightEnd2 = FlxG.sound.load("assets/sounds/hero/fight_end2.wav");
		sfx_fight1 = FlxG.sound.load("assets/sounds/hero/fight1.wav");
		sfx_fight2 = FlxG.sound.load("assets/sounds/hero/fight2.wav");
		sfx_fight3 = FlxG.sound.load("assets/sounds/hero/fight3.wav");
		sfx_fight4 = FlxG.sound.load("assets/sounds/hero/fight4.wav");
	}
	
	public function fight(enemy:Enemy) {
		this.enemy = enemy;
		var rand:Int = Math.round(Math.random() * 7);
		switch rand {
			case 1: sfx_fightBegin1.play();
			case 2: sfx_fightBegin2.play();
			case 3: sfx_fight1.play();
			case 4: sfx_fight2.play();
			case 5: sfx_fight4.play();
			default: sfx_fightBegin1.play();
		}
		txt.text = "A wild enemy appears!";
	}
	
	private function onAttack() {
		sfx_hit.play();
		var dmg:Int = playState.hud.getLevel();
		var rand:Int;
		enemy.health -= dmg;
		txt.text = "You hit the enemy, dealing " + dmg + " damage.";
		if (enemy.health > 0) {
			rand = Math.round(Math.random() * 4);
			switch rand {
				case 1: sfx_fight1.play();
				case 2: sfx_fight2.play();
				case 3: sfx_fight3.play();
				case 4: sfx_fight4.play();
				default: sfx_fight1.play();
			}
			var enemyDmg:Int = Math.floor(Math.random()*2);
			txt.text += "\nThe enemy strikes, dealing " + enemyDmg + " damage.";
			playState.hud.addHealth( -enemyDmg);
		} else {
			rand = Math.round(Math.random() * 2);
			switch rand {
				case 1: sfx_fightEnd1.play();
				case 2: sfx_fightEnd2.play();
				default: sfx_fightEnd2.play();
			}
			playState.winCombat(enemy);
			playState.hud.addExp(6);
		}
	}
	
	private function onFlee() {
		playState.endCombat(enemy);
	}
}