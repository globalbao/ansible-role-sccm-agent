#!/bin/bash
python3 -m venv ansible-venv
source ansible-venv/bin/activate
python -V
pip -V
pip install wheel --quiet
pip install ansible --quiet
pip install ansible-lint --quiet
pip install pywinrm --quiet
pip install requests --quiet
pip install molecule --quiet
pip install molecule-azure --quiet
pip install junit_xml --quiet
pip install yamllint --quiet
