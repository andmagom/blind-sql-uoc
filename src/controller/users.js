const db_connection = require('../../resources/dbconnection.json');
const knex = require('knex')(db_connection);
const sha256 = require('sha256');

const validateCredential = async (username, password) => {
  const passwordHash = sha256(password);
  const resultBD = await knex.raw('select * from Users where Email = ? and Password = ?', [username, passwordHash]);
  let result = false;
  if ( resultBD.length == 2 && resultBD[0].length == 1) {
    result = true;
  }
  return result;
};

module.exports = {
  validateCredential,
};