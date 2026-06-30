#!/usr/bin/env just --justfile
export PATH := join(justfile_directory(), "node_modules", "bin") + ":" + env_var('PATH')

build:
  just node-check
  npx hexo generate --draft --dev
clean:
  just node-check
  npx hexo clean
server:
  just node-check
  npx hexo server --draft --dev
run:
  just node-check
  npx hexo clean && npx hexo generate --draft --dev && npx hexo server --draft --dev
all:
  just node-check
  npx hexo clean && npx hexo generate --draft --dev
node-check:
  node -e 'const major = Number(process.versions.node.split(".")[0]); if (major < 20 || major >= 25) { console.error(`This Hexo project needs Node >=20.19 and <25. Current: ${process.version}. Run: asdf install && asdf local nodejs 22.22.3`); process.exit(1); }'
push comment:
  git pull && git add . && git commit -S -m "{{comment}}" && git push

# 定义一个带参数的配方 name,以xx模板创建文章
# 在命令里引用参数要用 {{}}，且不能省略引号
new layout name:
  npx hexo new "{{layout}}" "{{name}}"
my name:
  npx hexo new my "{{name}}"
post name:
  npx hexo new post "{{name}}"
draft name:
  npx hexo new draft "{{name}}"
page name:
  npx hexo new page "{{name}}"
jn name:
  npx hexo new jn "{{name}}"
