teaches_subject(t1,math).

teaches_subject(t2,math).

teaches_subject(t3,dsa).

teaches_subject(t4,ppl).

teaches_subject(t5,dld).

teaches_subject(t6,dtl).

 

has_subject(math_dept,math).

has_subject(comp_dept,dsa).

has_subject(comp_dept,ppl).

has_subject(comp_dept,dtl).

 

 

has_student(comp_dept,s1).

has_student(comp_dept,s2).

 

 

has_faculty(D,F) :- teaches_subject(F,S) , has_subject(D,S).

studies_subject(ST,SB) :- has_student(D,ST) , has_subject(D,SB).

studies_under(S,F) :- has_subject(D,SB) , has_student(D,S) , teaches_subject(F,SB).

 

 

 

 

| ?- ['college.pl'].

compiling C:/Users/Aarya/Desktop/college.pl for byte code...

C:/Users/Aarya/Desktop/college.pl compiled, 18 lines read - 2815 bytes written, 5 ms

 

(15 ms) yes

| ?- has_subject(comp_dept,X).

 

X = dsa ? a

 

X = ppl

 

X = dtl

 

(16 ms) yes

| ?-

.

uncaught exception: error(syntax_error('user_input:2 (char:1) expression expected'),read_term/3)

| ?- has_subject(math_dept,X).

 

X = math

 

yes

| ?- a

.

uncaught exception: error(existence_error(procedure,a/0),top_level/0)

| ?- studies_under(X,t3).

 

no

| ?- studies_under(t3,X).

 

no

| ?- has_student(comp_dept,X).

 

X = s1 ? a

 

X = s2

 

yes

| ?- has_faculty(comp_dept,X).

 

no

| ?- ['college.pl'].

compiling C:/Users/Aarya/Desktop/college.pl for byte code...

C:/Users/Aarya/Desktop/college.pl compiled, 18 lines read - 2815 bytes written, 5 ms

 

yes

| ?- has_faculty(comp_dept,X).

 

no

| ?- ['college.pl'].

compiling C:/Users/Aarya/Desktop/college.pl for byte code...

C:/Users/Aarya/Desktop/college.pl compiled, 18 lines read - 2815 bytes written, 5 ms

 

yes

| ?- has_faculty(comp_dept,X).

 

no

| ?- ['college.pl'].

compiling C:/Users/Aarya/Desktop/college.pl for byte code...

C:/Users/Aarya/Desktop/college.pl compiled, 18 lines read - 2815 bytes written, 4 ms

 

yes

| ?- has_faculty(comp_dept,X).

 

no

| ?- ['college.pl'].

compiling C:/Users/Aarya/Desktop/college.pl for byte code...

C:/Users/Aarya/Desktop/college.pl compiled, 18 lines read - 2815 bytes written, 4 ms

 

(15 ms) yes

| ?- has_faculty(comp_dept,X).

 

no

| ?- studies_subject(s1,X).

 

no

| ?- ['college.pl'].

compiling C:/Users/Aarya/Desktop/college.pl for byte code...

C:/Users/Aarya/Desktop/college.pl compiled, 19 lines read - 2769 bytes written, 5 ms

 

yes

| ?- has_faculty(comp_dept,X).

 

X = t3 ? a

 

X = t4

 

X = t6

 

yes

| ?- studies_subject(s1,X).

 

no

| ?- ['college.pl'].

compiling C:/Users/Aarya/Desktop/college.pl for byte code...

C:/Users/Aarya/Desktop/college.pl:20: warning: singleton variables [F] for studies_under/2

C:/Users/Aarya/Desktop/college.pl compiled, 19 lines read - 2671 bytes written, 34 ms

 

yes

| ?- studies_subject(s1,X).

 

X = dsa ? a

 

X = ppl

 

X = dtl

 

no

| ?- studies_subject(s2,X).

 

X = dsa ? a

 

X = ppl

 

X = dtl

 

yes

| ?- studies_under(s1,X).

 

no

| ?- ['college.pl'].

compiling C:/Users/Aarya/Desktop/college.pl for byte code...

C:/Users/Aarya/Desktop/college.pl compiled, 19 lines read - 2690 bytes written, 4 ms

 

yes

| ?- studies_under(s1,X).

 

X = t3 ? a

 

X = t4

 

X = t6
