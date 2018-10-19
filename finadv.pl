help :-

  write('Commands:'),nl,

  write('    X-> income yearly'),nl,

  write('    Y-> savings account amount'),nl,

  write('    Z-> no of dependents'),nl,

  write('    W-> steady/unsteady'),nl,

  write('    check_income(X,Z,W) returns state of income.'),nl,

  write('    check_savings_account(Y,Z) returns state of the savings account.'),nl,

  write('    investment(X,Y,Z,W) returns what type of investment to make.'),nl,

  write('    invest in stocks in both adequate.'),nl,

  write('    invest in savings if savings is inadequate.'),nl,

  write('    invest in combination if savings is adequate and income is inadequate.'),nl.

savings_account(adequate).
savings_account(inadequate).

income(adequate).
income(inadequate).

investment(stocks).
investment(savings).
investment(combination).

check_income(X,Y,steady) :- X >= (15000+(4000*Y)), write("adequate income "),income(adequate);
				\+ write("inadequate income "),income(inadequate).

check_income(_,_,unsteady) :- write("inadequate income "), \+ income(inadequate).

income(X,Y,steady) :- X >= (15000+(4000*Y)), income(adequate); \+ income(inadequate).

income(_,_,unsteady) :- \+ income(inadequate).


%income(X,Y) :- X < (150000+(4000*Y)), write("inadequate"),income(inadequate).

check_savings_account(X,Y) :- X >= (5000*Y),write("adequate savings "),savings_account(adequate);
						\+ write("inadequate savings "),savings_account(inadequate).

savings_account(X,Y) :- X >= (5000*Y),savings_account(adequate);
						\+ savings_account(inadequate).

investment(_,Y,Z,_) :- not(savings_account(Y,Z)), investment(savings),write("invest in savings").

investment(X,Y,Z,W) :- savings_account(Y,Z), income(X,Z,W),write("invest in stocks"),investment(stocks).

investment(X,Y,Z,W) :- savings_account(Y,Z),\+ income(X,Z,W),write("invest in combination"),investment(combination).
