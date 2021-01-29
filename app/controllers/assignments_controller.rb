class AssignmentsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
    def index
        @guests = Guest.all
    end

    def show
        @guests = Guest.all
    end

    def new
        @guests = Guest.all
    end

    def create
        @assignment = Assignment.new(:room_id => params[:rid], :guest_id => params[:gid])
        respond_to do |format|
            if @assignment.save
              format.html { redirect_to rooms_url, notice: "Assigned" }
              format.json { render :show, status: :created, location: @assignment }
            else
              format.html { render rooms_url, status: :unprocessable_entity}
              format.json { render json: @assignment.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @assignment = Assignment.find(params[:id])
        @assignment.destroy
        respond_to do |format|
          format.html { redirect_to rooms_url, notice: "Unassigned." }
          format.json { head :no_content }
        end
      end
end