function create(){
    stage = loadStage("milkstage");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}