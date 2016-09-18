//Code written and compiled using the online compiler at http://rextester.com/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Rextester
{
    public class Program
    {
        public static void Main(string[] args)
        {
            
            bool isLeapYear;
            int numDaysInYear = 365; 
            int startYear = 2000;
            int endYear = 2100;
            int day = 1; //Start at 1st day of the year
            int dayOfWeek = 6; // Jan 1, 2000 was a Saturday
            
            
            //Increment the year
            for(int i = startYear; i <= endYear; i++){
                bool fiveWeekends = false;
                
                //Leap year (adjust number days)
                if(i%4 == 0){
                    numDaysInYear = 366;
                    isLeapYear = true;
                }
                
                //Non-leap year
                else{
                    numDaysInYear = 365; 
                    isLeapYear = false;
                }
                
                //Increment the day
                for (int j = day; j < numDaysInYear + 1; j++){
                    
                    //Check if any 31-day month starts with Friday
                    //Below are the numbers of the days that start 31 day months
                    if((j == 1 || j == 61 || j == 122 || j == 183 || j == 214 ||  j == 275 || j == 336)
                        && dayOfWeek == 5 && isLeapYear && !fiveWeekends){
                        fiveWeekends = true;
                    }
                    
                    if((j == 1 || j == 60 || j == 121 || j == 182 || j == 213 || j == 274 || j == 335)
                        && dayOfWeek == 5 && !isLeapYear && !fiveWeekends){
                        fiveWeekends = true;
                    }
                    
                    //Restart the counter after Sunday
                    if(dayOfWeek == 7){
                        dayOfWeek = 1;
                    }
                    
                    else{
                        dayOfWeek++;
                    }             
                    
                    //Print the results in a list
                    if(j == 365 && !fiveWeekends){
                        Console.Write(i + ", ");
                    }
                }  
            }
        }
    }
}
