module Admin
  class ApplicationController < ActionController::Base
    before_action :admins_only

    private

    def admins_only
      deny_access unless current_user.admin?
    end

    def deny_access(msg:nil, path:nil)
      respond_to do |format|
        format.json do
          render :json => {
            message: msg
          }, :status => :not_found
        end

        format.html do
          flash[:error] = msg if msg
          redirect_to path || main_app.root_path
        end
      end

    end
  end
end
