#----------------------------------------------------------------------------#

# title: down
# description: download list of files (based on file pattern) from 
# remote using scp
# sample usage: down temp* # download all files starting with 'temp'

down (){
	
	# identify files
	file_list=${1}
	echo ${file_list}

	#create temp folder
	system_date=$(date +%Y%m%d%H%M%S)
	mkdir ${system_date}_zip_folder_temp

	# move to folder
	cp ${file_list} ${system_date}_zip_folder_temp/

	# zip folder
	zip -r ${system_date}_zip_folder_temp.zip ${system_date}_zip_folder_temp

	# download
	it2dl ${system_date}_zip_folder_temp.zip

	# remove folder
	rm ${system_date}_zip_folder_temp.zip
	rm -r ${system_date}_zip_folder_temp
}

#----------------------------------------------------------------------------#

