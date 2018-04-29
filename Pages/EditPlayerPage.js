// This gets the information from the Context file. This gets all the info, including the array of players
const Context = require("Modules/Context");

// Be careful that you don't get player (as in the Observable) mixed up with players (as in the array)
// this.Parameter is an observable that recieves the information from the function that brought us here (goToPlayer)
var player = this.Parameter;

// These functions create new Observables inside our player Observable
var name = player.map(function(x) { return x.name; });
var deckType = player.map(function(x) { return x.deckType; });

function save() {
    // This uses the function in the Context.js file to save the information on the page
    Context.updatePlayer(player.value.id, name.value, deckType.value);

    // This function goes back using the router thing in ux
    router.goBack();
}

function cancel() {
    // Refresh player value to reset dependent Observables' values
    player.value = player.value;
    router.goBack();
}

// This is the information that the local ux will have access to
module.exports = {
    name: name,
    deckType: deckType,
    save: save,
    cancel: cancel
};
