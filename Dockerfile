FROM centos/ruby-22-centos7
USER default
EXPOSE 8080
ENV RACK_ENV production
ENV RAILS_ENV production
#COPY . /opt/app-root/src/
RUN scl enable rh-ruby22 "bundle install"
CMD ["scl", "enable", "rh-ruby22", "./run.sh"]

USER root
RUN chmod og+rw /opt/app-root/src/db
#RUN sed -i "s/atom/test/" /opt/app-root/src/webhook
USER default
