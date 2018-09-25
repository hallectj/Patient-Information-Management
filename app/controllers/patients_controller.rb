class PatientsController < ApplicationController
    #load_and_authorize_resource :class => PatientsController
    before_action :look_patients, only: [:show, :edit, :update, :destroy]  
  
    def index
      @patients = Patient.all.order("created_at DESC")
    end
  
    def new
      @patient = Patient.new
    end
  
    def create
      @patient = Patient.new(patient_params)
      
      if @patient.save
        redirect_to :controller => 'patients', :action => 'show', :format => 'html'
      else
        render 'new'
      end
    end
  
    def edit
    end
  
    def show
    end
  
    def update
      if @patient.update(patient_params)
        redirect_to patient_path(@patient)
      else
        render 'edit'
      end
    end
  
    def destroy
      @patient.destroy
      redirect_to patient_path
    end
    
    private
  
        def look_patients
          @patient = Patient.find(params[:id])
        end
  
        def patient_params
            params.require(:patient).permit(:first_name, :middle_name, :last_name)
        end
end
