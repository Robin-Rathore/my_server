
#!/bin/bash

# Build the C++ server
g++ -o server server.cpp -lpthread

# Start the server with the PORT environment variable
./server