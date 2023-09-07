require 'rails_helper'

RSpec.describe Billers::SchemaService do
  subject(:service) { described_class }

  let(:params) { ActionController::Parameters.new(name: 'Telcel', actions: 'pay', industries: 'cell') }

  describe '.call' do
    it 'when schema is valid' do
      response = service.call(**params.permit!.to_h)
      expect(response).not_to eq 'Params are invalid'
    end

    it 'when schema is invalid' do
      params[:actions] = 'pa'
      response = service.call(**params.permit!.to_h)
      expect(response).to eq 'Params are invalid'
    end
  end
end
