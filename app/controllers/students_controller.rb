class StudentsController < ApplicationController
    before_action :set_student, only: [:edit, :show, :update, :destroy]

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            flash[:notice] = "You have successfully signed up"
            redirect_to root_path
        else
            render 'new'
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:name, :email)
    end
end