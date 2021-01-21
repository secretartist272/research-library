class SubjectsController < ApplicationController
    def index
        @subjects = Subject.all
    end

    def show
        @subject = Subject.find_by_id(params[:id])
    end

    def new
        @subject = Subject.new
        @user  = current_user
        @research = Research.find(params[:research_id])
    end

    def create 
        @subject = Subject.new(subject_params)
        @user = current_user
        @research = Research.find(params[:research_id])
        
        if @subject.save
            redirect_to research_subject_path(@research, @subject)
        else
            render :new
        end
    end

    def destroy
        @subject = Subject.find(params[:id])
        if @subject.destroy!
            
            redirect_to research_path
        else
            redirect_to research_subject_path(@research, @subject)
        end
    end

    private

    def subject_params
        params.require(:subject).permit(:field_of_Study, :user_id, :research_id)
    end
end
