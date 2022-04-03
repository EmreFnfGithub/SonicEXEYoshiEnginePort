function create(){
    stage = loadStage("fleetway-stage");
    global["stage"] = stage;
}

function beatHit(curBeat){
   stage.onBeat();
}