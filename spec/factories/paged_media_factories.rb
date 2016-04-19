FactoryGirl.define do

  #Create a paged_media object
  factory :paged_media, class: PagedMedia do
    title ["Paged Media Object"]
    creator "Factory Girl"
    depositor "user@example.com"
    edit_users ["user@example.com"]
    #author "Factory Girl"
  end

end
