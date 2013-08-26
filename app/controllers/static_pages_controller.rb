class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def search
  	 if signed_in?
       @users = User.search(params[:search])
       if @users.size.zero?
        flash[:notice] = "No result found."
       end
       @micropost  = current_user.microposts.build
       @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def share
  	 if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def play
  end
end
