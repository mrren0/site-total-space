# Используем минимальный официальный nginx образ
FROM nginx:stable-alpine

# Удаляем дефолтную страницу
RUN rm -rf /usr/share/nginx/html/*

# Копируем собранный сайт (папку target) в nginx
COPY target /usr/share/nginx/html

# Открываем 80 порт (если нужно, но nginx сам слушает 80)
EXPOSE 80

# Стартуем nginx
CMD ["nginx", "-g", "daemon off;"]
