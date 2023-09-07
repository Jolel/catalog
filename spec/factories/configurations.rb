FactoryBot.define do
  factory :configuration do
    payment_processor { 'pay-processor' }
    consult_processor { 'consult-processor' }
    association :biller
  end
end
