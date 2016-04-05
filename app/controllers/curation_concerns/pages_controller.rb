

class CurationConcerns::PagesController < ApplicationController
  include CurationConcerns::CurationConcernController
  set_curation_concern_type Page

  def new
    @paged_id =  params[:pg_id] ?  params[:pg_id] : false
  end
  
end
