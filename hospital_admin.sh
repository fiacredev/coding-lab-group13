#!/bin/bash

# initialize_system — create log directories if missing
initialize_system() {
    if [ -d "active_logs" ]; then
        echo "active_logs already exists"
    else
        echo "Creating active_logs directory..."
        mkdir active_logs
    fi

    if [ -d "archived_logs" ]; then
        echo "archived_logs already exists"
    else
        echo "Creating archived_logs directory..."
        mkdir archived_logs
    fi

    if [ -d "reports" ]; then
        echo "reports already exists"
    else
        echo "Creating reports directory..."
        mkdir reports
    fi
}

# secure_data — owner-only access on active_logs
secure_data() {
    echo "Securing medical log data..."

    if [ -d "active_logs" ]; then
        chmod 700 active_logs
        echo "Permissions updated successfully."
        echo "Updated permissions:"
        ls -l active_logs
        ls -ld active_logs
    else
        echo "ERROR: active_logs directory not found."
    fi
}

# run setup in order and confirm completion
initialize_system
secure_data
echo "System Environment Secured — $(date)"
