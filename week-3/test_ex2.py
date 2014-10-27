import os, sys
sys.path.insert(0, os.path.abspath('..'))
import test

if __name__ == '__main__':
	test.test('22668', '3', test.two)
