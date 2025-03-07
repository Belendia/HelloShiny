# Start with the official R base image
FROM rocker/shiny:4.4

# Install system dependencies required for R packages
#RUN apt-get update && apt-get install -y \
#    libcurl4-gnutls-dev \
#    libssl-dev \
#    libxml2-dev \
#    libgdal-dev \
#    libudunits2-dev \
#    libgeos-dev \
#    libproj-dev \
#    && rm -rf /var/lib/apt/lists/*


# Install required R packages
#RUN install2.r --error shinyauthr bslib tidyverse tmap sf bsicons

# Create app directory
RUN mkdir /app

# Set working directory
WORKDIR /app


COPY app.R /app/
#COPY data/ng_data.rds /app/data/


EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/app', host = '0.0.0.0', port = 3838)"]