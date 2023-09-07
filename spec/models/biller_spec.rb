require 'rails_helper'

RSpec.describe Biller do
  subject(:biller) do
    described_class.new(
      name: 'Telcel Prepago',
      actions: 'pay',
      industries: 'cell'
    )
  end

  it 'when biller is valid' do
    expect(biller).to be_valid
  end

  it 'when biller name is invalid' do
    biller.name = nil
    expect(biller).not_to be_valid
  end

  context 'when biller is invalid' do
    it 'actions are empty' do
      biller.actions = nil
      expect(biller).not_to be_valid
    end

    it 'action doesn\'t exits' do
      biller.actions = 'payment'
      expect(biller).not_to be_valid
    end

    it 'industries are empty' do
      biller.industries = ''
      expect(biller).not_to be_valid
    end

    it 'industry doesn\'t exit' do
      biller.industries = 'petrolera'
      expect(biller).not_to be_valid
    end

    it 'industries are invalid' do
      biller.industries = nil
      expect(biller).not_to be_valid
    end
  end
end
