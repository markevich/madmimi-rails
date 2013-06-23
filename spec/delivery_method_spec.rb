require 'spec_helper'
describe DeliveryMethod do
  let(:valid_params) { {api_key: 'api_secret', email: 'test@test.com'} }
  describe '.new' do
    context 'With incorrect options' do
      it { expect{ DeliveryMethod.new }.to raise_error DeliveryMethod::InvalidOptions}
      it { expect{ DeliveryMethod.new(email: 'test@test.com') }.to raise_error DeliveryMethod::InvalidOptions }
      it { expect{ DeliveryMethod.new(api_key: 'api_secret') }.to raise_error DeliveryMethod::InvalidOptions }
    end
    context 'With correct options' do
      it { expect{ DeliveryMethod.new(valid_params) }.to_not raise_error }
    end
    it 'Set settings' do
      instance = DeliveryMethod.new(valid_params)
      expect(instance.settings).to be_equal valid_params
    end
  end
end
