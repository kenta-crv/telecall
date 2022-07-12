class ApplicationController < ActionController::Base
  add_breadcrumb '株式会社Ri-Plus『アポ匠』ホーム', :root_url
  before_action :set_host
  before_action :set_footer


  # 例外処理

   rescue_from ActiveRecord::RecordNotFound, with: :render_404 unless Rails.env.development?
   rescue_from ActionController::RoutingError, with: :render_404 unless Rails.env.development?
   rescue_from Exception, with: :render_500 unless Rails.env.development?

   def set_host
      Rails.application.routes.default_url_options[:host] = request.host_with_port
   end

   def render_404
    render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
   end

   def render_500
    render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
   end

   def set_footer
     @columns = Column.all
     @posts = Post.all
   end

end
