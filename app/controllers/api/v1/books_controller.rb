# frozen_string_literal: true

module Api
  module V1
    # Handles endpoints related to users
    class BooksController < Api::V1::ApplicationController
      def index
        books = Book.all
        render json: books
      end

      def create
        book = Book.new(title: params[:title], game_system: params[:game_system], publisher: params[:publisher], game_type: params[:game_type])
        begin
          book.save!
          render json: book
          rescue ActiveRecord::RecordInvalid => exception
            return ServiceContract.error('Error saving book.') unless book.valid?
          end
      end
    end
  end
end
