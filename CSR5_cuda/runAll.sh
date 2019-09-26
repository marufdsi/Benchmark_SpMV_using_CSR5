for filename in input/* 
do 
	echo "Run on Matrix: ${filename}"
	qsub -q copperhead -N "spmv_gpu" -l nodes=$1:ppn=$2:gpus=$3  -v in=${filename} -d $(pwd) run.sh
done
