require_relative "../lib/random_range.rb"

describe "random range" do
  it "100 應回傳介於 0 和 100 之間的數字" do
    expect(0..100).to cover(random_range(100))
    #expect(random_range(100)).to cover(100)
    #expect(random_range(100).to cover(89)
    #expect(0).to cover(random_range(100))
  end    
end