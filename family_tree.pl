% Assignment 8: Building a Family Tree in Prolog
% Facts: parent(Parent, Child), male(Person), female(Person).
:- discontiguous male/1.
:- discontiguous female/1.
male(george).
female(helen).
male(john).
female(linda).
female(mary).
male(paul).
female(alice).
male(bob).
female(carol).
male(david).
female(eva).
female(emma).
male(tom).
male(finn).

parent(george, john).
parent(helen, john).
parent(george, linda).
parent(helen, linda).
parent(john, alice).
parent(mary, alice).
parent(john, bob).
parent(mary, bob).
parent(linda, carol).
parent(paul, carol).
parent(linda, david).
parent(paul, david).
parent(bob, emma).
parent(eva, emma).
parent(carol, finn).
parent(tom, finn).

% Derived relationships.
child(Child, Parent) :- parent(Parent, Child).
grandparent(Grandparent, Child) :-
    parent(Grandparent, Parent),
    parent(Parent, Child).
sibling(X, Y) :-
    parent(SharedParent, X),
    parent(SharedParent, Y),
    dif(X, Y).
cousin(X, Y) :-
    parent(ParentX, X),
    parent(ParentY, Y),
    sibling(ParentX, ParentY),
    dif(X, Y).

% Recursive rule: direct child (base case) or child of a descendant.
descendant(Descendant, Ancestor) :-
    parent(Ancestor, Descendant).
descendant(Descendant, Ancestor) :-
    parent(Ancestor, Intermediate),
    descendant(Descendant, Intermediate).
