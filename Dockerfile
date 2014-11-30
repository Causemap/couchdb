FROM klaemo/couchdb

# Update aptitude with new repo
RUN apt-get update

# Install software
RUN apt-get install -y git

ADD CouchDB-XO_Auth /usr/local/lib/couchdb/erlang/lib/xo_auth
ADD local.ini /tmp/local.ini

# get the latest rebar
RUN git clone git://github.com/rebar/rebar.git && \
    cd rebar && \
    ./bootstrap && \
    cp rebar /usr/local/lib/couchdb/erlang/lib/xo_auth/rebar

WORKDIR /usr/local/lib/couchdb/erlang/lib/xo_auth

RUN make
CMD ["couchdb", "-a", "/tmp/local.ini"]
