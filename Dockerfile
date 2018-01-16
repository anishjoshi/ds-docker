FROM ubuntu:16.04

RUN apt-get update

# install useful system tools and libraries
RUN apt-get install -y libfreetype6-dev && \
    apt-get install -y libglib2.0-0 \
                       libxext6 \
                       libsm6 \
                       libxrender1 \
                       libblas-dev \
                       liblapack-dev \
                       gfortran \
                       libfontconfig1 --fix-missing

RUN apt-get install -y	tar \
                    	git \
                   	    curl \
                    	nano \
                    	wget \
                    	dialog \
                    	net-tools \
                    	build-essential\
                    	python-tk

# install Python and pip package manager
RUN apt-get install -y python \
                       python-dev \
                       python-distribute \
                       python-pip

RUN pip install --upgrade pip

# intall useful and/or required Python libraries to run your script
RUN pip install matplotlib \
                seaborn \
                pandas \
                numpy \
                scipy \
                sklearn \
                python-dateutil \
                gensim

RUN mkdir -p /root/.config/matplotlib/
RUN echo "backend : Agg" >> /root/.config/matplotlib/matplotlibrc

# define command to when Docker container starts
WORKDIR /mnt
ENTRYPOINT ["python"]
CMD ["first.py"]
