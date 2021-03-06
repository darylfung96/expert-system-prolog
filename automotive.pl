%%% Knowledge Base for simple automotive diagnostic expert system.
%%%
%%% This is one of the example programs from the textbook:
%%%
%%% Artificial Intelligence:
%%% Structures and strategies for complex problem solving
%%%
%%% by George F. Luger and William A. Stubblefield
%%%
%%% Corrections by Christopher E. Davis (chris2d@cs.unm.edu)
%%%
%%% These programs are copyrighted by Benjamin/Cummings Publishers.
%%%
%%% We offer them for use, free of charge, for educational purposes only.
%%%
%%% Disclaimer: These programs are provided with no warranty whatsoever as to
%%% their correctness, reliability, or any other property.  We have written
%%% them for specific educational purposes, and have made no effort
%%% to produce commercial quality computer programs.  Please do not expect
%%% more of them then we have intended.
%%%
%%% This code has been tested with SWI-Prolog (Multi-threaded, Version 5.2.13)
%%% and appears to function as intended.

:-include('exshell').

% rule base:

% Top level goal, starts search.
rule((fix_car(Advice) :-
	bad_component(Y), fix(Y,Advice)),100).

% rules to infer bad component:

rule((bad_component(starter) :-
	bad_system(starter_system),lights(come_on)),50).
rule((bad_component(battery) :-
	bad_system(starter_system),not(lights(come_on))),90).
rule((bad_component(timing) :-
	bad_system(ignition_system), not(tuned_recently)),80).
rule((bad_component(plugs) :-
	bad_system(ignition_system),plugs(dirty)),90).
rule((bad_component(ignition_wires) :-
	bad_system(ignition_system), 
	not(plugs(dirty)), tuned_recently),80).

% Rules to infer basic system that failed.

rule((bad_system(starter_system) :-
	not(car_starts), not(turns_over)),90).
rule((bad_system(ignition_system) :-
	not(car_starts), turns_over,gas_in_carb),80).
rule((bad_system(ignition_system) :-
	car_starts, runs(rough),gas_in_carb),80).
rule((bad_system(ignition_system) :-
	car_starts, runs(dies),gas_in_carb),60).

% Rules to make reccommendation for repairs.

rule(fix(starter,'replace starter'),100).
rule(fix(battery,'replace or recharge battery'),100).
rule(fix(timing, 'get the timing adjusted'),100).
rule(fix(plugs, 'replace spark plugs'),100).
rule(fix(ignition_wires, 'check ignition wires'),100).

% askable descriptions

askable(car_starts).
askable(turns_over).
askable(lights(X)).
askable(runs(X)).
askable(gas_in_carb).
askable(tuned_recently).
askable(plugs(X)).
