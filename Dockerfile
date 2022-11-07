# base image menggunakan node:14-alpine
FROM node:14-alpine
# menjadikan /app sebagai working directory
WORKDIR /app
# COPY semua file ke dalam container
COPY . .
# menambahkan environment NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db
# menginstall dependensi & build aplikasi
RUN npm install --production --unsafe-perm && npm run build
# ekspos port 8080
EXPOSE 8080
# saat container berjalan akan menjalankan npm run start
ENTRYPOINT [ "npm", "start" ]