sudo chmod 777 log/
sudo chmod 777 pid
londiste3 slave2.ini create-branch slave 'user=postgres password=postgres host=192.168.0.103 dbname=testdb' --provider='user=postgres password=postgres host=192.168.0.101 dbname=testdb'
londiste3 -d slave2.ini worker
londiste3 slave2.ini add-table --all
