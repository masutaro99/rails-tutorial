module Api
  module V1
    class StaticPagesController < ApplicationController
      def home
        users = { id:1, nickname: "ぴよっち", age: 22 }
        render json: users
      end
      def help
        helps = { id:1, nickname: "お助け" }
        render json: helps
      end
    end
  end
end
