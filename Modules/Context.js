const Observable = require("FuseJS/Observable");
const Backend    = require("./Backend");

var players = Observable();

// Calling the getPlayers functon from our Backend module. Populates the local players variable with the information
// from the Backend file
Backend.getPlayers()
    .then(function(newPlayers) {
        players.replaceAll(newPlayers);
    })
    .catch(function(error) {
        console.log("Couldn't get players: " + error);
    });

// We need to update the player here, so that we can send the new player to the backend
// This should be very similar to the function on Backend.js
function updatePlayer(id, name, deckType) {
    for(var i=0;i<players.length;i++) {
        var player = players.getAt(i);
        if(player.id == id) {
            player.name = name;
            player.deckType = deckType;
            players.replaceAt(i, player);
            break;
        }
    }
    Backend.updatePlayer(id, name, deckType)
        .catch(function(error) {
            console.log("Couldn't update hike: " + error + id)
        });
}

var creditCard = Observable("")

function insertPlayer(arg) {
    // var player = Observable();
    // player.name = arg.name.value;
    // player.deckType = arg.deckType.value;
    //
    // players.add(player);
    // console.log("Player Added");
    // console.log(JSON.stringify(players));
    players.add({ id:players.length+1, name:arg.name.value, deckType:arg.deckType.value });

}

module.exports = {
    players: players,

    updatePlayer: updatePlayer,
    insertPlayer, insertPlayer
}
