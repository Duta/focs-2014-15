import requests, subprocess, os

asgnmt_id = '22075'
assignment_folder = 'exercise-1'
assignment_name = 'wk2ex1'
assignment_file = assignment_folder+'/'+assignment_name+'.ml'
hash_file = assignment_name+'_hash'

def ensure_file(file, message):
	if not os.path.exists(file):
		print(message)
		exit()

ensure_file(assignment_file, 'Missing file '+assignment_file)
ensure_file('ex1_run.cmo', 'Missing the test harness')
subprocess.call('cp '+assignment_file+' .', shell=True)
subprocess.call('cp '+assignment_file+'i .', shell=True)
subprocess.call(' '.join([
	'ocamlfind',
	'ocamlc',
	'-o e1',
	'-linkpkg -package str,quickcheck',
	'bench_common.cmo',
	'bench.cmo',
	'ex1_test.cmo',
	'wk2ex1.mli',
	'wk2ex1.ml',
	'ex1_run.cmo'
]), shell=True)
subprocess.call('./e1', shell=True)
subprocess.call('rm -rf '+assignment_name+'.* e1', shell=True)

ensure_file(hash_file, '\nIt appears that your code failed the test, above should be information regarding the failed result(s).')

print('Congratulations, your code passed the automated tests.')

token = raw_input('Please enter your Canvas authentication token:\n')
with open(hash_file, 'r') as key_content:
 	key = key_content.read()
payload = {'access_token':token, 'submission[submission_type]':'online_text_entry', 'submission[body]':key}
submit = requests.post('https://birmingham.instructure.com/api/v1/courses/9775/assignments/'+asgnmt_id+'/submissions', params = payload)
info = submit.json()
if 'errors' in info.keys():
 	print(info['errors'])
else:
	print('Success')

subprocess.call('rm -rf '+hash_file, shell=True)

