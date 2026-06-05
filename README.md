# Kenyatta National Hospital Digital Infrastructure

**Group 13  – Coding Lab**

**Team Task Sheet:**
https://docs.google.com/spreadsheets/d/1TPcpk23hPPYjrtuYV4D9f6N85fcnYCrXm6zj_xmEpwQ/edit?gid=0#gid=0

## Overview

This repository contains three scripts that assist in analyzing and processing hospital sensor simulations using a Python-based data engine. These scripts are designed to manage directory setup, file permissions, data analysis, and log archiving.

## Project Objective

As a team of DevOps engineers, our responsibilities include:

* Securing and managing hospital sensor data
* Controlling access to sensitive log files
* Analyzing critical health and facility metrics
* Archiving completed logs safely
* Maintaining continuous system operation

The Python data engine generates:

* Heart rate sensor data
* Temperature sensor data
* ICU water usage sensor data

## Environment Setup

### 1. Clone the Repository

```bash
git clone https://github.com/fiacredev/group-coding-lab
cd group-coding-lab
```

### 2. Start the Hospital Data Engine

```bash
python3 hospital_system.py start
```

### 3. Stop the Engine

```bash
python3 hospital_system.py stop
```

## Team Responsibilities

| Member               | Responsibility           |
| -------------------- | ------------------------ |
| @fiacredev           | Directory Initialization |
| @ihirwe-promis       | Security Permissions     |
| @jogeya17            | Script Orchestration     |
| @allan-kotana        | Log Archiving            |
| @nissi15             | Critical Vitals Analysis |
| @execxel             | Water Usage Audit        |

## Technologies Used

* Basic Shell
* Linux Commands
* Git & GitHub

## Conclusion

This project provides a reliable solution for handling medical sensor data while ensuring the continuous operation of the hospital monitoring system.
