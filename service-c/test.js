const greet = require('./index');

test('service-c greet function', () => {
  expect(greet()).toBe('Hello from Service C!');
});
