// This gets the information from the Context file. This gets all the info, including the array of players
const Context = require("Modules/Context");

// This moves us to the page where we edit players. This also gets the information of what player
// we clicked on and sends that to populate the text boxes on the edit page
function goToPlayer(arg) {
    console.log("Editing " + arg.data.name);

    var player = arg.data;
    // Uses the router to go to the specified page and sends the information for our player variable too
    router.push("editPlayer", player);
}

// This moves us to the edit player page, but doesn't send any extra info
function goToAdd(arg) {
    console.log("Adding Player");
    router.push("addPlayer");
}

function startTourney() {
    console.log("Starting Soon!");
}

// This is the information that the local ux will have access to
module.exports = {
    players: Context.players,

    goToPlayer: goToPlayer,
    goToAdd: goToAdd,
    startTourney: startTourney
};
