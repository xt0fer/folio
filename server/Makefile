TARGET=server

all: clean proto wraps build

clean:
	cd ./cmd
	rm -rf $(TARGET)
	cd ..

proto:
	'cd ./pb && make proto'

wraps:
	'cd ./wraps && make'
	mv ./wraps/crud.go .

build:
	cd ./cmd
	go build -o $(TARGET) main.go
	cd ..
