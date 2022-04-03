function create(){
    stage = loadStage("exe");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}