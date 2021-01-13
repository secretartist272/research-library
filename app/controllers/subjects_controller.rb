class SubjectsController < ApplicationController
    def index
        @subject = Research_subjects.all
    end

    def show

    end
end
