#-*- coding: utf-8 -*-
'''
Some general utility functions for vim templates.

@author:		Martí Congost
@contact:		marticongost@gmail.com
@since:			February 2006
'''
from time import localtime

def getDate():
	months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
	date = localtime()
	return "%s %d" % (months[date.tm_mon - 1], date.tm_year)

