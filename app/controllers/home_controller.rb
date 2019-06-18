# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @animals = Animal.all.page(params[:page]).per(2)
  end
end
