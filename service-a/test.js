const greet = require('./index');
test('service-a greet', () => {
  expect(greet()).toBe('Hello from Service A!');
});
