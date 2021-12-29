# Веб-сайт "Кулинарная книга"
Сайт направлен на эксплуатацию людьми, заинтересованных кулинарией. Имеет обширный функционал, который обеспечивает комфортное пользование. 
![image](https://user-images.githubusercontent.com/57214464/147603242-ca254829-c7e4-4cbc-9b24-262e1bf32f0d.png)

# Использованные инструменты для разработки:

1. SQLite.
2. Django/Python.
3. HTML.
4. CSS.
5. Boostrap.
6. Сторонние библиотеки: smtplib, pathlib, os, и многое другое.

# Имеющийся функционал сайта:
1. Регистрация с подтверждением на почте.
2. Авторизация.
3. Добавление собственных рецептов(с возможностью изменять и удалять свои).
4. Просмотр подробной информации рецепта.
5. Комментирование записей(с возможностью удаления и редактирования).
6. Добавление рецептов в избранное.
7. Отображение в шапке профиля добавленнных личных рецнптов.
8. Просмотр личного профиля.
9. Выставление рейтинга любому рецепту.
10. Расширенный функционал администратора(удаление/редактирование любых рецептов и комментариев).
11. Сброс пароля с подтверждением на почту.
12. Изменение личных данных.
13. Поиск рецептов по фильтрам.

# Настройка и выгрузка сайта на Docker [Windows]
1. Для того, чтобы ваш сайт запускался на Docker - для начала необходимо зарегестрироваться на DockerHub, создать в нём репозиторий. Далее, установить Docker Desktop и WSL. (Без WSL ваш Docker не запустится.)
2. Для данного проекта необходимо для начала настроить Dockerfile, который необходимо разместить в папку с проектом.(см. файл Dockerfile). Стоит обратить внимание на EXPOSE и текстовый файл requirements.txt. Важно установить EXPOSE, иначе можно столкнуться с проблемой ERR_EMPTY_RESPONSE, т.к. код будет выполняться только во внутренней части. В requirements прописываем библиотеки. Это необходимо для записи в Docker. 
3. Необходимо создать файл Docker-compose. В моём случае используется безсерверная СУБД SQLite, и её указывать в данном файле не нужно. Указываем версию компоса, команду запуска с локальным адресом, порты((внешний/внутренний) Очень важно указать два порта. Для этого и нужен был EXPOSE, о котором говорили в п. 2. В таком случае проблем не возникнет). Разместим файл в отдельную папку, или же переместим в папку с проектом, как удобнее.
4. Используем команду *docker build -t liorkinn/cookbook:v1 .*. Она нужна для того, чтобы задать "версию" в Docker.

      ![image](https://user-images.githubusercontent.com/57214464/147605126-c9606289-7e9d-4669-9066-38b1cb544093.png)

5. Используем команду *docker image ls для просмотра*.
6. Используем *docker push liorkinn/cookbook:v1* для выгрузки компонентов на v1.
![image](https://user-images.githubusercontent.com/57214464/147605544-9fb52423-4dd3-4d35-8cd3-c2f466b34531.png)
7. Т.к. наш compose файл создан(см. файл docker-compose.yml) - Необходимо перейти в директорию с данным файлом(cd ../ и cd Путь) и прописать следующие команды: *docker-compose up -d* и *docker-compose up*. Мы начинаем запуск приложения. Открывается 127.0.0.1:8000, и сайт нам доступен.

![image](https://user-images.githubusercontent.com/57214464/147606004-14fb58a2-ae74-492a-866b-d9ca040352db.png)
![image](https://user-images.githubusercontent.com/57214464/147606030-7f660447-4b25-467a-b2ea-7da6beaab182.png)

# Настройка и выгрузка сайта на Docker [Linux]
1. set -a
2. source .env
3. docker-compose up -d
4. docker-compose up

![image](https://user-images.githubusercontent.com/57214464/147620258-2d270072-f373-42d0-9134-3c984f5c6e62.png)




