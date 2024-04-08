def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    array.inject(0, :+)
end

def multiply(a, b)
    a * b
  end
  
  def power(a, b)
    a ** b
  end
  
  def factorial(n)
    n == 0 ? 1 : (1..n).inject(1, :*)
  end
  

  describe "#multiply" do
  it "multiplies two numbers" do
    expect(multiply(3, 4)).to eq(12)
  end

  it "multiplies two other numbers" do
    expect(multiply(2, 5)).to eq(10)
  end

  it "multiplies two other numbers, one of them being 0" do
    expect(multiply(0, 7)).to eq(0)
  end
end

describe "#power" do
  it "raises one number to the power of another number" do
    expect(power(2, 3)).to eq(8)
  end
end

describe "#factorial" do
  it "computes the factorial of 0" do
    expect(factorial(0)).to eq(1)
  end

  it "computes the factorial of 1" do
    expect(factorial(1)).to eq(1)
  end

  it "computes the factorial of 2" do
    expect(factorial(2)).to eq(2)
  end

  it "computes the factorial of 5" do
    expect(factorial(5)).to eq(120)
  end

  it "computes the factorial of 10" do
    expect(factorial(10)).to eq(3628800)
  end
end