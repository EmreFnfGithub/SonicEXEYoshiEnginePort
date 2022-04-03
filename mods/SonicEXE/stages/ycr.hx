function create(){
    stage = loadStage("ycr");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}