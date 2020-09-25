// Kez's Mongo

// Set Vim as Editor
EDITOR = "vim";

// Prompt
var username = "";
var user = db.runCommand({
  connectionStatus: 1,
}).authInfo.authenticatedUsers[0];

if (!!user) {
  username = user.user;
} else {
  username = "anonymous";
}

host = db.serverStatus().host;

upTime = Math.floor(db.serverStatus().uptime / 60);
documents = db.stats().objects;

prompt = () => {
  return `${username}@${db} ${host} ${upTime}:${documents} $ `;
};
