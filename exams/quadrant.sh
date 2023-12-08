#!/bin/bash

echo -n "Please enter value for X: " 
read X


echo -n "Please enter value for Y: " 
read Y


if [ $X -gt 0 ] && [ $Y -gt 0 ]; then 
	
        echo =================================
        echo "  Point belongs to 1st quadrant"
        echo =================================

elif  [ $X -lt 0 ] && [ $Y -gt 0 ]; then

        echo =================================
        echo "  Point belongs to 2st quadrant"
        echo =================================

elif  [ $X -lt 0 ] && [ $Y -lt 0 ]; then

        echo =================================
        echo "  Point belongs to 3st quadrant"
        echo =================================

elif  [ $X -gt 0 ] && [ $Y -lt 0 ]; then 
	
        echo =================================
        echo "  Point belongs to 4st quadrant"
        echo =================================

elif [ $X -eq 0 ] && [ $Y -eq 0 ]; then

        echo =================================
        echo "  Point lies at origin"
        echo =================================

fi
