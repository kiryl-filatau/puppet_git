#node default {
#  include sql
#  include nginx
#}

node 'puppetagent6.minsk.epam.com' {
  include unzip
  include java
  include jboss
  include deploy
}
