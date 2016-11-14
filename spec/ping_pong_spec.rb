require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it("creates an array from 1 to the number given") do
    expect(2.ping_pong).to(eq([1, 2]))
  end

  it("replaces every number divisible by 3 with 'ping'") do
    expect(4.ping_pong).to(eq([1, 2, "ping", 4]))
  end

  it("replaces every number divisible by 5 with 'ping'") do
    expect(14.ping_pong).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14]))
  end

  it("replaces every number divisible by 15 with 'ping'") do
    expect(15.ping_pong).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping-pong"]))
  end
end
