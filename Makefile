all: clean build run

clean:
	rm -rf .build/

build:
	swift build -Xcc -fblocks

run:
	./.build/debug/Towns-Api
