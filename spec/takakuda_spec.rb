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

  describe '#takk?' do
    it 'Integer is false' do
      expect(1.takk?).to be_falsey
    end
    it 'Any String is false' do
      expect('hoge'.takk?).to be_falsey
    end
    it '"Takakuda" is true' do
      expect('Takakuda'.takk?).to be_truthy
    end
    it 'Array is false' do
      expect([1, 2, 3].takk?).to be_falsey
    end
  end
end
