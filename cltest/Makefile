TARGET=cltest

all: clean build

clean:
	rm -rf $(TARGET)

build:
	go build -o $(TARGET) main.go access.go

test:
	go test