require 'rails_helper'

RSpec.describe Billers::CreateService do
  subject(:service) { described_class }

  describe '.call' do
    it 'when biller is created successfully' do
      response = service.call(name: 'Telcel', actions: 'pay', industries: 'cell')
      expect(response).to be_present
    end

    it 'when biller is invalid' do
      response = service.call(name: 'Telcel')
      expect(response).to eq 'Biller is invalid'
    end
  end
end
