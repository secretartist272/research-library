class ResearchesController < ApplicationController

    def index
        @research = Research.all 
    end

    def show
        @research = Research.all
    end

    def new
        @research = Research.new
    end

    def create

    end
end
