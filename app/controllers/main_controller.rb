class MainController < ApplicationController
  def login
  end

  def connect
    if Member.all.map(&:username).include?(params[:username])
      if Member.where(:username => params[:username]).first.password == params[:password]
        $user = Member.where(:username => params[:username]).first
        $classroom = Member.where(:username => params[:username]).first.classroom
        $classroom_members = Member.where(:username => params[:username]).first.classroom.members
        redirect_to($user)
      else
        redirect_to(root_path)
      end
    else
      redirect_to(root_path)
    end
  end

  def logout
    $user = nil
    $classroom = nil
    $classroom_members = nil
    redirect_to(root_path)
  end
end