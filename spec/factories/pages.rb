FactoryGirl.define do
  factory :page, class: FileSet do
    transient do
      user { FactoryGirl.build(:user) }
    end

    after(:build) do |page, evaluator|
      page.apply_depositor_metadata(evaluator.user.user_key)
      page_number = page.title.first.match(/\d\d/).to_s
      page_number = '04' if page_number.to_i > 4
      page.add_file open("spec/fixtures/pages/page#{page_number}.png"), {path: "spec/fixtures/pages/page#{page_number}.png"}
    end

    sequence(:title, '01') do |n|
      ["page#{n}"]
    end

    visibility Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC

  end
end
