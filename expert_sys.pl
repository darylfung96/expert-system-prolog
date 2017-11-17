:-include('exshell').

rule(( meet_people(Advice) :-
	meetup_location(Y), solution(Y Advice) ), 100).

%meetup_location%
rule(( meetup_location(gym) :-
	hobby(music),  TODO), 100).
rule(( meetup_location(beach) :-
	hobby(music),  TODO), 100).
rule(( meetup_location(library) :-
	hobby(studying),  TODO), 100).
rule(( meetup_location(clubs) :-
	hobby(socialize),  TODO), 100).
rule(( meetup_location(bar) :-
	hobby(socialize),  TODO), 100).

%%%%%%%%%%%%%%%%%%

%hobby%
rule(( hobby(music) :-
	personality_type(self_improving),  TODO), 100).
rule(( hobby(studying) :-
	personality_type(self_improving),  TODO), 100).
rule(( hobby(studying) :-
	personality_type(artistic),  TODO), 100).
rule(( hobby(socialize) :-
	personality_type(extravert),  TODO), 100).
rule(( hobby(socialize) :-
	personality_type(self_improving),  TODO), 100).

%%%%%%%%%%%%%%%%%%

%personality_type%
rule(( personality_type(self_improving) :-
	TODO,  TODO), 100).
%
rule(( personality_type(artistic) :-
	TODO,  TODO), 100).
%
rule(( personality_type(extravert) :-
	TODO,  TODO), 100).
%

%%%%%%%%%%%%%%%%%%


askable(like improving).
askable(like_learning).
askable(relaxing_environment).
askable(preferable_drinking_settings).
askable(like_dancing)
