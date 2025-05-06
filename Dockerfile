FROM python:3.11

# 1. Створюємо користувача
RUN useradd -m myuser

# 2. Підготовка директорії та права доступу
RUN mkdir -p /app \
 && chown -R myuser:myuser /app

WORKDIR /app

# 3. Встановлюємо залежності як root
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# 4. Копіюємо весь код із правами myuser
COPY --chown=myuser:myuser . /app

# 5. Перемикаємося на myuser
USER myuser

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
