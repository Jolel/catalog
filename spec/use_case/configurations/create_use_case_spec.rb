require 'rails_helper'

RSpec.describe Configurations::CreateUseCase do
  subject(:use_case) { described_class }

  let(:params) do
    ActionController::Parameters.new(payment_processor: 'pay-processor', consult_processor: 'consult-processor')
  end

  describe '.call' do
    it 'when configuration is valid' do
      response = use_case.call(**params.permit!.to_h)
      expect(response).not_to eq 'Params are invalid'
    end

    it 'when configuration is invalid' do
      params[:payment_processor] = ''
      response = use_case.call(**params.permit!.to_h)
      expect(response).to eq 'Params are invalid'
    end
  end
end
