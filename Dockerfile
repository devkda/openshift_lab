
# Base_image arguments are mandatory
ARG base_image=dinsultan/alpine-python3.6

# Dependecies build stage
FROM ${base_image}

ENV PYTHONUNBUFFERED 1

# Add sources
COPY . /code

# Install and build dependecies
RUN pip install --no-cache -r requirements.txt
RUN pip freeze

# Set workdir
WORKDIR /code

# RUN apk del .build-deps

# Set entrypoint and cmd
ENTRYPOINT python main.py
