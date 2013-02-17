class RecommendationsController < ApplicationController
  def create
    member = Member.find(params[:member_id])
    if params[:message].length > 0
      recommendation = Recommendation.new( :message => params[:message], :recommender => params[:recommender])
      member.recommendations << recommendation
    end
    redirect_to(member)
  end
end