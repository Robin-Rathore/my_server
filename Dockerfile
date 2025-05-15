FROM gcc:13

WORKDIR /app

COPY server.cpp .

RUN g++ server.cpp -o server

EXPOSE 3001

CMD ["./server"]
