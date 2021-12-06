:- initialization(main).
:- set_prolog_flag(double_quotes,chars).

anti_unification(Term0, Term1, Term) :-
        (   Term0 == Term1 -> Term = Term1
        ;   Term0 =.. [F|F0], Term1 =.. [F|F1], maplist(anti_unification,F0,F1,C), Term =.. [F|C]
        ;   Term0 \== Term1
        ).
        
main :- anti_unification(3<6,5<6,C),writeln(C).
