FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    libboost-all-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Compile the C++ server
RUN g++ -o server server.cpp -lpthread

# Expose the port the server runs on
EXPOSE 3001

# Command to run the server
CMD ["./server"]