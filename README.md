# anti_unification
 Anti-unification in Prolog
 
    :- initialization(main).
    :- set_prolog_flag(double_quotes,chars).

    :- use_module(anti_unification).

    main :- anti_unification(3<6,5<6,C),writeln(C).