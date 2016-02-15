class SiteController < ApplicationController
  before_action :authenticate_admin!, only: :home
  def home
  end

  def gracias
  end
end
