FROM ruby:2.7.2

ENV BUNDLE_DEPLOYMENT=true
ENV BUNDLE_PATH=vendor/bundle
ENV BUNDLER_WITHOUT=development:test

WORKDIR /var/www/app

COPY Gemfile* ./

RUN gem install bundler -v '~> 2' --no-document
RUN bundle install --jobs=4

COPY . /var/www/app

CMD ["bundle", "exec", "puma"]
