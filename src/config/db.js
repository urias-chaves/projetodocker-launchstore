const { Pool } = require('pg');

module.exports = new Pool({
  user: 'postgres',
  password: 'senha',
  host: 'postgresql',
  port: 5432,
  database: 'launchstore'
});
