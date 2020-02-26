trap [Management.Automation.CommandNotFoundException] {
  Write-Error 'Docker cannot be found. Make sure it is installed and added to the path.'
  Start-Process -FilePath 'https://docs.docker.com/docker-for-windows/install/'
  continue;
}

docker run --rm --name jupyter-postgres-db -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres:11-alpine