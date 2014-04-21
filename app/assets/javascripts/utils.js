!function () {
  // Change underscore template interprolation syntax from <%= %> to {{ }}
  // This is needed to avoid erb's interprolation syntax
  _.templateSettings = {
    interpolate: /\{\{(.+?)\}\}/g
  };

}();
