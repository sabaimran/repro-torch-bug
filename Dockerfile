FROM python:3.11

# Copy the requirements file and install the dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the test.py file
COPY test.py .

# Run the file
CMD ["python", "test.py"]
