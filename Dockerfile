FROM lambci/lambda:build-nodejs8.10

WORKDIR /awscodesuite

COPY package.json ./
COPY yarn.lock ./

RUN npm install yarn --no-package-lock

ENV PATH="/awscodesuite/node_modules/.bin:${PATH}"

RUN yarn install --pure-lockfile

ENTRYPOINT ["/bin/bash"]
