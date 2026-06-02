<<<<<<< HEAD
!#/bin/bash

secure_data() {

echo "securing medical log data"

if [ -d "active_logs" ]; then
	chmod 700 active_logs

	echo "permissions have been updated successfully no issue"
	echo "Updated Permission: "
	ls -ld active_logs
else
	echo "ERROR: active_logs directory is not found here"
fi
}
=======
#!/bin/bash

# Creating the initialise_system ()

initialise_system () {

# -- Checking and creating acitve_logs 	
	if [ -d "active_logs" ]; then
		echo "active_logs already exists"

	else "Creating active_logs directory --------"
		mkdir active_logs
	fi

# -- Checking and creating archived_logs
	if [ -d "archived_logs" ]; then
		echo "archived_logs already exists"

	else "Creating archived_logs direcotry ------"
		mkdir archived_logs
	fi

# -- Checking and creating reports
	if [ -d "reports" ]; then
		echo "reports already exists"

	else " Creating reports directory -----"
		mkdir reports

	fi 

}



	
>>>>>>> c0a97245c1592ab0ecc5be6e8c27e3b2bdbc8673
