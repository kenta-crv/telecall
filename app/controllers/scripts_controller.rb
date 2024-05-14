class ScriptsController < ApplicationController
    before_action :authenticate_admin!, only: [:index, :show, :edit, :update, :destroy, :send_mail]
    def index
      if params[:contract_id].present?
        @contract = Contract.find(params[:contract_id])
        @scripts = @contract.scripts.order(created_at: "DESC").page(params[:page])
        # @contract.companyをビューで使用できる
      else
        @scripts = Script.order(created_at: "DESC").page(params[:page])
        # 契約に関連する情報が必要ない場合の処理
      end
    end
      
  
    def new
      @contract = Contract.find(params[:contract_id])
      @script = Script.new
    end
  
    def create
      @contract = Contract.find(params[:contract_id])
      # 既存のスクリプトを削除またはアップデート
      if @contract.script
        @contract.script.destroy  # 既存のスクリプトを削除
      end    
      # 新しいスクリプトをビルド
      @script = @contract.build_script(script_params)
      if @script.save
        redirect_to info_contract_path(@contract)  # 成功した場合のリダイレクト先を指定
      else
        render :new  # 保存失敗時はnewテンプレートを再表示
      end
    end
  
    def show
      @contract = Contract.find(params[:contract_id])
      @script = @contract.script # 1対1の関係のため、直接アクセスする
    end    
    
    def edit
      @contract = Contract.find(params[:contract_id])
      @script = @contract.script
    end

    def destroy
      @script = Script.find(params[:id])
      @script.destroy
      redirect_to scripts_path, alert: "削除しました"
    end
  
    def update
      @script = Script.find(params[:id])
      if @script.update(script_params)
        redirect_to script_path(@script), alert: "更新しました"
      else
        render 'edit'
      end
    end

    private
    def script_params
      params.require(:script).permit(
        :sales_manager,
        :contact_number,
        :infomation,
        :hearing_1,
        :hearing_2,
        :hearing_3,
        :question_1,
        :answer_1,
        :question_2,
        :answer_2,
        :question_3,
        :answer_3,
        :question_4,
        :answer_4,
        :question_5,
        :answer_5,
        :question_6,
        :answer_6,
        :message #その他要望
      )
    end
end
