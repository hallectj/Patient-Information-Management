class PagesController < ApplicationController
    #load_and_authorize_resource :class => PagesController
    #before_action :look_patients, only: [:show, :edit, :update, :destroy]
    before_action :isAdmin?
    
    def index
        #@patients = Patient.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        #@patient = Patient.new
    end
    
    def edit
    end
    
    def create
        #@patient = Patient.new(patient_params)

        #if @patient.save
            #redirect_to @patient
            #redirect_to @patient 
        #else
            #render 'new'
        #end
    end
    
    def update
        #if @patient.update(patient_params)
            #redirect_to @patient
        #else
            #render 'edit'
        #end
    end
    
    def destroy
        #@patient.destroy
        
        #redirect_to patients_path
    end
    
    private
  
        def look_patients
          @patient = Patient.find(params[:id])
        end
  
        def patient_params
            params.require(:patient).permit(:first_name, :middle_name, :last_name)
        end
  
        def isAdmin?
          if current_user.superadmin_role
            redirect_to rails_admin.dashboard_path
          end
        end
        
end
