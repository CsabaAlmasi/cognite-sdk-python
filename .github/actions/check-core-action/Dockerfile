FROM python:3.7.6-stretch

COPY .bashrc /root/.bashrc

ENV PYTHON_3_5=/root/.pyenv/versions/3.5.0/bin/python
ENV PYTHON_3_6=/root/.pyenv/versions/3.6.6/bin/python
ENV PYTHON_3_7=/root/.pyenv/versions/3.7.4/bin/python
ENV PYTHON_3_8=/root/.pyenv/versions/3.8.0/bin/python

ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/bin:$PATH

RUN apt-get update && \
    apt-get purge libssl-dev -y && \
    apt-get install libssl1.0-dev -y && \
    curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash && \
    pyenv install 3.5.0 && \
    pyenv install 3.6.6 && \
    pyenv install 3.7.6 && \
    pyenv install 3.8.0
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]