FROM python:3.8
COPY main.py /
RUN pip3 install fastapi uvicorn 
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8080"]
