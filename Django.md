# Django

## Levantando proyecto desde uno existente

pip install virtualenv
pip install --upgrade pip
python -m venv venv
C:\git\ss>C:\git\ss\venv\Scripts\activate
python -m django --version
pip install django
pip install djangorestframework
pip install djangorestframework-simplejwt
pip install django-cors-headers
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
