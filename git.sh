git config --global credential.helper store
git config --global user.name  'ifquant'
git config --global user.email "ifquant@163.com"
echo "# quant" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ifquant/quant.git
git push -u origin main
