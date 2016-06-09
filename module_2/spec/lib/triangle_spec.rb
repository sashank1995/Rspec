require "spec_helper"
require "triangle"

describe Triangle do
  it "is equilateral" do
    triangle = Triangle.new(1,1,1)
    expect(triangle.type).to eq(:equilateral)
  end
  it "is isoceles" do
    triangle = Triangle.new(2,2,1)
    expect(triangle.type).to eq(:isoceles)
  end
  it "is scalene" do
    triangle = Triangle.new(2,3,4)
    expect(triangle.type).to eq(:scalene)
  end
  it "is invalid" do
    triangle = Triangle.new(2,3,6)
    expect(triangle.type).to eq(:invalid)
  end
end
