#!/usr/bin/ruby 

def whichDayOfWeek(day)
    result = (day + $firstDayOfYear - 1) % 7;
end

$firstDayOfYear = 6; #Jan 1, 2000 was a Saturday
#Sunday is 0, Monday 1, ..., Friday 5, Saturday 6


