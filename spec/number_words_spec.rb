require('rspec')
require('number_words')

describe('#singles') do
  it("returns word for numbers 1-19")do
    expect(number=Number.new(1).singles()).to(eq("one"))
  end
end

describe('#tens') do
  it("returns word for numbers 20-90")do
    expect(number=Number.new(20).tens()).to(eq("twenty"))
  end
end

describe('#hundreds') do
  it("returns word for numbers 100-900")do
    expect(number=Number.new(100).hundreds()).to(eq("one hundred"))
  end
end

describe('#thousands') do
  it("returns word for numbers 1000-9000")do
    expect(number=Number.new(1000).thousands()).to(eq("one thousand"))
  end
end
