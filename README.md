# ElixirDocker
 
Project example of how to run and program inside an Elixir Docker Container.

## Requirements

1. Install Docker Compose.
2. Install VSCode.
3. Add 'Remote Development' extension for VSCode.

## Install 

1. Clone this repository.
2. Open project directory with VSCode.
3. Execute VSCode command: "Remote-Containers: Reopen in Container".
4. Now you can program and modify the project from within Elixir docker instance.
   
## Run in Development

1. Go inside **sandbox** folder.
2. Execute **mix setup** to get dependencies and migrate database.
3. Execute **mix phx.server** to run the server at [localhost:4001](http://localhost:4001/)

You can find other aliases in **mix.exs** file.

## Change extensions in remote VSCode

Remove or add VSCode extensions identifiers from **"extensions"** attribute inside **devcontainer.json** file.
