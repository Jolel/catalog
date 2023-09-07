require 'rails_helper'

RSpec.describe Configuration do
  subject(:configuration) do
    described_class.new(
      payment_processor: 'pay_processor',
      consult_processor: 'consult_processor'
    )
  end

  it 'when configuration is valid' do
    expect(configuration).to be_valid
  end

  context 'when configuration is invalid' do
    it 'payment processor is empty' do
      configuration.payment_processor = ''
      expect(configuration).not_to be_valid
    end

    it 'consult processor is empty' do
      configuration.consult_processor = ''
      expect(configuration).not_to be_valid
    end
  end
end
