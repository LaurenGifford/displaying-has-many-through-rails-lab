class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def new

    end

    def create
        @new_doctor = Doctor.create(strong_params)
        redirect_to doctor_path(@new_doctor)
    end

    def edit

    end

    def update
    end

    def destroy
    end

    private

    def strong_params
        params.require(:doctor). permit(:name, :department)
    end
end
