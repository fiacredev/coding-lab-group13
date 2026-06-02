#!/bin/bash

# Creating the initialise_system ()

initialise_system () {

# -- Checking and creating acitve_logs 	
	if [ -d "active_logs" ]; then
		echo "active_logs already exists"

	else "Creating active_logs directory --------"
		mkdir active_logs

# -- Checking and creating archived_logs
	if [ -d "archived_logs" ]; then
		echo "archived_logs already exists"

	else "Creating archived_logs direcotry ------"
		mkdir archived_logs




	
