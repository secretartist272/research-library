class ResearchesController < ApplicationController

    def index
        @research = Research.all 
    end

    def show

    end
end
