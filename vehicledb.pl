help :-

  write('Commands:'),nl,

  write('    character(X,Y,Z)'),nl,

  write('    X-> Object'),nl,

  write('    Y-> Property'),nl,

  write('    Z -> Value'),nl.


vehicle(car).
vehicle(autorickshaw).
vehicle(truck).
vehicle(train).
vehicle(van).
vehicle(bus).
vehicle(motorycle).
vehicle(cycle).
vehicle(ship).
vehicle(boat).
vehicle(aeroplane).

attribute(car,travelson,road).
attribute(autorickshaw,tavelson,road).
attribute(truck,travelson,road).
attribute(train,travelson,rails).
attribute(van,travelson,road).
attribute(bus,travelson,road).
attribute(motorycle,travelson,road).
attribute(cycle,travelson,road).
attribute(ship,travelson,water).
attribute(boat,travelson,water).
attribute(aeroplane,travelson,air).

attribute(car,wheels,4).
attribute(autorickshaw,wheels,3).
attribute(truck,wheels,4).
attribute(train,wheels,4).
attribute(cycle,wheels,2).
attribute(motorcycle,wheels,2).
attribute(aeroplane,wheels,3).

attribute(autorickshaw,colour,yellow).
attribute(aeroplane,colour,blue).
attribute(car,colour,green).
attribute(motorcycle,colour,black).
attribute(boat,colour,white).
attribute(ship,colour,grey).
attribute(truck,colour,brown).
attribute(van,colour,red).
attribute(cycle,colour,pink).

attribute(car,passengers,4).
attribute(bus,passengers,8).
attribute(cycle,passengers,2).
attribute(motorcycle,passengers,2).
attribute(autorickshaw,passengers,3).
attribute(van,passengers,3).

attribute(car,mileage,40).
attribute(autorickshaw,mileage,50).
attribute(truck,mileage,5).
attribute(train,mileage,81).
attribute(van,mileage,35).
attribute(bus,mileage,30).
attribute(motorycle,mileage,91).
attribute(cycle,mileage,idk).
attribute(ship,mileage,50).
attribute(boat,mileage,70).
attribute(aeroplane,mileage,1000).


isa(ashokleyland,bus).
isa(maruti800,car).
isa(marutiRitz,car).
isa(hondaaccord,car).
isa(toyotaavalon,car).
isa(lexuslx570,car).
isa(riorivera,boat).
isa(formula34cruiser,boat).
isa(toyotainnova,car).
isa(paganiHuyra,car).

character(Object,Property,Value) :- vehicle(Object),attribute(Object,Property,Value).
character(Object,Property,Value) :- isa(Object,Type),vehicle(Type),attribute(Type,Property,Value).




