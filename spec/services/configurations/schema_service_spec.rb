require 'rails_helper'

RSpec.describe Configurations::SchemaService do
  subject(:service) { described_class }

  let(:params) do
    ActionController::Parameters.new(
      payment_processor: 'pay-processor',
      consult_processor: 'consult-processor'
    )
  end

  it 'when schema is valid' do
    response = service.call(**params.permit!.to_h)
    expect(response).not_to eq 'Params are invalid'
  end

  it 'then schema isn\'t valid' do
    params[:payment_processor] = ''
    response = service.call(**params.permit!.to_h)
    expect(response).to eq 'Params are invalid'
  end
end
