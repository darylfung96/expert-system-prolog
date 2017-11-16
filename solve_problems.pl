:-include('exshell').

% top level, starts search.
rule(( solve_problems(Advice) :-
	complexity(Y, X), solution(Y, X, Advice) ), 100).

%%%rules to know what complexity is the problem%%%
rule(( complexity(complex, X) :-
	problem_type(complex_problem, X), problem_range(extremely_broad)), 100).
rule(( complexity(complex, X) :-
	problem_type(complex_problem, X), problem_range(broad) ), 80).
rule(( complexity(intermediate, X) :-
	 problem_type(intermediate_problem, X), problem_range(medium) ), 100).
rule(( complexity(basic, X) :-
	 problem_type(basic_problem, X), problem_range(small) ), 100).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

%%%rules to know what type of problem it is%%%
%complex
rule(( problem_type(complex_problem, X) :-
	 trainable, problem_specific(ai_related, X) ), 100).
rule(( problem_type(complex_problem, X) :-
	 problem_specific(game_theory, X), perfect_information ), 90).
rule(( problem_type(complex_problem, X) :-
	 problem_specific(game_theory, X), not(perfect_information) ), 100).
%intermediate
rule(( problem_type(intermediate_problem, X) :-
	 problem_specific(logic, X),  use_frameworks ), 100).				%TODO
rule(( problem_type(intermediate_problem, X) :-
	problem_specific(, X), ), 100).										%TODO
%basic
rule(( problem_type(basic_problem, X) :-
	 problem_specific(sort, X), small_size), 100).
rule(( problem_type(basic_problem, X) :-
	 problem_specific(sort, X), not(small_size) ), 90).
rule(( problem_type(basic_problem, X) :-
	 problem_specific(search, X), sorted), 100).
rule(( problem_type(basic_problem, X) :-
	 problem_specific(search, X), not(sorted) ), 90).
rule(( problem_type(basic_problem, X) :-
	 problem_specific(store, X), has_storage), 100).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%problem specific%%%
rule(( problem_specific(ai_related, high_dimension) :-
	  high_dimension_input, gpu_programming ), 100).
rule(( problem_specific(ai_related, high_dimension) :-
	  high_dimension_input, cpu_programming ), 60).
%
rule(( problem_specific(ai_related, low_dimension) :-
	  big_data,  ), 100).

%%%%%%%%%%%%%%%%%%%%%%%%


%solutions
rule(solution())



%askable descriptions
askable(trainable).
askable(high_dimension_input).
askable(gpu_programming).

askable(problem_range(X)).

askable(perfect_information).

askable(limited_time).
askable(group_work).
askable(multiple_server).
askable(recursion).
askable(research_available).

askable(sorted).
askable(has_storage).
askable(use_frameworks).
askable(lots_of_experience).
