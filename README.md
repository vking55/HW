### Description

The Prometheus container runs at port 9090.

Django "app1" runs at port 8000.

Django "app2" runs at port 8080.


### How to Run?

```
docker-compose -f docker-compose.yml up
```

Check: ```127.0.0.1:9090```, ```127.0.0.1:8000``` and ```127.0.0.1:8080```

For Prometheus:

Go to ```status``` then ```targets``` to find the Django services.

For Grafana: 
- import dashboard from ```monitor_services.json```
- data source url: ```http://prometheus:9090```
