# Apps

| App name                 |          Clean          | Short  | App dev port | PSQL dev                                   | PSQL test                                       |
|--------------------------|:-----------------------:|--------|--------------|--------------------------------------------|-------------------------------------------------|
| StackJudge Backend       |   stackjudge_backend    | sj_be  |              |                                            |                                                 |
| StackJudge Frontend      |   stackjudge_frontend   | sj_fe  |              |                                            |                                                 |
| StackJudge AWS           |     stackjudge_aws      | sj_aws | :83          | sj_aws_postgres_dev:54324 admin@admin_pass | sj_ids_postgres_dev_test:54325 admin@admin_pass |
| StackJudge Notifications | stackjudge_notifictions | sj_no  |              |                                            |                                                 |
| StackJudge Identity      |   stackjudge_identity   | sj_ids |              |                                            |                                                 |

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

 