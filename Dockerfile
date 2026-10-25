FROM python3 as base
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
EXPOSE 8000
CMD init.sh && python 3 manage.py runserver 0.0.0.0:8000

