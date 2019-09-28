for filename in input/* 
do 
	if [ -f "$filename" ] 
	then 
		echo "Run on Matrix: ${filename}"
		qsub -q copperhead -N "spmv_gpu" -l nodes=$1:ppn=$2:gpus=$3:k80  -v in=${filename},r=$4 -d $(pwd) run.sh
	fi
done
