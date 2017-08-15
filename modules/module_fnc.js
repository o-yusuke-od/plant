'use strict';

module.exports = {
    pad:function(digits, number, padString = '0') {
      const raw = `${padString.repeat(digits)}${number}`;
      return raw.substr(digits * -1);
    },
    yyyy:function(date) {
        let yyyy = date.getFullYear();
        let mm = pad(2,date.getMonth() + 1);
        let dd = pad(2,date.getDate());
        let hh = pad(2,date.getHours());
        let mi = pad(2,date.getMinutes());
        return yyyy + '/' + mm + '/'+ dd +' '+hh + ':' + mi;
    }
}

