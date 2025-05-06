# About Myself

## Greetings

Hi, I'm Marta! I created a calendar management system ,which helps people to organise their time 
and create small notes inside some event.I hope that your next days will be 
productive than previous days with Calendario🥰🥰🥰

## Prerequisites

Before you begin, you will need the following tools:

- **Python 3.11**
- **Docker**

## Installation

Follow these steps to install and run the project:

### Clone the Repository

```bash
git clone https://github.com/Marta09le/CALENDARIO.git
```

### Enter the Project Directory
```bash
cd management-system
```

### Build docker image
```bash
docker build -t management-system .
```

### Run docker container
```bash
docker run -d -p 8000:8000 management-system
```
After this, the Calendario will be available at http://localhost:8000.

### Running without Docker
Create and activate venv
```bash
python -m venv venv
```

### Install dependencies
```bash
pip install -r requirements.txt
```

### Perform migrations
```bash
python manage.py makemigrations
```
```bash
python manage.py migrate
```
### Запустити сервер
```bash
python manage.py runserver
```

## Author
Марта Лещишин



