FactoryGirl.define do


  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    email { Faker::Internet.safe_email }
    password "foobar123"
    password_confirmation "foobar123"
    phone "914270000"

    # FactoryGirl.create(:user, :activated)

    trait :activated do
      activated true
      activated_at Time.zone.now
    end

    # FactoryGirl.create(user, :administrator)

    trait :administrator do
      admin true
    end
  end
end
