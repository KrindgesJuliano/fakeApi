const jsonServer = require('json-server');

const port = process.env.PORT || 3032;

const server = jsonServer.create();
const router = jsonServer.router('db.json');
const middlewares = jsonServer.defaults();

server.use(middlewares);
server.use('/api',router);
server.listen(port, () => {
  console.log(`JSON server is running on port ${port}`);
})