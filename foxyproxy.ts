import fs from 'node:fs';

interface RootObject {
  mode: string;
  sync: boolean;
  autoBackup: boolean;
  passthrough: string;
  theme: string;
  data: Datum[];
}

interface Datum {
  active: boolean;
  title: string;
  type: string;
  hostname: string;
  port: string;
  username: string;
  password: string;
  cc: string;
  city: string;
  color: string;
  pac: string;
  pacString: string;
  proxyDNS: boolean;
  include: Include[];
}

interface Include {
  type: string;
  title: string;
  pattern: string;
  active: boolean;
}

function main() {
  fs.readdirSync('./').forEach((file) => {
    if (!file.startsWith('FoxyProxy_')) return;
    const content = fs.readFileSync(file, 'utf8');
    const json: RootObject = JSON.parse(content);

    if (!json.data) return;

    const include = json.data[0].include;

    const sortInclude = include.sort((a, b) => {
      if (a.title < b.title) return -1;
      if (a.title > b.title) return 1;
      return 0;
    });

    const result = {
      ...json,
      data: [
        {
          ...json.data[0],
          include: sortInclude,
        },
      ],
    };

    fs.writeFileSync('FoxyProxy.json', JSON.stringify(result, null, 2));
  });
}

main();
