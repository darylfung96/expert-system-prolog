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

%if personality_type(artistic) && like(nature)
%then hobby(nature)
rule(( hobby(nature) :-
	personality_type(artistic), like(nature)), 100).
%if personality_type(self_improving) && like(music) && ambitious
%then hobby(music)
rule(( hobby(music) :-
	personality_type(self_improving), like(music), ambitious), 100).
%if personality_type(artistic) && like(music) && not(adventurous)
%then hobby(music)
rule(( hobby(music) :-
	personality_type(artistic),  like(music), not(adventurous)), 30).
%if personality_type(self_improving) && like(reading)
%then hobby(studying)
rule(( hobby(studying) :-
	personality_type(self_improving), like(reading)), 100).
%if personality_type(artistic) && like(learning)
%then hobby(studying)
rule(( hobby(studying) :-
	personality_type(artistic),  like(learning)), 80).
%if personality_type(extravert) && like(talking)
%then hobby(socialize)
rule(( hobby(socialize) :-
	personality_type(extravert), like(talking)), 100).
%if personality_type(self_improving) && like(talking)
%then hobby(socialize)
rule(( hobby(socialize) :-
	personality_type(self_improving), like(talking)), 90).
%if personality_type(spontaneuous) && like(talking)
%then hobby(socialize)
rule(( hobby(socialize) :-
	personality_type(spontaneuous), like(talking)), 100).


%%%%%%%%%%%%%%%%%%

%personality_type%

%if person_description(indepenent) && openess && ambitious
%then personality_type(self_improving)
rule(( personality_type(self_improving) :-
	person_description(independent), openess, ambitious), 100).
%if person_description(curiousity) && adventurous
%then personality_type(self_improving)
rule(( personality_type(self_improving) :-
	person_description(curiousity),  adventurous), 90).
%if person_description(consistent) && discipline && not(irregular_person)
%then personality_type(self_improving)
rule(( personality_type(self_improving) :-
	person_description(consistent),  discipline, not(irregular_person)), 90).
%if person_description(curiousity) && ambitious && not(irregular_person)
%then personality_type(artistic)
rule(( personality_type(artistic) :-
	person_description(curiousity),  ambitious, not(irregular_person)), 80).
%if person_description(innovative) && adventurous
%then personality_type(artistic)
rule(( personality_type(artistic) :-
	person_description(innovative),  adventurous), 100).
%if person_description(energetic) && openess
%then personality_type(extravert)
rule(( personality_type(extravert) :-
	person_description(energetic), openess), 85).
%if person_description(energetic) && openess && not(discipline)
%then personality_type(extravert)
rule(( personality_type(extravert) :-
	person_description(energetic), openess, not(discipline)), 70).
%if person_description(enthusiastic) && not that ambitious
%then personality_type(spontaneous)
rule(( personality_type(spontaneuous) :-
	person_description(enthusiastic), not(ambitious)), 50).
%if person_description(enthusiastic) && irregular
%then personality_type(spontaneous)
rule(( personality_type(spontaneuous) :-
	person_description(enthusiastic),  irregular_person), 70).
%if person_description(enthusiastic) && not(openess) && irregular
%then personality_type(spontaneous)
rule(( personality_type(spontaneuous) :-
	person_description(enthusiastic), not(openess), irregular_person), 50).
%if person_description(enthusiastic) && not(ambitious) && irregular
%then personality_type(spontaneous)
rule(( personality_type(spontaneuous) :-
	person_description(enthusiastic), not(ambitious), irregular_person), 40).
%if person_description(energetic) && ambitious
%then personality_type(spontaneous)
rule(( personality_type(spontaneuous) :-
	person_description(energetic),  ambitious, adventurous), 90).

%%%%%%%%%%%%%%%%%%


%person_description%

%if love_doing_things_yourself
%then person_description(independent)
rule(( person_description(independent) :-
	ambitious), 100).
%if eager_to_learn
%then person_description(curiousity)
rule(( person_description(curiousity) :-
	passionate, like(learning)), 100).
%if like_thinking_new_ideas
%then person_description(innovative)
rule(( person_description(innovative) :-
	creative, passionate), 100).
%if like_thinking_new_ideas
%then person_description(innovative)
rule(( person_description(innovative) :-
	creative, not(passionate)), 50).
%if high_interest
%then person_description(enthusiastic)
rule(( person_description(enthusiastic) :-
	passionate), 100).
%if steady && uniform
%then person_description(consistent)
rule(( person_description(consistent) :-
	passionate), 100).
%if not(creative) && discipline
%then person_description(consistent)
rule(( person_description(consistent) :-
	not(creative), discipline), 40).
%if active && lively
%then person_description(energetic)
rule(( person_description(energetic) :-
	passionate), 100).
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
askable(creative).
askable(ambitious).
askable(adventurous).
askable(irregular_person).
askable(discipline).
askable(passionate).
