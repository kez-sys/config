// Kez's Mongo

// Set Vim as Editor
EDITOR = "vim";

// Prompt

prompt = () => {
  let username = "";
  let host = db.serverStatus().host;
  let upTime = Math.floor(db.serverStatus().uptime / 60);
  let documents = db.stats().objects;
  let collections = db.stats().collections;

  let user = db.runCommand({
    connectionStatus: 1,
  }).authInfo.authenticatedUsers[0];

  if (!!user) {
    username = user.user;
  } else {
    username = "anon";
  }

  return `${username}@${db} ${host} ${upTime}:${collections}:${documents} $ `;
};
