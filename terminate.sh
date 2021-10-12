docker-compose -f influx/docker-compose.yml down 
docker-compose -f grafana/docker-compose.yml down
docker-compose -f victoriametrics_and_prometheus/docker-compose.yml down
sh network/delete_network.sh