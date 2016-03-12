all: build run
build:
	rm -rf .build/
	swift build -Xcc -fblocks
run:
	./.build/debug/Towns-Api
