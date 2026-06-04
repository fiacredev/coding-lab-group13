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

water_audit(){
    water_log_file="active_logs/water_usage_log.log"

    if [ ! -f "$water_log_file" ]; then
        echo "No water usage log found."
        return
    fi

    average=$(awk -F' \\| ' '
        $2 == "ICU_WATER_RESERVE" {
            sum += $3
            count++
        }
        END {
            if (count > 0)
                print sum / count
            else
                print 0
        }
    ' "$water_log_file")

}
