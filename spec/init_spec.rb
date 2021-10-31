require './lib/init'

RSpec.describe Init do
  $stdin = File.open('./test-data/init_test_data.txt')

  describe '#Init call func name. Some wrong values and choose 3' do
    subject { Init.new.init_call_func_name }
    it { is_expected.to eq '3' }
  end

  describe '#Init call func name. Some wrong values and quit' do
    subject { Init.new.init_call_func_name }
    it { is_expected.to eq 'q' }
  end

  describe '#Init value. Some wrong values and choose 12.2345' do
    subject { Init.new.init_value }
    it { is_expected.to eq '12.2345' }
  end

  describe '#Init value. Some wrong values and quit' do
    subject { Init.new.init_value }
    it { is_expected.to eq 'q' }
  end
end
