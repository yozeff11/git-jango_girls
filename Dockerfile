FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY . /code/
VOLUME ["/code/db"]
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["/bin/sh", "-c", "chmod +x init.sh && ./init.sh && exec python3 manage.py runserver 0.0.0.0:8000"]

