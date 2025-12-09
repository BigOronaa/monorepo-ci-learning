const greet = require('./index');
test('service-c greet', () => {
  expect(greet()).toBe('Hello from Service C!');
});
