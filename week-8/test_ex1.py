import os, sys
sys.path.insert(0, os.path.abspath('..'))
import test, validator

exercise_numbers = {
	"exercise-1": test.one,
	"exercise-2": test.two,
	"problem": test.prob,
}

if __name__ == '__main__':

	assert "exercise-1" in exercise_numbers, "Unknown exercise name."
	testid = exercise_numbers["exercise-1"]

	test.test('24365', '8', testid)
