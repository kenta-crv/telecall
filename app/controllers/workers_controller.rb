class WorkersController < ApplicationController
  before_action :authenticate_admin!, only: [:index, :show]
    def index
      @workers = Worker.order(created_at: "DESC").page(params[:page])
    end

    def new
      @worker = Worker.new
      render :action => 'new'
    end

    def confirm
      @worker = Worker.new(worker_params)
      if @worker.valid?
        render :action =>  'confirm'
      else
        render :action => 'new'
      end
    end

    def thanks
      @worker = Worker.new(worker_params)
      @worker.save
      WorkerMailer.received_email(@worker).deliver
      WorkerMailer.send_email(@worker).deliver
    end

    def show
      #@worker = Worker.find(params[:id])
    end

    def create
      @worker = Worker.new(worker_params)
      if @worker.save
        redirect_to workers_confirm_path
      else
        render 'new'
      end
    end

    def edit
      @worker = Worker.find(params[:id])
    end

    def destroy
      @worker = Worker.find(params[:id])
      @worker.destroy
       redirect_to workers_path
    end

    def update
      @worker = Worker.find(params[:id])
      if @worker.update(worker_params)
        redirect_to workers_path
      else
        render 'edit'
      end
    end

    private
    def worker_params
      params.require(:worker).permit(
        :first_name, #苗字
        :last_name, #名前

        :tel, #電話番号
        :mail, #メールアドレス
        :postnumber, #郵便番号
        :address, #住所

        :week, #郵便番号
        :experience, #住所

        :bank, #銀行名
        :store, #支店
        :account_number, #口座番号
        :transfer_name, #振込名義

        :other_1,
        :other_2,
        :other_3,
        :other_4,
        )
    end
end
