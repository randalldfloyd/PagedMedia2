# Generated via
#  `rails generate curation_concerns:work MusicalScore`

class CurationConcerns::MusicalScoresController < ApplicationController
  include CurationConcerns::CurationConcernController
  set_curation_concern_type MusicalScore
end
