class AstronautsController < ApplicationController
    def index
        @astronauts = Astronaut.all
        @total_age = Astronaut.pluck(:age)
        @average_age = @total_age.sum / @total_age.count
        @missions = Mission.order(title: :asc)
    end
end