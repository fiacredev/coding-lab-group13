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

# Facility Auditor: average water usage for ICU_WATER_RESERVE
# water_audit() {
#     echo "TODO: Member 6 — implement water_audit() with awk and printf"
# }

# Run analysis on live data in active_logs
mkdir -p reports
process_vitals
water_audit
