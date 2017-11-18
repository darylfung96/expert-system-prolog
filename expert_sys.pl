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
rule(( meetup_location(student_organization) :-
	hobby(socialize), TODO), 100).

%%%%%%%%%%%%%%%%%%

%hobby%
rule(( hobby(music) :-
	personality_type(self_improving),  TODO), 100).
rule(( hobby(studying) :-
	personality_type(self_improving),  TODO), 100).
rule(( hobby(studying) :-
	personality_type(artistic),  TODO), 100).
rule(( hobby(music) :-
	personality_type(artistic),  TODO), 100).
rule(( hobby(socialize) :-
	personality_type(extravert),  TODO), 100).
rule(( hobby(socialize) :-
	personality_type(self_improving),  TODO), 100).
rule(( hobby(socialize) :-
	personality_type(spontaneuous),  TODO), 100).

%%%%%%%%%%%%%%%%%%

%personality_type%
rule(( personality_type(self_improving) :-
	person_description(independent),  TODO), 70).
rule(( personality_type(self_improving) :-
	person_description(curiousity),  TODO), 90).
rule(( personality_type(self_improving) :-
	person_description(consistent),  TODO), 90).
rule(( personality_type(artistic) :-
	person_description(curiousity),  TODO), 100).
rule(( personality_type(artistic) :-
	person_description(innovative),  TODO), 100).
rule(( personality_type(extravert) :-
	person_description(energetic),  TODO), 100).
rule(( personality_type(extravert) :-
	person_description(independent),  TODO), 100).
rule(( personality_type(spontaneuous) :-
	person_description(enthusiastic),  TODO), 100).
rule(( personality_type(spontaneuous) :-
	person_description(energetic),  TODO), 100).

%%%%%%%%%%%%%%%%%%


%person_description%
rule(( person_description(independent) :-
	TODO,  TODO), 100).
%
rule(( person_description(curiousity) :-
	TODO,  TODO), 100).
%
rule(( person_description(innovative) :-
	TODO,  TODO), 100).
%
rule(( person_description(enthusiastic) :-
	TODO,  TODO), 100).
%
rule(( person_description(consistent) :-
	TODO,  TODO), 100).
%


%%%%%%%%%%%%%%%%%%%%%


askable(like improving).
askable(like_learning).
askable(relaxing_environment).
askable(preferable_drinking_settings).
askable(like_dancing)
