trap [Management.Automation.CommandNotFoundException] {
  Write-Error 'Docker cannot be found. Make sure it is installed and added to the path.'
  Start-Process -FilePath 'https://docs.docker.com/docker-for-windows/install/'
  continue;
}

docker run --rm --name jupyter-mysql-db -e MYSQL_ROOT_PASSWORD=password -p 3306:3306 -d mariadb:10.5.1-bionic