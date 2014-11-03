import os, sys
sys.path.insert(0, os.path.abspath('..'))
import test, validator

if __name__ == '__main__':
	test.test('22978', '4', test.prob, validator.check_for_illegal_modules)
