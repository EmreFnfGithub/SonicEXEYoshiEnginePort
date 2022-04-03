function create(){
    stage = loadStage("sanic");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}