require './lib/convert'

RSpec.describe Convert do
  describe '#Meters to miles' do
    subject { Convert.new(1023.45).meters_to_miles }
    it { is_expected.to eq 0.636 }
  end

  describe '#Meters to kilometers' do
    subject { Convert.new(1023.45).meters_to_kilometers }
    it { is_expected.to eq 1.023 }
  end

  describe '#Kilometers to miles' do
    subject { Convert.new(1023.45).kilometers_to_miles }
    it { is_expected.to eq 636.078 }
  end

  describe '#Kilometers to meters' do
    subject { Convert.new(1023.45).kilometers_to_meters }
    it { is_expected.to eq 1_023_450.0 }
  end

  describe '#Miles to meters' do
    subject { Convert.new(1023.45).miles_to_meters }
    it { is_expected.to eq 1_646_731.05 }
  end
  describe '#Miles to kilometers' do
    subject { Convert.new(1023.45).miles_to_kilometers }
    it { is_expected.to eq 1646.731 }
  end
end
