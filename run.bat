@echo off
call git clone https://github.com/FlowiseAI/Flowise.git
call npm install --global yarn
call cd Flowise
call pnpm upgrade
call pnpm install
call pnpm build
start http://localhost:3000
call pnpm start
