Refinery::PagesController.class_eval do

    before_filter :find_all_books
  
  protected
    #include Refinery::Book
    def find_all_books
      @books = Refinery::Books::Book.order('position ASC')
    end
  
end