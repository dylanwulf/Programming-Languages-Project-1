Project 1 - Clojure Implementation
(Dylan Wulf & Evan Zodl)

File List:
- nofiveweekends.clj
- readme.txt

Running the program:
1) Navigate to https://www.codechef.com/ide
2) Select "CLOJ (Clojure x.x)" from the dropdown box
3) Paste the nofiveweekends.clj code into the text editor
4) Click "Run" to execute the program
5) The results will be output below the text editor

Objective:
- Write a program to show all the years between 2000 and 2100 that do not have a month with five weekends.
- Implement the solution in Ada, C#, Clojure and Ruby.

Positive/Negative Features:
P - The program works without fail for the specific date range (2000-2100).
  - Efficient algorithm that can be applied to other date ranges
N - Limited customizability since the user is not prompted to input the date range
      - Date range can be changed by identifying/updating the constants in the code
        - To do so, the user must know the day of the week of the starting year
        ex: 1/1/2000 was a Saturday, so we begin by inputting 6 into the program
  - Limited user interaction with the program
  
Implementation:
- Implementing our solution to this problem in four different languages was a great learning experience.
- Some languages were more straightfoward than others, which made for an interesting challenge.
- The syntax of Ada and Clojure were most difficult to adapt to.

The Algorithm:
- First implementation: Since it is only possible to have 5 weekends in a 31-day month beginning on a Friday,
  this made the calculations much more straightforward. We simply checked the first day of all 31-day months
  within the specified date range to determine which years have 5 weekends.
  
- Second implementation: After implementing the previous solution in all four languages, we came up with a more efficient solution. Instead of checking all 31 day months between 2000-2100, we thought to instead find the starting day of each year and base our calculations on that information. This was done by iterating through the years within the date range (as in the previous algorithm). This proved to be a much more efficient solution which reduced the amount of code significantly.

Methods:
- nextYearFirstDay() - determines which day of the week the next year starts on
- hasNoFiveWeekends() - determines if a year does not have a month with 5 weekends
