// This is the array of players that we will be using
var players = [
    {
        id: 1,
        name: "Swain",
        deckType: "Dragon"
    },
    {
        id: 2,
        name: "Guy",
        deckType: "Angel"
    },
    {
        id: 3,
        name: "Cain",
        deckType: "Treefolk"
    },
    {
        id: 4,
        name: "Tom",
        deckType: "Dragon"
    },
    {
        id: 5,
        name: "Ed",
        deckType: "Mixed"
    }
];

// Instead of just sending the players array, we're promising it, as if this was a backend server
function getPlayers() {
    // This means the backend will send this info, unless there's a problem
    return new Promise(function(resolve, reject) {
        // This means we'll wait the specified amount of milliseconds to do the function in the parameter
        setTimeout(function() {
            resolve(players);
        }, 0)
    });
}

// This will be called to return information that we want to change in the array
function updatePlayer(id, name, deckType) {
    return new Promise(function(resolve, reject) {
        setTimeout(function() {
            for (var i=0;i<players.length;i++) {
                var player = players[i];
                if(player.id == id) {
                    player.name = name;
                    player.deckType = deckType;
                    break;
                }
            }

            resolve();
        }, 0);
    });
}

// function insertPlayer() {
//     console.log("YEET");
// }

module.exports = {
    getPlayers: getPlayers,
    updatePlayer: updatePlayer
};
