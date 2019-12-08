FROM tsutomu7/scientific-python

RUN pip install ortoolpy==0.2.27 networkx==2.4 && \
    rm -rf $HOME/.c*
EXPOSE 8888
VOLUME $HOME
COPY typical.zip /tmp/
CMD ["sh", "-c", "unzip /tmp/typical.zip && jupyter notebook --ip=*"]
