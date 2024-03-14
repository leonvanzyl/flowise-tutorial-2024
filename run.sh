#!/bin/bash

# Clone the Git repository
git clone https://github.com/FlowiseAI/Flowise.git

# Install Yarn globally
npm install --global yarn

# Change directory to the cloned repository
cd Flowise

# Upgrade yarn packages
pnpm upgrade

# Install yarn dependencies
pnpm install

# Build the project
pnpm build

# Open the web browser with the given URL (this will vary based on the OS)
if which xdg-open > /dev/null
then
  xdg-open http://localhost:3000
elif which gnome-open > /dev/null
then
  gnome-open http://localhost:3000
else
  open http://localhost:3000
fi

# Start the yarn project
pnpm start
