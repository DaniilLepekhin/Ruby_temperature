require './lib/temperature'

RSpec.describe Temperature do
  describe '#converter' do
    context 'F to C convert' do
      subject { Temperature.new('F', 'C', 65).converter }
      it { is_expected.to eq 18.48 }
    end

    context 'C to F convert' do
      subject { Temperature.new('C', 'F', 9).converter }
      it { is_expected.to eq 48.2 }
    end

    context 'F to K convert' do
      subject { Temperature.new('F', 'K', 10).converter }
      it { is_expected.to eq 260.83 }
    end

    context 'K to C convert' do
      subject { Temperature.new('K', 'C', 1).converter }
      it { is_expected.to eq(-272.15) }
    end

    context 'K to F convert' do
      subject { Temperature.new('K', 'F', 1).converter }
      it { is_expected.to eq(-457.87) }
    end
  end
end
