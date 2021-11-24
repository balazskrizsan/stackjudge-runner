
# Docker commands

| Description | Command | Optionals |
| --- | --- | --- |
| **CONTAINERS**
| List containers                           | docker ps
| List **exited** containers                | docker ps -f "status=exited" / docker ps --filter "status=exited"
| List **all** containers                   | docker ps -a / docker ps --all
| Remove **all exited** containers          | docker rm $(docker ps --filter status=exited -q)
| Remove **all** containers                 | docker rm $(docker ps -q)
| Remove **container + related volumes**    | docker rm -v {redis}
| **IMAGES**
| List images                               | docker images
| Remove image(s)                           | docker rmi {image id} | -f
| Remove **all** images                     | docker image rm -f $(docker image ls -a -q)

 