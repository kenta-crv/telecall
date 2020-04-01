class WorkersController < ApplicationController
    def index
      #@type = params[:type]
      @workers = Worker.order(created_at: "DESC").page(params[:page])
    end

    def show
      @worker = Worker.find(params[:id])
    end

    def new
      @worker = Worker.new
    end

    def create
      @worker = Worker.new(worker_params)
      if @worker.save
        redirect_to workers_path
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
        :first_kana, #ミョウジ
        :last_kana, #ナマエ
        :tel, #電話番号
        :mail, #メールアドレス
        :postnumber, #郵便番号
        :address, #住所

        :experience, #経験
        :item, #商材名
        :ago, #経験年数
        :worktime, #週稼働時間

        :data, #音声データ

        :bank, #銀行名
        :store, #支店
        :account_number, #口座番号
        :transfer_name, #振込名義

        :agree, #約款同意
        )
    end
end
