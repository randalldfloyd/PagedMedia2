FactoryGirl.define do

  #Create a paged_work object
  factory :paged_work, class: PagedWork do
    transient do
      user { FactoryGirl.build(:user) }
    end

    after(:build) do |work, evaluator|
      work.apply_depositor_metadata(evaluator.user.user_key)
    end

    title ["Paged Work Object"]
    visibility Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC
    creator ["Factory Girl"]

    factory :complete_paged_work do
      after(:build) do |work|
        work.ordered_members << FactoryGirl.build(:contained_page)
        work.ordered_members << FactoryGirl.build(:contained_page)
        work.ordered_members << FactoryGirl.build(:page)
        work.ordered_members.to_a[1].ordered_members << work.ordered_members.to_a[0].ordered_members.to_a[0]
      end

    end
  end

end
