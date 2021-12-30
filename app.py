from subprocess import Popen, PIPE, check_output
from flask import Flask

def get_shell_script():
    session = Popen(['./script.sh'], stdout=PIPE, stderr=PIPE)
    stdout, stderr = session.communicate()
    if stderr:
        raise Exception("Error"+str(stderr))
    return stdout.decode('utf-8')

def get_check_output():
    stdout = check_output(['./script.sh']).decode('utf-8')
    return stdout

app = Flask(__name__)

@app.route('/', methods=['GET',])
def home():
    return '<pre>'+get_check_output()+'</pre>'

app.run(debug=True)