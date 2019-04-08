FROM python:3.6

ADD requirements.txt /root/
WORKDIR /root
RUN pip install -r requirements.txt

ADD jupyter-config /root/.jupyter
ADD README.md /root/project/

EXPOSE 8888

CMD ["jupyter", "lab", "/root/project"]
