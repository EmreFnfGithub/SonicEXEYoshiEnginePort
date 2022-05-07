function characterSwitch(character:String, xPos:String, yPos:String)
{
    PlayState.remove(PlayState.dad);
    PlayState.dad.destroy();
    PlayState.dads = [new Character(Std.parseFloat(xPos), Std.parseFloat(yPos), character)];
    PlayState.add(PlayState.dad);
    PlayState.iconP2.changeCharacter(character, mod);
}
function characterSwitchBf(character:String, xPos:String, yPos:String)
{
    PlayState.remove(PlayState.boyfriend);
    PlayState.boyfriend.destroy();
    PlayState.boyfriends = [new Boyfriend(Std.parseFloat(xPos), Std.parseFloat(yPos), character)];
    PlayState.add(PlayState.boyfriend);
    PlayState.iconP1.changeCharacter(character, mod);
}
function playAnimDad(anim:String)
{
    PlayState.dad.playAnim(anim);
}
function playAnimBf(anim:String)
{
    PlayState.bf.playAnim(anim);
}