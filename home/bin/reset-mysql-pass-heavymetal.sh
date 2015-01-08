 #!/bin/bash

if [ "$UID" -ne  0 ]; then
   echo "You are not a superuser - please run:"
   echo "sudo $0 new-password";
   exit 1;
fi

NEW_PASSWORD=$1
if [[ "$NEW_PASSWORD" == "" ]]; then
   echo "You need to specify a new password, like this:"
   echo "sudo $0 new-password";
   exit 1;
fi

/etc/init.d/mysql stop
sudo /usr/sbin/mysqld --skip-grant-tables --skip-networking &
sleep 2
PID=$!
echo "FLUSH PRIVILEGES; UPDATE mysql.user SET Password=PASSWORD('$NEW_PASSWORD') WHERE User='root';" |  mysql
kill $PID
/etc/init.d/mysql stop
/etc/init.d/mysql start
