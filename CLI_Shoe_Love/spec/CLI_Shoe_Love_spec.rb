RSpec.describe CLIShoeLove do
  it "has a version number" do
    expect(CLIShoeLove::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  context "ShoeType" do
  describe "#type" do
      it "returns an array of shoe types" do
        shoe = ShoeType.new
        expect(shoe.type).to eq(["Pumps", "Sandals", "Booties", "Flats"])
      end
    end
end

context "Scraper" do 
  describe "#black_shoes" do 
    it "displays web page in HTML format" do 
    end
  end
end

end