'use strict';

const fastify = require('fastify')({ logger: true });

fastify.get('/', async (request, reply) => {
	return `<html><head><title>Simple Node.js webserver</title></head><p>Simple Node.js webserver</p></html>`;
});

fastify.get('/hello', async (request, reply) => {
	return { hello: 'world' };
});

const start = async () => {
	try {
		await fastify.listen(80, '0.0.0.0'); // We are going to add the last localhost section to make sure this is correctly exposed to Docker
		fastify.log.info(`server listening on ${fastify.server.address().port}`);
	} catch (err) {
		fastify.log.error(err);
		process.exit(1);
	}
};

exports.webserver = (request, response) => {
	const HTML = start();
	response.status(200).send(HTML);
};
