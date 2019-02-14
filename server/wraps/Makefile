TARGET=wraps

all: clean build

clean:
	rm -rf $(TARGET)

build:
	go build -o $(TARGET) wraps.go
	./wraps > crud.go