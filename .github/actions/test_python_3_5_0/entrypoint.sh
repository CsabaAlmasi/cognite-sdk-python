#!/bin/bash
echo "'---Installing dependencies---'"
python3 -m pip install --upgrade pip
pip3 install -r core-requirements.txt
echo "'---Running tests---'"
python3 -m pytest tests/tests_unit -m 'not dsl' --test-deps-only-core