# frozen_string_literal: true

RSpec.describe Configurations::DestroyUseCase do
  subject(:use_case) { described_class }

  let(:configuration) { create(:configuration) }

  it 'when configuration is deleted' do
    response = use_case.call(id: configuration.id)
    expect(response.payment_processor).to eq 'pay-processor'
  end

  it 'when configuration isn\'t deleted' do
    response = use_case.call(id: 0)
    expect(response).to eq 'Configuration not found'
  end
end
