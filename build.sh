clear
rm -rf .build/
swift build -Xcc -fblocks
echo "Launching.."
./.build/debug/Towns-Api
