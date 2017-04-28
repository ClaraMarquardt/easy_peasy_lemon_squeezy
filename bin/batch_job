#----------------------------------------------------------------------------#

# title: batch_job
# description: submit batch mode job (LFS Job Scheduler / Custom Config)
# sample usage: ..

batch_job(){
	path=$(pwd)
	script_name=${path}/${1}
	output_name_default=${path}/${1}out
	output_name=${3:-${output_name_default}}

	mem_res_default=10000
	mem_res=${2:-${mem_res_default}}
	mem_limit=500000

	echo "script: ${script_name}"
	echo "output: ${output_name}"
	echo "mem res: ${mem_res}"
	echo "queue: big-multi"
	echo "job name: ${1}"

	bsub -q big-multi -M ${mem_limit} -R "rusage[mem=${mem_res}]" -J ${1} R CMD BATCH \
		${1} ${output_name}

	eval $'bjobs -l | grep "R CMD" --context=4 --after-context=8 | tr '\''\n'\'' '\'' '\''  \
		| sed '\''s/ \{3,\}//g'\'' | grep -o  "[^ ]*\\.R[^o][^\\.]*\\.Rout"'


}

#----------------------------------------------------------------------------#

