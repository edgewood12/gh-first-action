#!/bin/bash

# Function to report failure
fail() {
    echo "❌ Test Failed: $1"
    exit 1
}

echo "Running tests for add2.sh..."

# Test 1: Standard Addition
result=$(./add2.sh 10 5)
if [[ "$result" == *"15"* ]]; then
    echo "✅ Test 1 Passed: 10 + 5 = 15"
else
    fail "Expected 15, got $result"
fi

# Test 2: Negative Numbers
result=$(./add2.sh -5 2)
if [[ "$result" == *"-3"* ]]; then
    echo "✅ Test 2 Passed: -5 + 2 = -3"
else
    fail "Expected -3, got $result"
fi

# Test 3: Error Handling (Missing Arguments)
# We expect this to fail, so we check if the exit code is non-zero
if ./add2.sh 10 > /dev/null 2>&1; then
    fail "Script should have failed with only one argument"
else
    echo "✅ Test 3 Passed: Error handled for missing arguments"
fi

echo "All tests passed successfully!"
