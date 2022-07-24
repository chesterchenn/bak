const { readdir, renameSync } = require('fs');

const path = '.';
const s = '';
const r = '';

readdir(path, (err, files) => {
  if (err) throw err;
  for (file of files) {
    const newFileName = file.replace(s, r);
    renameSync(file, newFileName);
  }
});
