class ResearchesController < ApplicationController

    def index
        @researches = Researches.all 
    end

    def show
        @research = Research.find(params[:id])
    end

    
    def new
        @research = Research.new
        
        
        
    end

    def create
        @research = Research.new(research_params)
        if @research.save 
            flash[:notice] = "Your research has been logged successfully!"
            redirect_to research_path(@research)
        else        
            flash[:notice] = "Let's try that again"
            render :new
        end
    end

    private

    def research_params
        params.require(:research).permit(:title, :description)
    end
end
