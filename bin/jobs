#----------------------------------------------------------------------------#

# title: jobs_short and jobs
# description: Display list of running jobs (LFS Job Scheduler/Custo Config)
# sample usage: ..

alias jobs_short='bjobs -l | grep "R CMD" --context=4 --after-context=8 | \
	tr '\''\n'\'' '\'' '\''  | sed '\''s/ \{3,\}//g'\'' | grep -o  \
	"[^ ]*\\.R[^o][^\\.]*\\.Rout" | grep -o  "[^ ]*\\.R[^o]"'

alias jobs='bjobs -l | grep "R CMD" --context=4 --after-context=8 | \
	tr '\''\n'\'' '\'' '\''  | sed '\''s/ \{3,\}//g'\'' | grep -o  \
	"[^ ]*\\.R[^o][^\\.]*\\.Rout"'

#----------------------------------------------------------------------------#
