#!/bin/bash

# Clinical Analyst: critical vitals from heart rate and temperature logs
process_vitals() {
    echo "Processing critical vital signs..."

    mkdir -p reports
    > reports/critical_alerts.txt

    grep "CRITICAL" active_logs/heart_rate_log.log \
        | awk -F'|' '{
            gsub(/^ +| +$/, "", $1)
            gsub(/^ +| +$/, "", $2)
            gsub(/^ +| +$/, "", $3)
            print $1 "," $2 "," $3
        }' \
        >> reports/critical_alerts.txt

    grep "CRITICAL" active_logs/temperature_log.log \
        | awk -F'|' '{
            gsub(/^ +| +$/, "", $1)
            gsub(/^ +| +$/, "", $2)
            gsub(/^ +| +$/, "", $3)
            print $1 "," $2 "," $3
        }' \
        >> reports/critical_alerts.txt

    echo "Critical alerts saved to reports/critical_alerts.txt"
}

# water audit function gonna be next
