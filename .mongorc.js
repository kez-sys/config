// Kez's Mongo

// Set Vim as Editor
EDITOR = "vim";

// Prompt
host = db.serverStatus().host;
upTime = Math.floor(db.serverStatus().uptime / 60);
documents = db.stats().objects;

prompt = () => {
  return `${db}@${host} ${upTime}:${documents} $ `;
};

//mongo;
