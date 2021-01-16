# -*- coding: utf-8 -*-
import os
import sys
import numpy
import random
import math
from scipy.stats import exponweib

file1 = open("weibullcdf.txt", "w")
x= 1e-06

num=1
while x <0.1:
	num+=1
	if num%100==0:
		file1.write(str(x)+'\t')
		file1.write(str(exponweib.cdf(x, 100, 0.4, 0, 0.0001))+'\n')
	x+=1e-06
file1.close()
