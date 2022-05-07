var stage:Stage = null;
function create() {
	stage = loadStage('triple-trouble');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}