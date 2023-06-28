# Menggunakan base image node 14-alpine 
FROM node:14-alpine

# Working directory didalam container
WORKDIR /app

# Menyalin semua file dan folder di local working directory ke dalam container working directory
COPY . .

# Menginstall dependencies yang diperlukan 
RUN npm install

# Ekspos port yang digunakan untuk menjalankan shipping service
EXPOSE 3001

# Command pada terminal container untuk menjalankan shipping service
CMD ["npm", "start"]