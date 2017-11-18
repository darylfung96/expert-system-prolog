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

%if personality_type(self_improving) && like(music)
%then hobby(music)
rule(( hobby(music) :-
	personality_type(self_improving), like(music)), 70).
%if personality_type(artistic) && like(music)
%then hobby(music)
rule(( hobby(music) :-
	personality_type(artistic),  like(music)), 100).
%if personality_type(self_improving) && like(reading)
%then hobby(studying)
rule(( hobby(studying) :-
	personality_type(self_improving), like(reading)), 100).
%if personality_type(artistic) && like(learning)
%then hobby(studying)
rule(( hobby(studying) :-
	personality_type(artistic),  like(learning)), 100).
%if personality_type(extravert) && like(talking)
%then hobby(socialize)
rule(( hobby(socialize) :-
	personality_type(extravert), like(talking)), 100).
%if personality_type(self_improving) && like(talking)
%then hobby(socialize)
rule(( hobby(socialize) :-
	personality_type(self_improving), like(talking)), 100).
%if personality_type(spontaneuous) && like(talking)
%then hobby(socialize)
rule(( hobby(socialize) :-
	personality_type(spontaneuous), like(talking)), 100).
%if personality_type(artistic) && like(nature)
%then hobby(nature)
rule(( hobby(nature) :-
	personality_type(artistic), like(nature)), 100).

%%%%%%%%%%%%%%%%%%

%personality_type%
rule(( personality_type(self_improving) :-
	person_description(independent),  openess, ambitious), 100).
rule(( personality_type(self_improving) :-
	person_description(curiousity),  adventurous), 90).
rule(( personality_type(self_improving) :-
	person_description(consistent),  discipline), 90).
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

%if love_doing_things_yourself
%then person_description(independent)
rule(( person_description(independent) :-
	love_doing_things_yourself), 100).
%if eager_to_learn
%then person_description(curiousity)
rule(( person_description(curiousity) :-
	eager_to_learn), 100).
%if like_thinking_new_ideas
%then person_description(innovative)
rule(( person_description(innovative) :-
	like_thinking_new_ideas), 100).
%if high_interest
%then person_description(enthusiastic)
rule(( person_description(enthusiastic) :-
	high_interest), 100).
%if steady && uniform
%then person_description(consistent)
rule(( person_description(consistent) :-
	steady, uniform), 100).
%if active && lively
%then person_description(energetic)
rule(( person_description(energetic) :-
	active, lively), 100).
%


%%%%%%%%%%%%%%%%%%%%%


%solution%
rule( solution(gym, 'You should meet new people at the gym'), 100).
rule( solution(beach, 'You should meet new people at the beach'), 100).
rule( solution(library, 'You should meet new people at the library'), 100).
rule( solution(bar, 'You should meet new people at the bar'), 100).
rule( solution(club, 'You should meet new people at the club'), 100).
rule( solution(student_organization, 'You should meet new people at a student_organization'), 100).


%%%%%%%%%%%
askable(environment(X)).
askable(like(X)).

askable(openess).
askable(ambitious).
askable(adventurous).
askable(discipline).
askable(go_with_flow).

askable(love_doing_things_yourself).
askable(eager_to_learn).
askable(like_thinking_new_ideas).
askable(high_interest).
askable(steady).
askable(uniform).
askable(active).
askable(lively).
