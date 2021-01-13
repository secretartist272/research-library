class SubjectsController < ApplicationController
    def index
        @subject = Subjects.all
    end

    def show

    end
end
