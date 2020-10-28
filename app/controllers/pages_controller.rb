class PagesController < ApplicationController
    def index
        @potins = Potin.all
    end
end
