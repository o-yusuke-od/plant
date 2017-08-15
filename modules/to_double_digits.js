'use strict';

module.exports = {
    pad:function(digits, number, padString = '0') {
      const raw = `${padString.repeat(digits)}${number}`;
      return raw.substr(digits * -1);
    }
}

