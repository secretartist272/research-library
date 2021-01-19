class SubjectsController < ApplicationController
    def index
        @subjects = Subject.all
    end

    def show
        @subject = Subject.find_by_id(params[:id])
    end

    def new
        @subject = Subject.new
    end

    def create 
        @subject = Subject.new(subject_params)
        @user.id = User.find(params[:id])
        @research.id = Research.find(params[:id])
        
        if @subject.save
            redirect_to subject_path(@subject)
        else
            render :new
        end
    end

    private

    def subject_params
        params.require(:subject).permit(:field_of_study, :user_id, :research_id)
    end
end
