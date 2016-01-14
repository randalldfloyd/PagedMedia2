# Generated via
#  `rails generate curation_concerns:work Paged`

class CurationConcerns::PagedsController < ApplicationController
  include CurationConcerns::CurationConcernController
  set_curation_concern_type Paged
  
  def show
    super
    @members = find_members()
  end
  
  def find_members(*args) 
    if args.size > 0
      params[:id] = args[0]
    end
    members = {}
    search = ActiveFedora::SolrService.instance.conn.select :params => { :q => params[:id], :fl => "member_ids_ssim" }
    unless search['response']['numFound'].to_i == 0
      members = search['response']['docs'][0]['member_ids_ssim']
    else
      members = {:id => params[:id], :error => 'No memberss'}
    end
    #FIXME: keep?
    memberss ||= "[]"
    return members
  end
  
end
