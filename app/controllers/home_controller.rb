# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @houses = House.all
    @commercial_units = CommercialUnit.all
    @complex_buildings = ComplexBuilding.all
  end
end
