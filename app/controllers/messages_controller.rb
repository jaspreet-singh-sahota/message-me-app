class MessagesController < ApplicationController
    before_action :require_user

    def create
      message = current_user.messages.build(params_method)
      if message.save
        redirect_to root_path
      end
    end
    
    private

    def params_method
      params.require(:message).permit(:body)
    end
end