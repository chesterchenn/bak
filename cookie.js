const fs = require('fs');

const cookies = [
  {
    pt_key: '',
    pt_pin: '',
  },
  {
    pt_key: '',
    pt_pin: '',
  },
];

let result = 'export JD_COOKIE="';
cookies.forEach((c, idx) => {
  prefix = idx === 0 ? '' : '&';
  result += prefix + 'pt_key=' + c.pt_key + ';' + 'pt_pin=' + c.pt_pin + ';';
});
result += '"';

console.log(result);

fs.writeFileSync('./JD_COOKIE', result);
