const db_connection = require('../../resources/dbconnection.json');
const knex = require('knex')(db_connection);

const getById = async (id, securityLevel) =>  {
  let promise = null;

  /*  Nivel de seguridad básico
  if(Number.isInteger(id) !== 'number') {
    id = -1;
  }
  */

  securityLevel=2;

  if(securityLevel == 0) {
    promise = knex.raw(`select Title, Body, Datetime from News where id = ${id}`);
  } else if (securityLevel == 1) {
    promise = knex.raw('select Title, Body, Datetime from News where id = ?', id)
  } else if (securityLevel == 2) {
    promise = knex.raw('CALL UOC.getNews(?, @title,@body, @dates)', id)
  }

  let resultBD = await promise;

  let result = {};

  if(securityLevel == 2) {
    promise = knex.raw('select @title,@body, @dates;');
    resultBD = await promise;
  } 

  if ( resultBD.length == 2 && resultBD[0].length == 1 &&  securityLevel != 2) {
    result = {
      title: resultBD[0][0].Title,
      date: resultBD[0][0].Datetime,
      body: resultBD[0][0].Body
    };
  } else if(resultBD.length == 2 && resultBD[0].length == 1 &&  securityLevel == 2 && resultBD[0][0]['@title']) {
    result = {
      title: resultBD[0][0]['@title'],
      date: resultBD[0][0]['@dates'],
      body: resultBD[0][0]['@body'],
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