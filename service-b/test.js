const greet = require('./index');
test('service-b greet', () => {
  expect(greet()).toBe('Hello from Service B!');
});
