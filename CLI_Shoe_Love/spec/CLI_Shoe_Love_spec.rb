RSpec.describe CLIShoeLove do
  it "has a version number" do
    expect(CLIShoeLove::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  context "ShoeType" do
  describe "#type" do
      it "return an array of shoe types" do
        expect(ShoeType.type).to eq(["Pumps", "Sandals", "Booties", "Flats"])
      end
    end
end
end