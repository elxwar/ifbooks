module Refinery
  module Books
    class BooksController < ::ApplicationController

      before_filter :find_all_books
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @book in the line below:
        present(@page)
      end

      def show
        @book = Book.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @book in the line below:
        present(@page)
      end

    protected

      def find_all_books
        @books = Book.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/books").first
      end

    end
  end
end
