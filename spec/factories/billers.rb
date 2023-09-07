FactoryBot.define do
  factory :biller do
    name { 'Telcel Prepago' }
    actions { 'pay' }
    industries { 'cell' }
    active { false }
  end
end
