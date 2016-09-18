#!/usr/bin/ruby 

#Method to determine which day of the week the next year
#will start on, given the first day of the current year and
#whether it is a leap year.
def nextYearFirstDay(currentYearFirstDay, isLeapYear)
    if isLeapYear
        return (366 + currentYearFirstDay) % 7;
    else
        return (365 + currentYearFirstDay) % 7;
    end
end

#Method determines if a year has no five weekends, given
#whether it is a leap year and what day it started on.
#Only leap years that start on Sunday 
#or normal years that start on Monday
#have no five weekends.
def hasNoFiveWeekends(isLeapYear, firstDayOfYear)
    if firstDayOfYear == 0 && isLeapYear == true
        return true;
    elsif firstDayOfYear == 1 && isLeapYear == false
        return true;
    else
        return false;
    end
end

#Sunday is 0, Monday 1, ..., Friday 5, Saturday 6
firstDayOfYear = 6; #Jan 1, 2000 was a Saturday

START_YEAR = 2000;
END_YEAR = 2100; #vars that start with capital letter are constants

yearsWithoutFiveWeekends = Array[];

(START_YEAR .. END_YEAR).each do |year|
    isLeapYear = year % 4 == 0;
    if hasNoFiveWeekends(isLeapYear, firstDayOfYear)
        yearsWithoutFiveWeekends << year #push this year onto the array
    end
    firstDayOfYear = nextYearFirstDay(firstDayOfYear, isLeapYear);
end

puts yearsWithoutFiveWeekends.join(" "); #print all values separated by a space
