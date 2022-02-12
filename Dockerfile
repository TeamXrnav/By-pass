FROM ryoishin/cyborg:debian

RUN git clone https://github.com/TeamXrnav/Cyborg.git /root/cyborg

WORKDIR /root/cyborg

RUN pip3 install -U -r requirements.txt

ENV PATH="/home/cyborg/bin:$PATH"

CMD ["python3", "-m", "cyborgbot"]
