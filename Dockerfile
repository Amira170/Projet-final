FROM python:3.6-alpine
WORKDIR /opt
RUN pip install flask==1.1.2
COPY . /opt/
EXPOSE 8080
ENV ODOO_URL="https://odoo.com" PGADMIN_URL="https://pgadgmin.org"
ENTRYPOINT [ "python", "./app.py" ]
