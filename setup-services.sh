#!/usr/bin/env bash
set -e

mkdir -p service-a service-b service-c

cat > service-a/index.js <<'JS'
function greet(){ return "Hello from Service A!"; }
module.exports = greet;
JS

cat > service-a/test.js <<'JS'
const greet = require('./index');
test('service-a greet', () => {
  expect(greet()).toBe('Hello from Service A!');
});
JS

cat > service-a/package.json <<'JSON'
{
  "name": "service-a",
  "version": "1.0.0",
  "scripts": {
    "build": "echo Building Service A",
    "test": "jest"
  },
  "devDependencies": {
    "jest": "^30.2.0"
  }
}
JSON

# service-b
cat > service-b/index.js <<'JS'
function greet(){ return "Hello from Service B!"; }
module.exports = greet;
JS

cat > service-b/test.js <<'JS'
const greet = require('./index');
test('service-b greet', () => {
  expect(greet()).toBe('Hello from Service B!');
});
JS

cat > service-b/package.json <<'JSON'
{
  "name": "service-b",
  "version": "1.0.0",
  "scripts": {
    "build": "echo Building Service B",
    "test": "jest"
  },
  "devDependencies": {
    "jest": "^30.2.0"
  }
}
JSON

# service-c
cat > service-c/index.js <<'JS'
function greet(){ return "Hello from Service C!"; }
module.exports = greet;
JS

cat > service-c/test.js <<'JS'
const greet = require('./index');
test('service-c greet', () => {
  expect(greet()).toBe('Hello from Service C!');
});
JS

cat > service-c/package.json <<'JSON'
{
  "name": "service-c",
  "version": "1.0.0",
  "scripts": {
    "build": "echo Building Service C",
    "test": "jest"
  },
  "devDependencies": {
    "jest": "^30.2.0"
  }
}
JSON

echo "Created service-a, service-b, service-c with package.json, index.js, test.js"
echo "Run: git add service-a service-b service-c && git commit -m 'Add services with Jest' && git push"
