ARG NODE_VERSION=20.11.1

FROM node:${NODE_VERSION}

WORKDIR /app

COPY . .

RUN npm install -g pnpm
RUN pnpm install --frozen-lockfile

ENV NODE_ENV=production

ENV NUXT_PORT=3000
ENV NITRO_PORT=3000
ENV NITRO_HOST=0.0.0.0
ENV NUXT_HOST=0.0.0.0
# ENV HOST=0.0.0.0

EXPOSE 3000

RUN pnpm run build
CMD ["node", "/app/.output/server/index.mjs"]