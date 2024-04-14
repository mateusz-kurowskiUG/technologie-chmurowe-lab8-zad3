FROM python

COPY ./app /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "flask", "--app","app", "run", "--port=5000", "--host=0.0.0.0"]
