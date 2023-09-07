require 'rails_helper'

RSpec.describe Billers::UpdateUseCase do
  subject(:use_case) { described_class }

  let(:biller) { create(:biller) }
  let(:params) do
    ActionController::Parameters.new(id: biller.id, name: 'Telcel', actions: 'consult', industries: 'cell')
  end

  describe '.call' do
    context 'when biller is updated' do
      let(:response) { use_case.call(**params.permit!.to_h) }

      it { expect(response.actions).to eq 'consult' }
      it { expect(response).not_to eq 'Params are invalid' }
    end

    context 'when biller update' do
      it 'params are invalid' do
        params[:actions] = 'pa'
        response = use_case.call(**params.permit!.to_h)
        expect(response).to eq 'Params are invalid'
      end

      it 'record doesn\'t exist' do
        params[:id] = 0
        response = use_case.call(**params.permit!.to_h)
        expect(response).to eq 'Biller not found'
      end
    end
  end
end
