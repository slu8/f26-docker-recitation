# specifies the Parent Image from which you are building.
FROM python:3.9

# specify the working directory for the image
WORKDIR /code

# TODO
COPY requirements.txt /code/requirements.txt
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

#copy application code
COPY ./app /code/app

#port
EXPOSE 8080

#univorn fastapi
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
