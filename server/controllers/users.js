/* eslint-disable import/extensions */
const axios = require('axios');
const {
  postUser, getEmail, getOneUser, updateOneUser, getOneUserID, getUsers,
} = require('../../database/models/Users.js');

const getAllUsers = (req, res) => {
  console.log('IN GET ALL USERS');
  getUsers()
    .then((response) => {
      res.send(response.rows);
      res.end();
    })
    .catch((err) => {
      console.log(err);
    });
};

const getUserID = (req, res) => {
  getOneUserID(req.query)
    .then((response) => {
      res.send(response.rows);
      res.end();
    })
    .catch((err) => {
      console.log(err);
    });
};

const addUser = (req, res) => {
  postUser(req.body)
    .then((response) => {
      console.log('RESPONSE IN ADDUSER', response);
      res.send(response);
      res.end();
    })
    .catch((err) => {
      console.log(err);
      res.end('error in add user');
    });
};

const getUser = (req, res) => {
  getOneUser(req.query)
    .then((data) => {
      res.send(data.rows);
    })
    .catch((err) => {
      console.log(err);
    });
};

const updateUser = (req, res) => {
  updateOneUser(req.body)
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      console.log(err);
    });
};

const getUserEmail = (req, res) => {
  getEmail(req.query)
    .then((data) => {
      res.send(data.rows);
    })
    .catch((err) => {
      console.log(err);
    });
};
require('dotenv').config();
// const { postUser } = require('../../database/models/Birds.js');

const createNewUser = async (req, res) => {
  const zipCode = req.body.zip; // check name of what client is sending

  try {
    getUserGeoLocFromZip(zipCode);
  } catch (err) {
    console.log(err, 'error in createNewUser');
  }
};

const getUserGeoLocFromZip = async (zip) => {
  const encodedZip = encodeURI(zip);
  // console.log(encodedZip, 'encoded zip');
  const googleURL = `https://maps.googleapis.com/maps/api/geocode/json?address=${encodedZip}&key=${process.env.GOOGLE_MAPS_API_KEY}`;
  try {
    const fullLocationData = await axios.get(googleURL);
    const geoLocation = {};
    // console.log('location obj', fullLocationData.data.results[0].geometry);
    geoLocation.lat = fullLocationData.data.results[0].geometry.location.lat;
    geoLocation.lng = fullLocationData.data.results[0].geometry.location.lng;
    console.log(geoLocation);
    // return geoLocation;
  } catch (err) {
    console.log('error inside getUserGeoLocFromZip', err);
  }
};

module.exports = {
  addUser, getUser, getUserEmail, updateUser, createNewUser, getUserID, getAllUsers,
};
