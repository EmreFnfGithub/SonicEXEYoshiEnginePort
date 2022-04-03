function create(){
    stage = loadStage("lordx");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}