class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    def new
    end

    def create
        @new_patient = Patient.create(strong_params)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def strong_params
        params.require(:patient). permit(:name, :age)
    end
end
