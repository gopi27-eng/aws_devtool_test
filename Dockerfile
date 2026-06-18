FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


COPY . .

#Expose the port that the application will run on port 5000
EXPOSE 5000

#Run the command to start the application
CMD ["python", "app.py"]