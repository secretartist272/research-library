class ResearchesController < ApplicationController

    def index
        @researches = Research.all.each
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

    def edit
        @research = Research.find_by(params[:id])
    end

    def update
        @research = Research.find_by(params[:id])

        if @research.update!(research_params)
            
            redirect_to research_path(@research)
        else
            redirect_to edit_research_path
        end
    end

    def destroy
        @research = Research.find(params[:id])
        if @research.destroy!
            redirect_to researches_path
        else
            redirect_to researches_path(@research)
        end
    end


    private

    def research_params
        params.require(:research).permit(:title, :description)
    end
end
