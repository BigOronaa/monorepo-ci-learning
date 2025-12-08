const greet = require('./index');

test('service-a greet function', () => {
  expect(greet()).toBe('Hello from Service A!');
});
