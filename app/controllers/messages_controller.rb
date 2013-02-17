class MessagesController < ApplicationController
  def create
    member = Member.find(params[:member_id])
    request = Message.new( :message => params[:message], :from => params[:from])
    member.messages << request
    redirect_to(member)
  end

  def destroy
    if params[:response] == 'no'
      request = Message.find(params[:message_id])
      request.delete
    else
      request = Message.find(params[:message_id])
      return_response = Message.create( :message => "#{$user.first} would be happy to speak with you! Email: #{$user.username}@gmail.com.")
      Member.find(request.from).messages << return_response
      request.delete
    end
    redirect_to($user)
  end
end