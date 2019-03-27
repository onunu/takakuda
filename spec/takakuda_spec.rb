require 'takakuda'

RSpec.describe Takakuda do
  it "has a version number" do
    expect(Takakuda::VERSION).not_to be nil
  end

  describe '#to_takk' do
    it 'Integer can be Takakuda' do
      expect(1.to_takk).to eq 'Takakuda'
    end
    it 'String can be Takakuda' do
      expect('hoge'.to_takk).to eq 'Takakuda'
    end
    it 'Array can be Takakuda' do
      expect([1, 2, 3].to_takk).to eq 'Takakuda'
    end

    # OK, all is Takakuda!
  end
end
