focs
====

Contains assignments for the UoB FOCS module, 2014-15.

Folder Structure:
-----------------

![Folder Structure](http://i.imgur.com/bg3HRC7.png)

Getting Set Up:
---------------

The first thing you'll need is [git](http://git-scm.com/downloads).

You may well have this installed already. To check, open a terminal and type:

    git --version

If you get a message about 'git' not being found, then you'll need to [install it](http://git-scm.com/downloads).

Start a terminal session, and do the following steps:

 - First, navigate to the folder in which you store your work files:

   `cd path/to/your/work/folder`

 - Next, we download the files:

   `git clone https://github.com/Duta/focs`

 - This will have created a folder called `focs`:

   `cd focs`

Inside `focs` will be files in the structure shown in the above image.

Let's get the week 2's 1st exercise:

    cd week-2/exercise-1

    ocaml gen-skeleton.ml

This will create a new file in the exercise-1 folder called `wk2ex1.ml`.

This looks like this:

```ocaml
open Bench_common;;
(* Write the following function: *)

(* type weekday = Mon | Tue | Wed | Thu | Fri | Sat | Sun *)

(* val int_of_day : weekday -> int *)
let int_of_day day = failwith "Not completed";;
```

This is a starting point for you to complete the exercise.

There will (once they are released - they're very nearly here) be testing scripts too.

Downloading New Assignments:
----------------------------

Very occasionally (okay, every week) you'll be set new assignments.

To download them, make sure you're in the 'focs' folder, and type:

    git pull

This will download any new assignments, making sure you're up to date.

You may also need to do this from time to time if we add or change the test scripts.
