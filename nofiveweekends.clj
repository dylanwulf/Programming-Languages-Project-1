(ns projectOneClojureV2)

(def isLeapYear 0)
(def numDaysInYear 365)
(def startYear 2000)
(def endYear 2100)
(def day 1)
(def dayOfWeek 6)
(def fiveWeekends 0)
(def currentDay 1)

;;Function to check if x is a leap year
(defn checkLeapYear [currentYear] (

   if (= (mod currentYear 4) 0)

     (do
       (def numDaysInYear 366) ;; is a leap year
       (def isLeapYear 1)
       )

     (do
       (def numDaysInYear 365) ;; not a leap year
       (def isLeapYear 0)
       )))

(checkLeapYear startYear)


(def currentYear)

(loop [currentYear 2000]
  (when (<= currentYear endYear)

    (checkLeapYear currentYear) 
    (def fiveWeekends 0)

    ;; loop through the days of the year
    (loop [currentDay 1]
      (when (<= currentDay numDaysInYear)
        ;;(print currentDay)

          ;;Check if 5 weekends should be true
          (cond

            (and (= dayOfWeek 5)(= fiveWeekends 0)(= isLeapYear 1)
                 (or (= currentDay 1)(= currentDay 61)(= currentDay 122)
                 (= currentDay 183)(= currentDay 214)(= currentDay 275)
                 (= currentDay 336))) (def fiveWeekends 1)

            (and (= dayOfWeek 5)(= fiveWeekends 0)(= isLeapYear 0)
                 (or (= currentDay 1)(= currentDay 60)(= currentDay 121)
                 (= currentDay 182)(= currentDay 213)(= currentDay 274)
                 (= currentDay 335))) (def fiveWeekends 1)
            )

          (cond
            (= dayOfWeek 7)(def dayOfWeek 1)
            (= dayOfWeek 6)(def dayOfWeek 7)
            (= dayOfWeek 5)(def dayOfWeek 6)
            (= dayOfWeek 4)(def dayOfWeek 5)
            (= dayOfWeek 3)(def dayOfWeek 4)
            (= dayOfWeek 2)(def dayOfWeek 3)
            (= dayOfWeek 1)(def dayOfWeek 2)
          )

        ;;(println " + Day: " dayOfWeek)

          (cond (and (= currentDay 365) (= fiveWeekends 0)) (print  currentYear "," ))
            (recur (+ currentDay 1))))
    (recur (+ currentYear 1))))
