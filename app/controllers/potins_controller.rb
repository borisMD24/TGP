class PotinsController < ApplicationController
    def show
        @potins = Potin.find(params[:id])
    end
    def new
        @potin = Potin.new
    end
    def create
        @potin = Potin.new( 'title' => params[:title],
                            'content' => params[:content],
                            'user_id' => params[:user_id])
        if(@potin.save)
            flash.notice = "potin cree"
            redirect_to @potin
        end

    end
end
