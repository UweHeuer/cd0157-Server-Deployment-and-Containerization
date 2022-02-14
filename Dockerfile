# image source
FROM  python:stretch

# setup app directory for code
COPY . /app
WORKDIR /app

# upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# define entrypoint
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]