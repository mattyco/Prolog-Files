furniture(chair).
furniture(bookshelf).
furniture(bed).
furniture(desk).
furniture(wadrobe).

window(window1).
window(window2).

corner(corner1,wall1,wall4).
corner(corner2,wall1,wall2).
corner(corner3,wall2,wall3).
corner(corner4,wall3,wall4).

wall(wall1).
wall(wall1).
wall(wall3).
wall(wall4).

near(chair,wall2).
near(chair,wall3).
near(desk,wall2).
near(desk,wall3).
near(bookshelf,wall2).
near(bookshelf,wall1).
near(wadrobe,wall4).
near(bed,wall3).

on(door,wall1).
on(window1,wall3).
on(window2,wall2).

getfurniture(X):-bagof(X,furniture(X),B),write(B).
countfurniture(X):aggregate_all(count,getfurniture(X),Bag).

where(X,Y):-furniture(X),near(X,Y).
at(X,Y):-furniture(Y),near(Y,X).

thingsat(X):-bagof(Y,at(X,Y),thingslst),write(thingslst).

