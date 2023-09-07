require 'rails_helper'

RSpec.describe Configurations::FindService do
  subject(:service) { described_class }

  let(:configuration) { create(:configuration) }

  it 'when configuration is found' do
    response = service.call(id: configuration.id)
    expect(response).to be_present
  end

  it 'when configuration isn\'t found' do
    response = service.call(id: 0)
    expect(response).to eq 'Configuration not found'
  end
end
