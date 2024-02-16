FROM node:14.17.0-alpine as build-step

ARG FRONTEND_CONFIG

RUN     mkdir -p /project/frontend
WORKDIR /project/frontend
COPY    ./frontend /project/frontend
RUN     npm install
RUN     node_modules/@angular/cli/bin/ng build --configuration=$FRONTEND_CONFIG

FROM nginx:1.25.4
COPY --from=build-step /project/frontend/dist/sj /usr/share/nginx/html
