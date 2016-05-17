FactoryGirl.define do
  factory :page, class: FileSet do
    transient do
      user { FactoryGirl.create(:user) }
    end

    after(:build) do |work, evaluator|
      work.apply_depositor_metadata(evaluator.user.user_key)
      # add_file open("spec/fixtures/pages/#{page_filename}"), {path: "spec/fixtures/pages/#{page_filename}"}
      work.add_file open("spec/fixtures/pages/#{work.title.first}.png"), {path: "spec/fixtures/pages/#{work.title.first}.png"}
    end

    sequence(:title, '01') do |n|
      ["page#{n}"]
    end

    visibility Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC

  end
end
