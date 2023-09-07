require 'rails_helper'

RSpec.describe Billers::DestroyUseCase do
  subject(:use_case) { described_class }

  let(:biller) { create(:biller) }

  it 'when biller is deleted' do
    response = use_case.call(id: biller.id)
    expect(response.name).to eq 'Telcel Prepago'
  end

  it 'when biller isn\'t deleted' do
    response = use_case.call(id: 0)
    expect(response).to eq 'Biller not found'
  end
end
