with Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Strings, Ada.Strings.Unbounded, Ada.Strings.Unbounded.Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Strings, Ada.Strings.Unbounded, Ada.Strings.Unbounded.Text_IO;

procedure noFiveWeekends is
    type DAYS_OF_WEEK is (Sun, Mon, Tue, Wed, Thu, Fri, Sat);

    firstDayOfYear : DAYS_OF_WEEK := Sat; --Jan 1, 2000 was a Saturday
    startYear : constant Integer := 2000;
    endYear : constant Integer := 2100;
    yearsWithoutFiveWeekends : Unbounded_String;
    isLeapYear : Boolean;

    --Function to calculate which day of the week a given day is
    --Input is the number day in the year, output is the day of the week
    function whichDayOfWeek(day: in Integer) return DAYS_OF_WEEK is
        result : Integer;
    begin
        result := (day + DAYS_OF_WEEK'Pos(firstDayOfYear) - 1) mod 7;
        return DAYS_OF_WEEK'Val(result);
    end whichDayOfWeek;

begin
    for year in startYear .. endYear
    loop
        --Only 31-day months which start on Friday can possibly have five weekends
        --So we check the first day of each 31-day month to see if it is a Friday
        --These numbers are different depending on whether it is a leap year or not
        isLeapYear := year mod 4 = 0;
        if isLeapYear = True then
            if whichDayOfWeek(1) /= Fri and
               whichDayOfWeek(61) /= Fri and
               whichDayOfWeek(122) /= Fri and
               whichDayOfWeek(183) /= Fri and
               whichDayOfWeek(214) /= Fri and
               whichDayOfWeek(275) /= Fri and
               whichDayOfWeek(336) /= Fri
               then
                yearsWithoutFiveWeekends := yearsWithoutFiveWeekends & Integer'Image(year);
            end if;
            --Now we set the first day of the year to the day after the last day
            --of the current year. This is 367 for a leap year, or 366 for a normal year.
            firstDayOfYear := whichDayOfWeek(367);
        else
            if whichDayOfWeek(1) /= Fri and
               whichDayOfWeek(60) /= Fri and
               whichDayOfWeek(121) /= Fri and
               whichDayOfWeek(182) /= Fri and
               whichDayOfWeek(213) /= Fri and
               whichDayOfWeek(274) /= Fri and
               whichDayOfWeek(335) /= Fri
               then
                yearsWithoutFiveWeekends := yearsWithoutFiveWeekends & Integer'Image(year);
            end if;
            firstDayOfYear := whichDayOfWeek(366);
        end if;
    end loop;
    Trim(yearsWithoutFiveWeekends, Both); --Trim the whitespace on the sides
    Put(yearsWithoutFiveWeekends); --Finally print the output
end noFiveWeekends;
