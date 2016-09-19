(ns nofiveweekends)

;;Method to determine which day of the week the next year
;;starts on given the first day of the current year and
;;whether or not it is a leap year
(defn nextYearFirstDay [currentDayFirstYear, isLeapYear] (

   if (= isLeapYear 1)

     (do ;;366 days if leap year
        (def firstDay (mod (+ currentDayFirstYear 366) 7)))

     (do ;;365 days if normal year
       (def firstDay (mod (+ currentDayFirstYear 365) 7)))))

;;Method to determine if a year does not have a month
;;with 5 weekends. This only happens on leap years that
;;start on a Sunday and normal years that start on Monday
(defn hasNoFiveWeekends [isLeapYear, firstDayOfYear] (
                                                       
   if (or (and (= firstDayOfYear 0) (= isLeapYear 1))
          (and (= firstDayOfYear 1) (= isLeapYear 0)))
                                                       
     (do
        (def noFiveWeekends 1))
                                                       
     (do
        (def noFiveWeekends 0))))


;;declare the year range constants
(def startYear 2000)
(def endYear 2100)

;;Sunday is 0, Monday is 1, Tuesday is 2, etc.
(def firstDayOfYear 6);;Jan 1, 2000 was a Saturday
(def isLeapYear)


;; loop through the specified year range
(loop [startYear 2000]
  (when (<= startYear endYear)

  (def isLeapYear)

  ;;Check if current year is a leap year
  (if (= (mod startYear 4) 0)

    (do
      (def isLeapYear 1))

    (do
      (def isLeapYear 0)))
    

  (def noFiveWeekends 2)
  
  (hasNoFiveWeekends isLeapYear firstDayOfYear)

  ;;Print all non-five weekend years
  (if (= noFiveWeekends 1)

    (do
      (print startYear ", ")))

 (nextYearFirstDay firstDayOfYear isLeapYear)
 (def firstDayOfYear firstDay)
 
 (recur (+ startYear 1))))
