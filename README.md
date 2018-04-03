# Docker ELK stack

Run the latest version of the ELK (Elasticseach, Logstash, Kibana) stack with Docker and Docker-compose.

It will give you the ability to analyze any data set by using the searching/aggregation capabilities of Elasticseach and the visualization power of Kibana.

Uses Docker images which support Raspberry Pi based on the official images:

* [rpi-elasticsearch](https://hub.docker.com/r/ind3x/rpi-elasticsearch/)
* [rpi-logstash](https://hub.docker.com/r/ind3x/rpi-logstash/)
* [rpi-kibana](https://hub.docker.com/r/ind3x/rpi-kibana/)

# Requirements

## Setup

1. Install [Docker](http://docker.io) on Raspberry Pi.
2. Install [Docker-compose](http://docs.docker.com/compose/install/) on Raspberry Pi.
3. Clone this repository on Raspberry Pi.

*NOTE*: Give a try to [HypriotOS](http://blog.hypriot.com/) if you want to easily install Docker on your Raspberry Pi.


# Usage

Start the ELK stack using *docker-compose* in your Raspberry Pi:

```bash
$ docker-compose up
```

You can also choose to run it in background (detached mode):

```bash
$ docker-compose up -d
```

Now that the stack is running, you'll want to inject logs in it. The shipped logstash configuration allows you to send content via tcp:

```bash
$ nc localhost 5000 < /path/to/logfile.log
```

And then access Kibana UI by hitting [http://raspberry-pi-ip:5601](http://raspberry-pi-ip:5601) with a web browser.

*NOTE*: You'll need to inject data into logstash before being able to create a logstash index in Kibana. Then all you should have to do is to
hit the create button.

See: https://www.elastic.co/guide/en/kibana/current/setup.html#connect

You can also access:
* Sense: [http://raspberry-pi-ip:5601/app/sense](http://raspberry-pi-ip:5601/app/sense)

By default, the stack exposes the following ports:
* 5000: Logstash TCP input.
* 9200: Elasticsearch HTTP
* 9300: Elasticsearch TCP transport
* 5601: Kibana

# Configuration

You can get more information about how to configure ELK stack in the original [Docker ELK stack repository](https://github.com/deviantony/docker-elk).

*NOTE*: Configuration is not dynamically reloaded, you will need to restart the stack after any change in the configuration of a component.

**Tested on Raspberry Pi 2**

Additional:

I have compiled and added filebeat for RPI so that you can test/monitor your RPI hosts
