# Use Miniconda as the base image
FROM continuumio/miniconda3

# Set the working directory inside the container
WORKDIR /app

# Copy environment.yml to the container
COPY environment.yml .

# Create the Conda environment
RUN conda env create -f environment.yml

# Activate the Conda environment
SHELL ["/bin/bash", "-c"]
RUN echo "conda activate binding-affinity" >> ~/.bashrc
ENV PATH /opt/conda/envs/binding-affinity/bin:$PATH

# Copy the project files into the container
COPY . /app

# Expose Jupyter Notebook port
EXPOSE 8888

# Run Jupyter Notebook when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
