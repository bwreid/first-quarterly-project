class MembersController < ApplicationController
  def index
    @members = $classroom_members
  end

  def new
    @member = Member.new
  end

  def create
    member = Member.where( :first => params[:member]['first'], :last => params[:member]['last'] ).first

    if (member.strength_check & member.weakness_check).count == 0
      member = Member.create(params[:member])
      $classroom_members << member
      redirect_to(member)
    else
      redirect_to(error_path)
    end

  end

  def show
    @member = $classroom_members.find(params[:id])
  end

  def edit
    @member = $classroom_members.find(params[:id])
  end

  def update
    member = Member.find(params[:id])

    if params[:member]['strength_ids'].present? && params[:member]['weakness_ids'].present?
      check = params[:member]['strength_ids'] & params[:member]['weakness_ids']
    else
      check = []
    end

    if check.count == 0
      member.update_attributes(params[:member])
      redirect_to(member)
    else
      redirect_to(error_path)
    end

  end

  def destroy
    member = Member.find(params[:id])
    member.delete
    redirect_to(members_path)
  end

  def error
  end

end
