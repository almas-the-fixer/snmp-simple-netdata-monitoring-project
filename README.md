# Netdata Monitoring & Alerting Project (Local Setup)

## Project Overview
This project demonstrates setting up a real-time system monitoring dashboard using **Netdata** on a Linux system.  
The focus is on monitoring core system metrics, configuring alerts, and automating setup and testing using shell scripts.

This project is designed to build foundational DevOps skills such as observability, alerting, automation, and system validation.

---

## Requirements Implemented

### 1. Netdata Installation
- Netdata is installed on a Linux system using an automated shell script.
- The Netdata agent runs as a systemd service.

### 2. System Metrics Monitoring
Netdata monitors the following core metrics:
- **CPU usage**
- **Memory usage**
- **Disk I/O**
- **System load**

All metrics are collected in real time using Netdata’s built-in collectors.

### 3. Dashboard Access
- Netdata dashboard is accessible via a web browser at:

``` http://localhost:19999 ```

- Provides real-time charts and historical metrics.

### 4. Dashboard Customization
- Custom health alerts were configured using Netdata’s Health Engine.
- Existing system charts (CPU & Load) were customized with alert thresholds and state transitions.

### 5. Alert Configuration
A custom alert was created to monitor high CPU usage:

| Alert Name | Metric | Warning | Critical |
|----------|--------|---------|----------|
| high_cpu_usage | system.cpu | >70% | >80% |

Alert states are visible in:
- Netdata Alerts UI
- Netdata backend logs

---

## Automation Scripts

### setup.sh
Installs Netdata on a new Linux system.

Responsibilities:
- Installs Netdata
- Starts and enables the Netdata service
- Verifies Netdata is running

### test_dashboard.sh
Generates system load to test monitoring and alerting.

Responsibilities:
- Creates CPU load using shell commands
- Triggers Netdata alerts
- Allows validation of dashboard charts and alert states

### cleanup.sh
Removes Netdata from the system.

Responsibilities:
- Stops Netdata service
- Uninstalls Netdata
- Cleans configuration and log files

---

## Alert Validation & Testing
Alerts were validated by:
- Generating CPU load using `yes > /dev/null`
- Observing alert state changes in Netdata UI
- Verifying alert evaluations via system logs:


---

## DevOps Learning Outcomes
- Monitoring fundamentals
- Alerting and thresholds
- System observability
- Shell scripting automation
- Testing and cleanup workflows
- Foundation for CI/CD and SRE practices

---

## Conclusion
This project demonstrates a complete monitoring setup with alerting and automation, aligned with real-world DevOps practices and suitable for junior DevOps or SRE roles.

