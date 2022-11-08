### __Seed builder__
#   Autogenerated commands
#   Add custom commands at the end

FROM python:3.8.10-alpine
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=1
RUN pip install --upgrade pip==22.3
RUN apk update && apk add gcc postgresql-dev postgresql-client python3-dev musl-dev openssh-client libffi-dev tzdata
ENV TZ=America/Mexico_City

# __End autogenerated__
# Include commands after this block
###

COPY requirements.txt .
COPY seed/requirements.txt seed/
RUN pip install -r requirements.txt
COPY . .