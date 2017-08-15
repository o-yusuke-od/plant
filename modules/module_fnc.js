'use strict';

module.exports = {
    pad:function(digits, number, padString = '0') {
      const raw = `${padString.repeat(digits)}${number}`;
      return raw.substr(digits * -1);
    },
    yyyy:function(date) {
        let yyyy = date.getFullYear();
        let mm = this.pad(2,date.getMonth() + 1);
        let dd = this.pad(2,date.getDate());
        let hh = this.pad(2,date.getHours());
        let mi = this.pad(2,date.getMinutes());
        return yyyy + '/' + mm + '/'+ dd +' '+hh + ':' + mi;
    }
}

