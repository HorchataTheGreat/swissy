// This gets the information from the Context file. This gets all the info, including the array of players
const Context    = require("Modules/Context");
const Observable = require("FuseJS/Observable");

// Be careful that you don't get player (as in the Observable) mixed up with players (as in the array)
// this.Parameter is an observable that recieves the information from the function that brought us here (goToPlayer)
var player = {
    id: 100,
    name: Observable(""),
    deckType: Observable("")
};

function cancel() {
    // Refresh player value to reset dependent Observables' values
    player.value = player.value;
    router.goBack();
}

function doInsertPlayer() {
    Context.insertPlayer(player);
    router.goBack();
}

// This is the information that the local ux will have access to
module.exports = {
    name: player.name,
    deckType: player.deckType,
    doInsertPlayer: doInsertPlayer,
    cancel: cancel
};
