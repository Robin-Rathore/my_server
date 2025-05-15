FROM ubuntu:22.04

WORKDIR /app

# Copy your precompiled binary (make sure it's executable)
COPY server .

# Give executable permission (just in case)
RUN chmod +x server

EXPOSE 9909

CMD ["./server"]
