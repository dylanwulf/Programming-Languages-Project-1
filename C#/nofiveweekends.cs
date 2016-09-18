using System;

public class Test {
    
    //Method to determine which day of the week the next year starts on,
    //given the first day of the current year and whether or not it is a leap year
    public static int nextYearFirstDay(int currentYearFirstDay, bool isLeapYear){
        if (isLeapYear){
           return (366 + currentYearFirstDay) % 7;
        }
        
        else{
            return (365 + currentYearFirstDay) % 7;
        } 
    }
    
    //Method to determine if a year does not have a month with 5
    //weekends. his only happens on leap years that start on a
    //Sunday and normal years that start on a Monday
    public static bool hasNoFiveWeekends(bool isLeapYear, int firstDayOfYear){
        
        if(firstDayOfYear == 0 && isLeapYear){
            return true;   
        }
        else if(firstDayOfYear == 1 && !isLeapYear){
            return true;
        }
        else{
            return false;
        }
    }
        
    //Declare the year range constants
    public const int startYear = 2000;
    public const int endYear = 2100;
   
    //Sunday is 0, Monday is 1, Tuesday is 2, etc.
    public static int firstDayOfYear = 6; //Jan 1, 2000 was a Saturday
    public static bool isLeapYear;
    
    public static void Main(string[] args){
        
        //Loop through the specified year range
        for(int i = startYear; i <= endYear; i++){
            
            //Check if it is a leap year
            isLeapYear = false;
            if(i%4 == 0){
                isLeapYear = true;
            }
            
            //Print out the non-five weekend years
            if(hasNoFiveWeekends(isLeapYear, firstDayOfYear)){
                Console.Write(i + ", ");
            }
                
            firstDayOfYear = nextYearFirstDay(firstDayOfYear, isLeapYear);
        }
    }
}
