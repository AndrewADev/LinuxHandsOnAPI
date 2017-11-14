from flask import Flask, request
app = Flask(__name__)


@app.route('/Tasks/1')
def warm_up():
    return 'Congratulations! You made a curl request!\n'


@app.route('/Tasks/2')
def install_script():
    api_key = request.headers.get('X-APIKEY')
    if api_key != 'HMB-ROCKS' and api_key != 'HMBROCKS':
        return 'Unauthorized\n', 403

    fake_install = open("sample_install_script.sh", "r")
    return fake_install.read()


@app.route('/Tasks/3')
def flaky_script():
    flaky = open("long_running_script.sh", "r")
    return flaky.read()
