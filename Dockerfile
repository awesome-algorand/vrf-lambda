FROM public.ecr.aws/lambda/nodejs:20

RUN dnf install git-all gcc gcc-c++ make automake tar -y

COPY index.js ${LAMBDA_TASK_ROOT}
COPY package.json ${LAMBDA_TASK_ROOT}

RUN npm install

CMD [ "index.handler" ]

