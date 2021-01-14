class SubjectsController < ApplicationController
    def index
        @subjects = Subject.all
    end

    def show

    end

    def new
        @subject = Subject.new
    end

    def create 
        @subject = Subject.new(subject_params)
        @user = current_user
        @research = Research.find_by(id: params[:research][:id])
        
        if @subject.save
            redirect_to subject_path
        else
            render :new
        end
    end

    private

    def subject_params
        params.require(:subject).permit(:genre, :subject, :user_id, :research_id)
    end
end
