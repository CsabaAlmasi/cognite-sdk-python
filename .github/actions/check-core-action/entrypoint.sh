#!/bin/sh -l
pip3 install pipenv
pipenv run pip install -r core-requirements.txt && \
pipenv run pytest tests/tests_unit -m 'not dsl' --test-deps-only-core
