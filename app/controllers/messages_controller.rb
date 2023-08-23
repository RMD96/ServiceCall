class MessagesController < ApplicationController
  def index
    @received_messages = current_user.received_messages.includes(:sender).order(created_at: :desc)
    @sent_messages = current_user.sent_messages.includes(:receiver).order(created_at: :desc)
  end

  def new
    @message = Message.new
    @receiver = User.find(params[:receiver_id])
  end

  def create
    @message = current_user.sent_messages.build(message_params)
    if @message.save
      redirect_to messages_path, notice: 'Message sent successfully.'
    else
      render :new
    end
  end

  def show
    @message = Message.find(params[:id])
    @message.update(read: true) unless @message.read?
  end

  private

  def message_params
    params.require(:message).permit(:content, :receiver_id)
  end
end
