function create(){
    stage = loadStage("fake");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}