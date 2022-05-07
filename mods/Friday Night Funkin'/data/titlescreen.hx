import("LoadingState");

var crafterEngineLogo:FlxSprite = null;
var gfDancing:FlxSprite = null;

function create() {
  bg = new FlxSprite(0, 0);
		bg.frames = Paths.getSparrowAtlas('titlescreen/NewTitleMenuBG');
		bg.animation.addByPrefix('idle', "TitleMenuSSBG instance 1", 24);
		bg.animation.play('idle');
		bg.alpha = .75;
		bg.scale.x = 3;
		bg.scale.y = 3;
		bg.antialiasing = true;
		bg.updateHitbox();
		bg.screenCenter();
		add(bg);
 
		logoBlBUMP = new FlxSprite(0, 0);
		logoBlBUMP.loadGraphic(Paths.image('titlescreen/Logo'));
		logoBlBUMP.antialiasing = true;

		logoBlBUMP.scale.x = .5;
		logoBlBUMP.scale.y = .5;

		logoBlBUMP.screenCenter();

		add(logoBlBUMP);

		gfDance = new FlxSprite(FlxG.width * 0.4, FlxG.height * 0.07);
		gfDance.frames = Paths.getSparrowAtlas('gfDanceTitle');
		gfDance.animation.addByIndices('danceLeft', 'gfDance', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
		gfDance.animation.addByIndices('danceRight', 'gfDance', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
		gfDance.antialiasing = true;

		add(logoBl);
}

var danced = false;
function beatHit() {
    gfDancing.animation.play(danced ? "danceLeft" : "danceRight");
    danced = !danced;
}

function update(elapsed:Float) {
    if(pressedEnter)
{
FlxG.sound.playMusic(Paths.music('MainMenuMusic'), 100);
}
    if (FlxG.mouse.justPressed) {
        var pos = FlxG.mouse.getScreenPosition();
        if (pos.x >= 9 && pos.x < 186 && pos.y >= 238 && pos.y < 411) {
            // gray you fucking genius
            CoolUtil.loadSong("YoshiCrafterEngine", "yoshi", "normal");
            LoadingState.loadAndSwitchState(new PlayState_());
        }
    }
}