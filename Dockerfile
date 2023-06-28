# Menggunakan base image node 14-alpine 
FROM node:14-alpine

# Working directory didalam container
WORKDIR /app

# Menyalin semua file dan folder di local working directory ke dalam container working directory
COPY . .

# Menginstall dependencies yang diperlukan 
RUN npm install

# Ekspos port yang digunakan untuk menjalankan order service
EXPOSE 3000

# Command pada terminal container untuk menjalankan order service
CMD ["npm", "start"]