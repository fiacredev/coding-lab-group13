!#/bin/bash

secure_data() {

echo "securing medical log data"

if [ -d "active_logs" ]; then
	chmod 700 active_logs

	echo "permissions have been updated successfully"
	echo "Updated Permission: "
	ls -ld active_logs
else
	echo "ERROR: active_logs directory is not found here"
fi
}
