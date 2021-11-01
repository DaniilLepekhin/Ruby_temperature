require './lib/error_handler'

RSpec.describe ErrorHanlder do
  describe '#check_value' do
    context 'correct value' do
      subject { ErrorHanlder.new.check_value(5.5) }
      it { is_expected.to eq true }
    end

    context 'uncorrect value' do
      subject { ErrorHanlder.new.check_value('test') }
      it { is_expected.to eq false }
    end
  end

  describe '#check_correct_scale' do
    context 'correct scale' do
      subject { ErrorHanlder.new.check_correct_scale('F') }
      it { is_expected.to eq true }
    end

    context 'uncorrect scale' do
      subject { ErrorHanlder.new.check_correct_scale('test') }
      it { is_expected.to eq false }
    end
  end

  describe '#check_repeating_scale' do
    context 'not repeating scale' do
      subject { ErrorHanlder.new.check_repeating_scale('F', 'C') }
      it { is_expected.to eq true }
    end

    context 'repeating scale' do
      subject { ErrorHanlder.new.check_repeating_scale('F', 'F') }
      it { is_expected.to eq false }
    end
  end
end
