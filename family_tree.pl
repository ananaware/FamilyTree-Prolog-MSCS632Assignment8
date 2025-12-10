/* 
 MSCS 632 - Advanced Programming Languages
 Assignment 8: Family Tree in Prolog
 Student: Anushka Nanaware
 Date: December 10 2025

 Description:
 This program defines a simple family tree using Prolog.
 It includes:
 - Basic relationships (parent, male, female)
 - Derived relationships (grandparent, sibling, cousin)
 - Recursive logic for descendants
*/
/* Basic Family Facts */

% Parent relationships
parent(john, mary).
parent(john, david).
parent(susan, mary).
parent(susan, david).

parent(mary, lily).
parent(mary, sam).

parent(david, ryan).
parent(david, mia).

% Gender information
male(john).
male(david).
male(sam).
male(ryan).

female(susan).
female(mary).
female(lily).
female(mia).
/* Derived Family Relationships */

% Grandparent: X is grandparent of Y if X is parent of Z and Z is parent of Y
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Sibling: X and Y are siblings if they share the same parent and are not the same person
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Cousin: X and Y are cousins if their parents are siblings
cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2).

% Descendant: recursive definition
descendant(X, Y) :-
    parent(Y, X).   % base case

descendant(X, Y) :-
    parent(Z, X),   % recursive case
    descendant(Z, Y).
