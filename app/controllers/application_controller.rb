class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protect_from_forgery
  helper_method :all_categories
  helper_method :all_posts

  before_action :site_search

  def all_categories
    @categories = Category.all
  end

  def all_posts
    @posts = Post.all
  end

  def site_search
    @search = Post.search(params[:search])
    @search_posts = Post.all
    # <%= form_for @search do |f| %>
    #         <%= f.text_field :title_or_body_contains %>
    #                                 <%= f.submit "Search" %>
    #     <% end %>
  end
end
