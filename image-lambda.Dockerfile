FROM public.ecr.aws/lambda/nodejs:16

ENV NODE_ENV=production
ENV NITRO_PRESET=aws-lambda

RUN mkdir /app

WORKDIR /app

COPY package*.json ./

RUN npm ci --silent --omit=dev && npm cache verify

COPY . .

RUN npm run build

RUN mv -v .output/server/* ${LAMBDA_TASK_ROOT}

WORKDIR ${LAMBDA_TASK_ROOT}

CMD ["index.handler"]
