# Inspirational title
This is the root repo for the YALB project. It aims to create an easy to
use, easy to deploy, easy to configure and fast live board to use in hackatons
and similar events.

# Implementation details / roadmap
Here it's described how it is implemented and the mental ide that I keep while
developing it.

## Backend
The main part will be written in Rust using ACTIX, it will expose some end points
for connections and then it will open websockets to push the data to the clients.

It will optionally have a Redis connection and a Mongo connection to save the state.

## Frontend
It will be done React + Typescript with components designed fron the ground up.

## Infrastructure
The backend service will be behind an NGINX instance and the frontend will be mounted
via a volume to the NIGNX container.

If opted in, it will also have a Mongo db container and a Redis container.

# License
The entire project is under the Affero GNU General Public License v3 unless
explicitly stated.

Copyright © 2019 Pedro Gomez Martin <zentauro@riseup.net>
