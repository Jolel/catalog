# frozen_string_literal: true

RSpec.describe Configurations::UpdateUseCase do
  subject(:use_case) { described_class }

  let(:configuration) { create(:configuration) }
  let(:params) do
    ActionController::Parameters.new(
      id: configuration.id,
      payment_processor: 'pay-processor',
      consult_processor: 'consult-processor2'
    )
  end

  describe '.call' do
    context 'when configuration is updated' do
      before do
        @response = use_case.call(**params.permit!.to_h)
      end
      
      it { expect(@response.consult_processor).to eq 'consult-processor2' }
      it { expect(@response).not_to eq 'Params are invalid' }
    end

    context 'when configuration update' do
      it 'params are invalid' do
        params[:payment_processor] = ''
        response = use_case.call(**params.permit!.to_h)
        expect(response).to eq 'Params are invalid'
      end

      it 'record doesn\'t exist' do
        params[:id] = 0
        response = use_case.call(**params.permit!.to_h)
        expect(response).to eq 'Configuration not found'
      end
    end
  end
end
