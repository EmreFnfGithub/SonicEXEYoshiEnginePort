function create(){
    stage = loadStage("fakerstage");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}