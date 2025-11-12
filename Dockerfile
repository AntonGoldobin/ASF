FROM justarchi/archisteamfarm:6.2.2.3

# Установка часового пояса
ENV TZ=Europe/Moscow

# Опционально: Смена пользователя/группы для прав на volume (если нужно)
USER 1000:1000

# Определение volume для конфига (чтобы CapRover подхватил как persistent)
VOLUME /app/config

# Экспоз порта для IPC (ASF-UI)
EXPOSE 1242

# Если нужно переопределить CMD или ENTRYPOINT — добавь здесь (по умолчанию из базового image)
# CMD ["--your-command-if-needed"]