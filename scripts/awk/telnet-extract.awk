#!/bin/awk -f

BEGIN {}

{
	split($0,a,","); 
	if (a[2] == char) { 
		print "ip="a[1]; 
		print "hostname="a[2]; 
		print "user="a[3]; 
		print "password="a[4]
	}
}
