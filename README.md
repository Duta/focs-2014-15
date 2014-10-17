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

Downloading New Assignments:
----------------------------

Very occasionally (okay, every week) you'll be set new assignments.

To download them, make sure you're in the `focs` folder, and type:

    git pull

This will download any new assignments, making sure you're up to date.

You may also need to do this from time to time if we add or change test scripts.

Installing Python:
------------------

Python is a requirement for the marking script to function.
On the computer you wish to use to upload your assignments you need to have OCaml installed, Python installed and the requests module installed for Python.

The lab machines already contain a copy of Python. To install 'requests' for the marking script to use, please run the following commands on the terminal. 
You can do the same on the virtual machine image.

	git clone git://github.com/kennethreitz/requests.git
	cd requests 
	python setup.py install --user




Testing Assignments:
--------------------

To test your assignments, you need to be in the `week-n` folder (e.g. `week-2`)
in a terminal session, and run the testing script for the exercise you're working on.

As an example, this is how you'd test week 2's 1st exercise:

    cd path/to/your/work/folder/focs/week-2
    python test_ex1.pyc

The output should be self-explanatory. If you pass the test, it will ask you to
generate an access token for canvas, and will upload your file (along with a
hash value used for detecting plagiarism) to canvas.

Please don't try and upload your assignments to canvas manually!
If you do, you'll get a mark of 0.

The list of current testing scripts is:

    focs/week-2/test_ex1.pyc
    focs/week-2/test_ex2.pyc
    focs/week-2/test_prob.pyc

**At the moment, the scripts simply check whether your assignments pass the
tests, and don't upload them to canvas. We will be adding this in the next
couple of days. When we add this, `git pull` (as discussed in "Downloading New
Assignments") to get the updated test scripts.**
