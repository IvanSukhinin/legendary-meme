require './lib/init'

RSpec.describe Init do
  $stdin = File.open('./test/test_data.txt')

  describe '#init value' do
    subject { Init.new.init_value }
    it { is_expected.to eq 10 }
  end
end
