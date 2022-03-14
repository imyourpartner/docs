# Django Final

## Levantando proyecto desde uno existente

python -m virtualenv server
Seleccionar interprete python.exe
(server) C:\siw>pip install django
(server) C:\siw>pip install djangorestframework
(server) C:\siw>pip install django-cors-headers
(server) C:\siw>pip list
(server) C:\siw>pip freeze
(server) C:\siw\backend>
(server) C:\SW\backend>django-admin startproject api
(server) C:\SW\backend\apps>
(server) C:\SW\backend\apps>django-admin startapp core

---

pip install djangorestframework-simplejwt
pip install mysqlclient
pip install -r requirements.txt
pip install -U autopep8

## Nuevo proyecto

(venv) $ django-admin startproject webapp
(venv) $ cd webapp
(venv) $ python manage.py startapp hrmgmt
(venv) C:\git\e-commerce\backend\api>python manage.py startapp employees ./apps/employees

## Iniciar servidor

(venv) C:\git\otp\backend\api>python manage.py runserver

## deshacer migracion a original

python manage.py migrate acc zero

## deshacer migracion a a x version

python manage.py migrate acc 0003_auto_20210923_091

# Dependecias

yarn add normalize-css
yarn add @fortawesome/fontawesome-free
