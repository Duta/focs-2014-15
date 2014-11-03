import os, sys
sys.path.insert(0, os.path.abspath('..'))
import test, validator

if __name__ == '__main__':
	test.test('22969', '4', test.two, validator.check_for_illegal_modules)
