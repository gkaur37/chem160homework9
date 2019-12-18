#!/bin/bash
[ -f stock_data } && rm stock_data
months=( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec )
for year in 2014 2015; do
	cd $year
	for month in "${months[@]}"; do
		cd $month
		if ls * >/dev/null 2>&1 ; then
			for file in *; do
				echo -n $file " " >> ../../stock_data
			done
		fi 
		cd ..
	done
	cd ..
done
