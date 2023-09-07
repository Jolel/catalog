require 'rails_helper'

RSpec.describe Configurations::CreateService do
  subject(:service) { described_class }

  let(:biller) { create(:biller) }

  it 'when configuration is created successfully' do
    response = service.call(payment_processor: 'payment-processor', consult_processor: 'consult-processor', biller_id: biller.id)
    expect(response).not_to eq 'Configuration is invalid'
  end

  it 'when configuration creation fails' do
    response = service.call
    expect(response).to eq 'Configuration is invalid'
  end
end
