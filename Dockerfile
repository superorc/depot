FROM depot:tst

RUN gem install bundler -v 1.10.6 --norc

RUN mkdir web && cd web && git clone https://github.com/superorc/depot.git

RUN cd web/depot && bundle install

#RUN cd web/depot && rails s
