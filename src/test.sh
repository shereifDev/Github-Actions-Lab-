#!/bin/bash

echo "Compiling app.c..."
gcc src/app.c -o app

echo "Running test..."

OUTPUT=$(./app "Sherif")
EXPECTED="Hello, Sherif!"


if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "✅ Test Passed!"
    exit 0 
else
    echo "❌ Test Failed! Expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi
