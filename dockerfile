FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
VOLUME ["/code/db"]
EXPOSE 8000
CMD ["/bin/sh", "-c", "init.sh && ./init.sh && exec python3 manage.py runserver 0.0.0.0:8000"]
