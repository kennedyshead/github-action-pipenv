ARG PYTHON_IMAGE_VERSION=3.11.6
FROM python:$PYTHON_IMAGE_VERSION

RUN pip install --upgrade pip \
 && pip install pipenv==2024.3.0 \
 && python --version ; pip --version ; pipenv --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
