# Speed Test Dashboard

Network monitoring dashboards for pfSense and SpeedTest.net CLI.

## Docker Compose

Docker compose builds three docker containers using the included configuration files to setup the stack.

The SpeedTest dashboard works out of the box and requires no extra configuration.

## Usage

### Docker Compose

```git clone https://github.com/aalex954/SpeedTestDashboard```

```cd SpeedTestDashboard```

```docker-compose up -d```

### Grafana

```http://localhost:53000/login```

default credentials: _admin/admin_

_note: Grafana credentials can be set in the ./grafana/env.grafana file_


## SpeedTest.net

![speedtest1](https://user-images.githubusercontent.com/6628565/232978206-c3a1a3c3-5f70-48a1-9ec8-f4145a6c0b2e.jpg)

## pfSense

![speedtest2](https://user-images.githubusercontent.com/6628565/232980064-96693b56-721d-4d04-a063-ce5d539be262.jpg)
