FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/Kimhyuntae9665/pragmatic_copy.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=l0b0nnn7aw=-_l%mer!g&vb8c8p01cl!5)=@y30**a^g)9jy6l" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]