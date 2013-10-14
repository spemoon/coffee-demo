(function() {
  define(require, exports, module)(function() {
    var $, a, b, someObject, square, tpl, tplHtml, type;
    $ = require('$');
    tpl = require('./tpl/tpl');
    tplHtml = tpl.render({
      "var": 'hello'
    });
    someObject = {
      a: 'value for a',
      b: 'value for b'
    };
    a = someObject.a, b = someObject.b;
    if (typeof console !== "undefined" && console !== null) {
      console.log("a is'" + a + "', b is'" + b);
    }
    square = function(x) {
      return x * x;
    };
    return type = (function() {
      var classToType, name, _i, _len, _ref;
      classToType = {};
      _ref = 'Boolean Number String Function Array Date RegExp Undefined Null'.split(' ');
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        name = _ref[_i];
        classToType["[object " + name + "]"] = name.toLowerCase();
      }
      return function(obj) {
        var strType;
        strType = Object.prototype.toString.call(obj);
        return classToType[strType] || 'object';
      };
    })();
  });

}).call(this);
