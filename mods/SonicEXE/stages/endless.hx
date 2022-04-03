function create(){
    stage = loadStage("endless");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}