const db_connection = require('../../resources/dbconnection.json');
const knex = require('knex')(db_connection);

const getById = async (id, securityLevel) =>  {
  let promise = null;
  if(securityLevel == 0) {
    promise = knex.raw(`select Title, Body, Datetime from News where id = ${id}`);
  } else if (securityLevel == 1) {
    promise = knex.raw('select Title, Body, Datetime from News where id = ?', id)
  }
    const resultBD = await promise;
    let result = {};
    if ( resultBD.length == 2 && resultBD[0].length == 1 ) {
      result = {
        title: resultBD[0][0].Title,
        date: resultBD[0][0].Datetime,
        body: resultBD[0][0].Body
      };
    }
    return result;
};

const getAll = async () =>  {
  const resultBD = await knex.raw('select Id, Title from News');
  let result = {};
  if(resultBD.length == 2) {
    result = resultBD[0];
  }
  return result;
};

module.exports = {
  getById,
  getAll
};