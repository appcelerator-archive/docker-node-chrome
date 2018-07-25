FROM cypress/browsers:chrome67
LABEL name="node8-chrome"

# Install Yarn
RUN set -xe \
    && wget -q -O - https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y yarn

# Log versions
RUN set -x \
    && node -v \
    && npm -v \
    && yarn -v \
    && google-chrome --version
