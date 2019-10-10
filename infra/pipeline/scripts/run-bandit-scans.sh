set -e
pip3 install bandit
bandit -r src/**/*.py
