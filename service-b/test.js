const greet = require('./index');

test('service-b greet function', () => {
  expect(greet()).toBe('Hello from Service B!');
});
