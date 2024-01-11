const fs = require('node:fs');
const token = '';
const tag = '2GULLLYQL';

async function queryCoc() {
  const response = await fetch(`https://api.clashofclans.com/v1/clans/%23${tag}/currentwar`, {
    headers: {
      Authorization: `Bearer ` + token,
    },
  });
  return response.json();
}

queryCoc().then((res) => {
  const { members } = res.clan;
  const membersOrders = members.sort((a, b) => a.mapPosition - b.mapPosition);
  const membersNames = membersOrders.map((m) => m.name);
  const membersAttacks = [];
  const membersNoAttacks = [];
  membersOrders.forEach((m) => {
    if (m.attacks) {
      membersAttacks.push(`${m.name}(${m.attacks.length})`);
    } else {
      membersNoAttacks.push(m.name);
    }
  });
  let txt = '';
  membersNames.forEach((m) => (txt = txt + m + '\n'));
  txt = txt + '\n\n';
  txt = txt + `有进攻人员(${membersAttacks.length})\n\n`;
  membersAttacks.forEach((m) => (txt = txt + m + '\n'));
  txt = txt + '\n\n';
  txt = txt + `未进攻人员(${membersNoAttacks.length})\n\n`;
  membersNoAttacks.forEach((m) => (txt = txt + m + '\n'));
  fs.writeFileSync('currentwar.txt', txt);
});
