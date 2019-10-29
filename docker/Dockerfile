FROM lambci/lambda:build-nodejs10.x

WORKDIR /awscodesuite

COPY package.json ./
COPY yarn.lock ./

RUN npm install yarn --no-package-lock
ENV PATH="/awscodesuite/node_modules/.bin:${PATH}"

RUN yarn install --pure-lockfile

ENTRYPOINT ["/bin/bash"]
