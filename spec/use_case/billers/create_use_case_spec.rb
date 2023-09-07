require 'rails_helper'

RSpec.describe Billers::CreateUseCase do
  subject(:use_case) { described_class }

  let(:params) { ActionController::Parameters.new(name: 'Telcel', actions: 'pay', industries: 'cell') }

  describe '.call' do
    it 'when biller is valid' do
      response = use_case.call(**params.permit!.to_h)
      expect(response).not_to eq 'Params are invalid'
    end

    it 'when biller is invalid' do
      params[:actions] = 'pa'
      response = use_case.call(**params.permit!.to_h)
      expect(response).to eq 'Params are invalid'
    end
  end
end
