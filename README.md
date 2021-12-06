# anti_unification
This is an implementation of [anti-unification](https://en.wikipedia.org/wiki/Anti-unification_(computer_science)) in Prolog.
 
Given two Prolog terms, this predicate will produce a term that can be unified with both of these terms:
 
    :- initialization(main).
    :- set_prolog_flag(double_quotes,chars).
    :- use_module(anti_unification).

    main :- anti_unification(3<6,5<7,C),writeln(C).
