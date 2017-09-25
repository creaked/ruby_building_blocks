require "caesar_cipher"

describe "#caesar_cipher" do
  it "empty string" do
    expect(caesar_cipher("", rand(26))).to eql("")
  end
  
  it "ignore numbers" do
    expect(caesar_cipher("1", rand(26))).to eql("1")
  end
  
  it "ignore white space" do
    expect(caesar_cipher(" ", rand(26))).to eql(" ")
  end
  
  it "ignore special characters" do
    expect(caesar_cipher("!@#$%^&*", rand(26))).to eql("!@#$%^&*")
  end
  
  it "wrap around z" do
    expect(caesar_cipher("z", 1)).to eql("a")
  end
end