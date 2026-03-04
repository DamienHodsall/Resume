FROM python:3.13

# Install the application dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy in the src
COPY Damien_Hodsall_CV.yaml ./

# Produce the artifact
RUN rendercv render Damien_Hodsall_CV.yaml
