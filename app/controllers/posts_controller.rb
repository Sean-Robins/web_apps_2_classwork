class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
  end

  def create

    @post = Post.new

    #   # assign user-entered form data to Company's columns
      @post["author"] = params["author"]
      @post["body"] = params["body"]
      @post["image"] = params["image"]
  
    #   # save Company row
      @post.save
    #   # redirect user
      redirect_to "/posts"
  #   # start with a new Post
  #   # assign user-entered form data to Post's columns
  #   # save Post row
  #   # redirect user
  end

end
