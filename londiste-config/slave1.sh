sudo chmod 777 log/
sudo chmod 777 pid
londiste3 slave.ini create-branch slave 'user=postgres password=postgres host=192.168.0.102 dbname=testdb' --provider='user=postgres password=postgres host=192.168.0.101 dbname=testdb'
londiste3 -d slave.ini worker
londiste3 slave.ini add-table --all
