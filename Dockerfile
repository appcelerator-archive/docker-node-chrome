FROM cypress/browsers:chrome67
LABEL name="node8-chrome"

# Install Yarn
RUN set -xe \
    && wget -q -O - https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y yarn

# Download Cypress
RUN set -xe \
    && wget -q -O /var/tmp/cypress-3.0.2.zip https://download.cypress.io/desktop/3.0.2?platform=linux64

# Log versions
RUN set -x \
    && node -v \
    && npm -v \
    && yarn -v \
    && google-chrome --version
