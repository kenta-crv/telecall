class JobsController < ApplicationController

      def index
        #@q = Job.ransack(params[:q])
        #@jobs = @q.result
        #@jobs = Job.page(params[:page]).per(20).order(created_at: :desc)
        @jobs = Job.all
      end
    
      def show
        @job = Job.find(params[:id])
      end
    
      def new
        @job = Job.new
      end
    
      def create
        @job = Job.new(job_params)
        if @job.save
            redirect_to jobs_path
        else
            render 'edit'
        end
      end
    
      def edit
        @job = Job.find(params[:id])
      end
    
      def update
        @job = Job.find(params[:id])
        if @job.update(job_params)
            redirect_to jobs_path
        else
            render 'edit'
        end
      end
    
     def destroy
       @job = Job.find(params[:id])
       @job.destroy
       redirect_to jobs_path
     end
    
    private
     def job_params
      params.require(:job).permit(
        :status, #募集可否
        :occupation, #職種
        :chachcopy, #キャッチコピー
        :category, #カテゴリー
        :location, #勤務地
        :employment, #雇用形態
        :salary_low, #給料下限
        :salary_high, #給料上限
        :salary_category, #給料種別
        :work_content, #仕事内容
        :work_appeal, #アピールポイント
        :work_demand, #求める人材
        :work_time, #曜日・時間
        :work_vacation, #休暇・休日
        :work_location, #勤務地
        :work_access, #アクセス
        :work_treatment, #待遇・福利厚生
        :work_other, #その他
        :tag_1, #タグ
        :tag_2 #タグ
      )
      end
    end
    


