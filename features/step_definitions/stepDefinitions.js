var myStepDefinitionsWrapper = function () {
  this.World = require("../support/world.js").World; // overwrite default World constructor
};

module.exports = myStepDefinitionsWrapper;
