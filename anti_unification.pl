:- module(anti_unification, [anti_unification/3]).

anti_unification(Term0, Term1, Term) :-
        (   Term0 == Term1 -> Term = Term1
        ;   Term0 =.. [F|F0], Term1 =.. [F|F1], maplist(anti_unification,F0,F1,C), Term =.. [F|C]
        ;   Term0 \== Term1
        ).
