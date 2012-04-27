module Refinery
  module Books
    module Admin
      class BooksController < ::Refinery::AdminController

        crudify :'refinery/books/book', :xhr_paging => true

      end
    end
  end
end
