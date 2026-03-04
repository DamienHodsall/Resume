FROM python:3.13
WORKDIR /usr/local/app

# Install the application dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy in the src
COPY Damien_Hodsall_CV.yaml ./

# Produce the artifact
RUN rendercv render Damien_Hodsall_CV.yaml

# Figure out where my damn pdf is
# RUN pwd; echo; ls; echo; ls rendercv_output; echo; readlink -e rendercv_output/Damien_Hodsall_CV.pdf
