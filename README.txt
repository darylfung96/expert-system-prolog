Describe the problem domain and all significant choices/simplifications make in design of systems

This system is designed to recommend places to meet people based on their personality or what they like. The system will ask questions and based on the users' answers, it is able to recommend a place for the users to meet people. The design of this system is to ask what the hobby of the user is and based on what the user's hobby is we can usually determine their personality. The significant choices that the system asked for the environment that the user like so that the problem domain can be reduced to some amount. The other significant choices that can  determine the location to meet up is what the user like. For instance, if the user likes reading, it would most probably recommend library to the user. If user likes talking, then the system would most probably recommend them to go to either the bar, or student organization. Some simplifications decided to use in this system is that the system is separated into 4 layers with the first one as the recommended location, the following ones as the person's approximated hobby, type of personality, and description for the type of personality. Based on the person's personality, the system will try and approximate the person's hobby and from there, the system will ask a little bit more questions and determine the recommended meet up location for the user.


Answer for the solve() predicates:
1. It means that any valid goal will start off with a 100 certainty.
2. If a goal is true, then its certainty will be 100.
3. If a goal is false, then its certainty will be -100.
4. If goal is not true, we will change the cutoff_context and try to prove it false, and set the current certainty factor as negation to the certainty factor returned from proving it false.
5. It calculates the certainty that two events (A,B) would happen and we get the minimum of all the certainty(C,C1,C2) because its a conjunction rule and make sure that both the certainty for A and the certainty for B is above 0.2.
6.
7. It makes sure that there is a rule for this goal, and that the certainty for this rule is above 0.2.
8.
