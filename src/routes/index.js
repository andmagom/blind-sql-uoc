const express = require('express');
const newsController = require('../controller/news');
const userController = require('../controller/users');
var jwt = require('jsonwebtoken');

const router = express.Router();

router.post('/login', async (req, res) => {
  const user = req.body.username;
  const pass = req.body.password;

  const result = await userController.validateCredential(user, pass);
  if(result) {
    const token = jwt.sign({email: user}, 'secret');
    return res.json({token});
  } else {
    return res.status(401).json(
      {
        error: {
          title: 'Credentials Incorrect', 
          description: 'Username or Password incorrect'
        }
      }
    );
  }
});

router.get('/news', async (req, res) => {
  const data = await newsController.getAll();
  return res.json(data);
});

router.get('/news/:id', async (req, res) => {
  const id = req.params.id;
  const data = await newsController.getById(id, 0);
  return res.json(data);
});

module.exports = router