FROM alpine

LABEL maintainer="docker-dario@neomediatech.it"

RUN apk update; apk add --no-cache py-pip; pip install --no-cache-dir --upgrade pip; pip install --no-cache-dir pyzor; \
    apk add --no-cache python3; cp -ar /usr/lib/python2.7/site-packages/pyzor* /usr/lib/python3.6/; \
    sed -i 's/\.iteritems/\.items/' /usr/lib/python3.6/pyzor/client.py; \
    rm -rf /usr/local/share/doc /usr/local/share/man; sed -i 's/ xrange(/ range(/' /usr/lib/python3.6/pyzor/digest.py

COPY pyzor/pyzorsocket/pyzorsocket.py /pyzorsocket.py
EXPOSE 5953
CMD ["python3", "./pyzorsocket.py", "0.0.0.0", "5953"]
