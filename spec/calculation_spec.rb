require './lib/calculation'

RSpec.describe Calculation do
  describe '#Do calculate meters to miles' do
    subject { Calculation.new(1, 1023.45).do_calculate }
    it { is_expected.to eq 0.636 }
  end

  describe '#Do calculate meters to kilometers' do
    subject { Calculation.new(2, 1023.45).do_calculate }
    it { is_expected.to eq 1.023 }
  end

  describe '#Do calculate kilometers to miles' do
    subject { Calculation.new(3, 1023.45).do_calculate }
    it { is_expected.to eq 636.078 }
  end

  describe '#Do calculate kilometers to meters' do
    subject { Calculation.new(4, 1023.45).do_calculate }
    it { is_expected.to eq 1_023_450.0 }
  end

  describe '#Do calculate miles to meters' do
    subject { Calculation.new(5, 1023.45).do_calculate }
    it { is_expected.to eq 1_646_731.05 }
  end

  describe '#Do calculate miles to kilometers' do
    subject { Calculation.new(6, 1023.45).do_calculate }
    it { is_expected.to eq 1646.731 }
  end

  describe '#Do calculate wrong choose' do
    subject { Calculation.new(0, 1023.45).do_calculate }
    it { is_expected.to eq(-1) }
  end

  describe '#Do calculate wrong choose 2' do
    subject { Calculation.new(-1, 1023.45).do_calculate }
    it { is_expected.to eq(-1) }
  end
end
