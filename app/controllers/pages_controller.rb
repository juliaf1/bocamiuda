class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :sobre ]

  def home
  end

  def sobre
  end
end
