# assignment-8-prolog-family-tree
Family Tree implementation in Prolog demonstrating parent, grandparent, sibling, cousin, and recursive descendant relationships using logical inference.
# Assignment 8 - Family Tree in Prolog

A SWI-Prolog knowledge base demonstrating facts, rules, inference, and recursion.

## Run
1. Install SWI-Prolog from https://www.swi-prolog.org/Download.html.
2. Open a terminal in this folder.
3. Run `swipl -s family_tree.pl`.
4. At the `?-` prompt, enter queries, ending each with a period.
5. Exit with `halt.`

## Sample queries
```prolog
setof(Child, parent(john, Child), Children).
% Children = [alice, bob].

setof(S, sibling(alice, S), Siblings).
% Siblings = [bob].

cousin(alice, carol).
% true.

grandparent(george, alice).
% true.

setof(D, descendant(D, george), Descendants).
% Descendants = [alice, bob, carol, david, emma, finn, john, linda].
```

`setof/3` sorts and deduplicates answers; without it, some relationship queries may return repeated results because two people share both parents.
