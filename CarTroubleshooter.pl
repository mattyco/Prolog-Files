
help :-
write('   Car Starter Troubleshooting system.'),nl,
write('   Please enter yes or no for all questions followed by a fullstop.'), nl.

startercranks(yes).
starterspins(yes).
enginefires(yes).
cleanedterminals(yes).
battery12v(yes).
sparktoplugs(yes).
fueltofilter(yes).
fuelinjected(yes).

startercranks?(X) :- startercranks(X),
                      write("Engine Fires?"),nl,
                      read(Query),enginefires?(Query)
                      ; \+ startercranks(X),
                        write("Starter Spins?"),nl,
                        read(Query),starterspins?(Query).

main :- write("CAR NOT STARTING TROUBLESHOOTER."),nl,
        write("starter cranks?"),nl,
        read(Query),
        startercranks?(Query).

enginefires?(X) :- enginefires(X),write("there is nothing wrong with the car."),nl,nl,halts
                    ; \+ enginefires(X),write("Spark to Plugs?"), nl,
                    read(Query),sparktoplugs?(Query).

starterspins?(X) :- starterspins(X), write("Solenoid stuck,not powered. Missing teeth on Flywheel. Visit a Mechanic."),nl,nl,halts
                    ; \+ starterspins(X), write("Battery reads over 12V?"), nl,
                    read(Query),battery12v?(Query).

battery12v?(X) :- battery12v(X), write("Cleaned Terminals?"), nl,
                  read(Query), cleanedterminals?(Query)
                  ; \+ battery12v(X), write("Jumpstart car and check if battery is charging."), main.

cleanedterminals?(X) :- cleanedterminals(X), write("with car in park, use screwdriver to bypass solenoid. Test starter."),main
                        ; \+ cleanedterminals(X), write("clean battery terminals and try again"),nl,nl,main.

sparktoplugs?(X) :- sparktoplugs(X), write("Fill fuel and try again."), nl, write("fuel to filter?"),nl,
                    read(Query), fueltofilter?(Query)
                    ; \+ sparktoplugs(X), write("Clean Carburettor and try again"),nl,nl,main.

fueltofilter?(X) :- fueltofilter(X),write("Fuel Injected?"),nl,
                    read(Query),fuelinjected?(Query)
                    ; \+ fueltofilter(X),write("Vapour lock, fuel pump blockage. Visit a Mechanic"), nl,nl,halts.

fuelinjected?(X) :- fuelinjected(X),write("Electronic multipoint problem. Visit a Mechanic."),nl,nl,halts
                    ; \+ fuelinjected(X), write("Try starter spray in Carburettor and try again."),main.

halts :- write("Stopping Execution"),nl,nl,
        write("==================================================================================================================").