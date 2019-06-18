# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @animals = Animal.all
  end
end
