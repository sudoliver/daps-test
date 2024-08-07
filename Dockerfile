FROM ruby:3.0

WORKDIR /opt

COPY . /opt
COPY config /opt/config
COPY keys/clients /opt/keys/clients

RUN bundle install

EXPOSE 4567

CMD ruby omejdn.rb & sleep 5 && ruby /opt/scripts/create_test_token.rb exampleClient /opt/keys/clients/key.pem