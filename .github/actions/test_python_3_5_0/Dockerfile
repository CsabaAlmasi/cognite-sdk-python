FROM python:3.7.6-stretch

COPY .bashrc /root/.bashrc

ENV PYTHON_3_5=/root/.pyenv/versions/3.5.0/bin/python
ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/bin:$PATH

RUN apt-get update && \
    apt-get purge libssl-dev -y && \
    apt-get install libssl1.0-dev -y && \
    curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash && \
    pyenv install 3.5.0 
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]