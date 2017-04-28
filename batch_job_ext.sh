#----------------------------------------------------------------------------#

# title: batch_job_ext
# description: submit batch mode job (LFS Job Scheduler / Custom Config) - 
# extended options
# sample usage: ..

batch_job_ext(){
	

	if echo "${1}" | grep -q "/"; then
		path=$(dirname "${1}")
		filename=$(basename "${1}")
		filename_no_ext=$(basename "${1}" .R)
	else
		path=$(pwd)
		filename=${1}
		filename_no_ext=$(basename "${1}" .R)
	fi 

	script_name=${path}/${filename}
	output_name=${path}/${filename}out
    output_name_1=~/job${filename_no_ext}.out
    output_name_2=~/job${filename_no_ext}.err

	queue_default=big-multi
	queue=${2:-${queue_default}}

	mem_res_default=10000
	mem_res=${3:-${mem_res_default}}

	mem_max_default=100000
	mem_max=${4:-${mem_max_default}}

	core_default=4
	core=${5:-${core_default}}

	echo "job name: ${1}"

	echo "script: ${script_name} ${filename_no_ext}"
	echo "output: ${output_name}"
	echo "output_1: ${output_name_1}"
	echo "output_2: ${output_name_2}"

	echo "queue: ${queue}"

	echo "mem res: ${mem_res}"
    echo "mem max: ${mem_max}"
    echo "core min: ${core}"

    if [ -f ${output_name_1}  ]; then rm ${output_name_1}; fi 
	if [ -f ${output_name_2} ]; then rm ${output_name_2}; fi  
    bsub -o ${output_name_1}  -e ${output_name_2} -n {${core},} -q ${queue} \
    	-M ${mem_max} -R "rusage[mem=${mem_res}]" -J ${1} R CMD BATCH \
		${script_name} ${output_name} 

	sleep 20s 

	## ls
    # mail -s "LSF" marquardt.clara@gmail.com  < ${output_name_1} 

    rm ${output_name_1}
    rm ${output_name_2}

}

#----------------------------------------------------------------------------#

 