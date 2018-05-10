class SponsoredPostsController < ApplicationController
  def show
    @sponsoredPost = SponsoredPost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsoredPost = SponsoredPost.new
  end

  def edit
  end
end
