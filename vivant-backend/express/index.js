const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const helper = require("../helper");
var path = require("path");
const { endpoint } = require("../config");
const { isAuthenticated } = require("../helper/tokenVerify");
const fs = require("fs");

const corsOptions = {
  origin: '*' //['http://service-1.default.svc.cluster.local:8080']
  credentials: true,
  optionSuccessStatus: 200
}



module.exports = () => {
  for (const key in helper) {
    global[key] = helper[key];
  }
  global["commonErrorMessage"] = "Something went wrong please try again";

  const app = express();
  app.use(cors(corsOptions));
  app.use(bodyParser.urlencoded({ extended: false }));
  app.use(bodyParser.json());
  app.use(express.static(path.join(root, "/public")));
  app.use(isAuthenticated);
  app.use(endpoint, require("../controller/user.routes"));
  return app;
};
