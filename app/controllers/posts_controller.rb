class PostsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.new(topic_params)
    @post.save
    redirect_to topic_path(@topic)
  end


  private
    def topic_params
      params.require(:post).permit(:description, :title, :url)
    end


end
