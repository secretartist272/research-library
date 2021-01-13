class ResearchSubjectsController < ApplicationController

    def index
        @subject = Research_subjects.all
    end

    def show

    end
end
