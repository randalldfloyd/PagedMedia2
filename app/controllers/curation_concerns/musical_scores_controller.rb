# Generated via
#  `rails generate curation_concerns:work MusicalScore`

class CurationConcerns::MusicalScoresController < ApplicationController
  include CurationConcerns::CurationConcernController
  self.curation_concern_type = MusicalScore
end
