@echo off
call git clone https://github.com/FlowiseAI/Flowise.git
call npm install --global yarn
call cd Flowise
call yarn upgrade
call yarn install
call yarn build
start http://localhost:3000
call yarn start