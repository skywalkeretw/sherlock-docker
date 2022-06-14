FROM python:3

RUN apt update && \
    apt upgrade -y && \
    apt install git -y

RUN git clone https://github.com/sherlock-project/sherlock.git

WORKDIR /sherlock

RUN python3 -m pip install -r requirements.txt

ENTRYPOINT ["python3", "sherlock"]