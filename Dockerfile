FROM pytorch/pytorch

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENV PYTHONIOENCODING utf-8
ENTRYPOINT ["python", "main.py"]

