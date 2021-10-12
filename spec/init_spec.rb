require './lib/init'

RSpec.describe Init do
  $stdin = File.open('./test/test_data.txt')

  describe '#init value' do
    subject { Init.new.init_value }
    it { is_expected.to eq 10 }
  end

  describe '#do calculate' do
    subject { Init.new.do_calculate }
    it { is_expected.to eq(-1) }
  end

  describe '#quit No' do
    subject { Init.new.quit? }
    it { is_expected.to eq nil }
  end
end
