require 'rails_helper'

RSpec.describe Billers::FindService do
  subject(:service) { described_class }

  let(:biller) { create(:biller) }

  describe '.call' do
    it 'when biller exists' do
      response = service.call(id: biller.id)
      expect(response).to be_present
    end

    it 'when biller does\'t exist' do
      response = service.call(id: 0)
      expect(response).to eq 'Biller not found'
    end
  end
end
