# 以下最好在安装代理后进行安装

read -p "请输入代理的命令：" proxy

# 安装 ohmyzsh
echo "安装 ohmyzsh"
ohmyzshFile=~/.oh-my-zsh
if [ -e $ohmyzshFile ]; then
  echo "oh-my-zsh 已经存在\n"
else
  sh -c "$($proxy curl -fsSL http://raw.github.com/ohmyzsh/master/tools/install.sh)"
  echo "vim-plug 安装结束\n"
fi

# 安装 vimPlug
echo "安装 vim-plug"
plugFile=~/.vim/autoload/plug.vim
if [ -e $plugFile ]; then
  echo "vim-plug 已经存在"
else
  $proxy curl -fLo $plugFile --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo "vim-plug 安装结束"
fi

# 安装 node 版本管理器
echo "安装 node 版本管理器 n"
if [ -e ~/n ]; then
  echo "n 已经存在，请运行 bash n"
else
  # make cache folder (if missing) and take ownership
  sudo mkdir -p /usr/local/n
  sudo chown -R $(whoami) /usr/local/n
  # take ownership of Node.js install destination folders
  sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
  # download n
  $proxy curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o ~/n
  bash n lts
  echo "n 和 node 安装成功"
fi

