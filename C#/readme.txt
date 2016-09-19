Project 1 - C# Implementation
(Dylan Wulf & Evan Zodl)

Objective:
Write a program to show all the years between 2000 and 2100 that do not have a month with five weekends (Friday, Saturday, and Sunday).
The solution will be implemented in Ada, C#, Clojure and Ruby.

Project Description:
This program displays a list of years (between 2000 and 2100) which do not
have a month with 5 weekends (Friday, Saturday, and Sunday)..

Running the program:
1) Navigate to https://www.codechef.com/ide
2) Select "C# (Gmcs x.xx)" from the dropdown box
3) Paste the nofiveweekends.cs code into the text editor
4) Click "Run" to execute the program
5) The results will be output underneath the text editor]

User Information:
The user is not prompted to input any data, so they are unlikely to run into any significant
problems while running the programs. The date range can easily be changed from within the code
(by simply identifying the constants), but it is important to know the first day of the week
of the first year in that range. The number of the day (0-6) is an inportant value used for the algorithm.
For example, January 1, 2000 was a Saturday, so we begin by inputting 6 into the program.

Positive/Negative Features:
P - The program works without fail for the specific date range (2000-2100).
N - The user is not prompted for the date range, so customizability is limited

The Algorithm:
Since it is only possible to have 5 weekends in a 31-day month beginning on a Friday, this made the calculations much more straightforward.
We took this into consideration while coding our first solution. However, after implementing this solution in all four languages, we came up with a more efficient solution.
Instead of checking all 31 day months between 2000-2100, we thought it would be more efficient to find the starting day of the year and base our calculations on that piece of information.
This proved to be a much simpler solution which reduced the amount of code significantly.

Implementation:
Implementing our solution to this problem in four different languages was a great learning experience.
Some languages were more straightfoward (C# and Ruby) than others (Ada and Clojure), which made for an interesting challenge.
