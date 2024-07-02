# Go image
FROM golang:1.22.4

# Set the working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum files to the working directory
COPY go.mod .

# Download all dependencies. 
RUN go mod download

# Copy the source code to the working directory
COPY . .

# Build the Go application
RUN go build -o main .

# Expose the ports the application will run on
EXPOSE 8081
EXPOSE 8082

# Command to run the Go application
CMD ["./main"]
