var myStepDefinitionsWrapper = function () {
  this.World = require("../support/world.js").World; // overwrite default World constructor

  this.Given(/^I am on the bdd\-examples GitHub repository$/, function (callback) {
    // Write code here that turns the phrase above into concrete actions
    this.visit('http://localhost:8000/', callback);
    //callback.pending();
  });

  this.When(/^I go to the README file$/, function (callback) {
    // Write code here that turns the phrase above into concrete actions
    this.browser.clickLink("Readme.md", function() {
      callback();
    });

  });

  this.Then(/^I should see "([^"]*)"$/, function (arg1, callback) {
    console.log(this.browser.html().match(arg1), arg1);
    // Write code here that turns the phrase above into concrete actions
    callback.pending();
  });
};

module.exports = myStepDefinitionsWrapper;
