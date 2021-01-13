class ResearchesController < ApplicationController

    def index
        @researches = Researches.all 
    end

    def show
        
    end

    
    def new
        @research = Research.new
        
        if @research.save 
            flash[:notice] = "Your research has been logged successfully!"
            redirect_to research_path
        else        
            flash[:notice] = "Let's try that again"
            render :new
        end
        
    end

    def create

    end

    private

    def research_params
        params.require(:researches).permit(:title, :description)
    end
end
