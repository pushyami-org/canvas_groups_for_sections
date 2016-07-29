FROM ubuntu:16.04
MAINTAINER Pushyami Gundala <pushyami@umich.edu>

RUN apt-get update \
	&& apt-get install -y python python-pip git 
#WORKDIR /usr/local/
#RUN git clone https://github.com/pushyamig/canvas_groups_for_sections cgs
#RUN git checkout TLCGS-5
#WORKDIR /usr/local/cgs/
#RUN pwd
#RUN ls


# create place for app to run from
WORKDIR /app/
COPY . /app/
RUN pip install -r requirements.txt	

#CMD ["python","counter.py"]
#CMD "/bin/sh"
CMD ./run.sh
