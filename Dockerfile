FROM ruby:3.0

WORKDIR /opt

COPY . /opt

RUN bundle install

EXPOSE 4567

CMD ruby omejdn.rb & sleep 5 && ruby /opt/scripts/create_test_token.rb exampleClient /opt/keys/key.pem