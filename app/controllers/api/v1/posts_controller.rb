module Api
  module V1
    class PostsController < ApplicationController
      skip_before_action :verify_authenticity_token

      def index
        @posts = Post.where(published: true).order(created_at: :desc)
        render json: @posts.map { |post|
          {
            id: post.id,
            title: post.title,
            body: post.body,
            published_at: post.created_at,
            author: post.user.name
          }
        }
      end

      def show
        @post = Post.find(params[:id])
        render json: {
          id: @post.id,
          title: @post.title,
          body: @post.body,
          published_at: @post.created_at,
          author: @post.user.name,
          comments: @post.comments.map { |c| { body: c.body, author: c.user.name } }
        }
      end
    end
  end
end