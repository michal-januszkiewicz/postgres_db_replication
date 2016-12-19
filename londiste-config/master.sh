sudo chmod 777 log/
sudo chmod 777 pid
londiste3 master.ini create-root master 'user=postgres password=postgres host=192.168.0.101 dbname=testdb'
pgqd -d ticker.ini
londiste3 -d master.ini worker
londiste3 master.ini add-table --all
