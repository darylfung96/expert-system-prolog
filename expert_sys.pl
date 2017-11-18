:-include('exshell').

rule(( meet_people(Advice) :-
	meetup_location(Y), solution(Y, Advice) ), 100).

%meetup_location%

% if hobby(music) && environment(relax)
% then meetup_location(gym)
rule(( meetup_location(gym) :-
	hobby(music),  environment(relax)), 100).
% if hobby(nature) && environment(relax) && environment(nature)
% then meetup_location(beach)
rule(( meetup_location(beach) :-
	hobby(nature),  environment(relax), environment(nature)), 100).
%if hobby(studying) && environment(relax) && !environment(loud)
%then meetup_location(library)
rule(( meetup_location(library) :-
	hobby(studying),  environment(relax), not(environment(loud)) ), 100).
%if hobby(socialize) && environment(loud) && like(dancing)
%then meetup_location(clubs)
rule(( meetup_location(clubs) :-
	hobby(socialize),  environment(loud), like(dancing)), 100).
% if hobby(socialize) && environment(loud) && !like(dancing)
%then meetup_location(bar)
rule(( meetup_location(bar) :-
	hobby(socialize),  environment(loud), not(like(dancing)) ), 100).
% if hobby(socialize) && environment(relax)
%then meetup_location(student_organization)
rule(( meetup_location(student_organization) :-
	hobby(socialize), environment(relax)), 100).

%%%%%%%%%%%%%%%%%%

%hobby%
rule(( hobby(music) :-
	personality_type(self_improving), like(music)), 100).
rule(( hobby(music) :-
	personality_type(artistic),  like(music)), 100).
rule(( hobby(studying) :-
	personality_type(self_improving), like(reading)), 100).
rule(( hobby(studying) :-
	personality_type(artistic),  like(learning)), 100).
rule(( hobby(socialize) :-
	personality_type(extravert), like(talking)), 100).
rule(( hobby(socialize) :-
	personality_type(self_improving), like(talking)), 100).
rule(( hobby(socialize) :-
	personality_type(spontaneuous), like(talking)), 100).
rule(( hobby(nature) :-
	personality_type(artistic), like(nature)), 100).

%%%%%%%%%%%%%%%%%%

%personality_type%
rule(( personality_type(self_improving) :-
	person_description(independent),  openess, ambitious), 100).
rule(( personality_type(self_improving) :-
	person_description(curiousity),  adventurous), 90).
rule(( personality_type(self_improving) :-
	person_description(consistent),  discipline), 100).
rule(( personality_type(artistic) :-
	person_description(curiousity),  ambitious), 100).
rule(( personality_type(artistic) :-
	person_description(innovative),  adventurous), 100).
rule(( personality_type(extravert) :-
	person_description(energetic),  adventurous), 100).
rule(( personality_type(spontaneuous) :-
	person_description(enthusiastic),  go_with_flow), 100).
rule(( personality_type(spontaneuous) :-
	person_description(energetic),  ambitious), 90).

%%%%%%%%%%%%%%%%%%


%person_description%
rule(( person_description(independent) :-
	love_doing_things_yourself), 100).
%
rule(( person_description(curiousity) :-
	eager_to_learn), 100).
%
rule(( person_description(innovative) :-
	like_thinking_new_ideas), 100).
%
rule(( person_description(enthusiastic) :-
	high_interest), 100).
%
rule(( person_description(consistent) :-
	steady, uniform), 100).
%
rule(( person_description(energetic) :-
	active, lively), 100).
%


%%%%%%%%%%%%%%%%%%%%%

askable(relax_environment).
askable(loud_environment).
askable(nature_environment).
askable(environment(X)).

askable(like(X)).

askable(like improving).
askable(like_learning).
askable(preferable_drinking_settings).
askable(like_dancing)
