export PASSWORD='topdmc.qwe.123'
export USERNAME='topdmc'

function check_mysql {
  # check mysql , if not exists install mysql client
  if ! [ -x "$(command -v mysql)" ]; then
    echo 'Error: mysql is not installed.' >&2
    sudo apt-get install mysql-client
  fi
}

function init_elasticsearch {
  echo 'init elasticsearch index starting'
  curl -XPUT http://127.0.0.1:9200/donkey --data-binary '{ "settings" : {"number_of_shards" : 3,"number_of_replicas" : 2}}'
  echo 'init elasticsearch index successful'
}

function init_mysql {
  mysql -u${USERNAME} -p${PASSWORD} -h127.0.0.1 < ./scripts/schema.sql
  echo 'init schema successful'

  mysql -u${USERNAME} -p${PASSWORD} -h127.0.0.1 < ./scripts/seed.sql
  echo 'init seed successful'
}

check_mysql
init_elasticsearch
init_mysql

echo "finished"
