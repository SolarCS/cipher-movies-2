class SearchController < ApplicationController

  before_action :authenticate_user!

  def index
    @movies = ITunesSearchAPI.search(:term => params[:q], :country => "US", :media => "movie") if params[:q].present?
  end

end
