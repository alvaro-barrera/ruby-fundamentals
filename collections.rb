class Collection
  @search_count = 0

  def self.find
    @search_count += 1
  end
end

class Collection
  def self.search_count
    @search_count
  end

  def find_by_author(author)
    puts "in find_by_author"
  end

  def custom_sort
    puts "in custom_short"
    yield
  end

  log_time :find_by_author
  log_time :custom_sort

  def self.log_time(method)
    alias_method "_original_#{method}".to_sym,method

    define_method(method) {}
  end
end

class Series < Collection
  @search_count = 0
end

Collection.find
Series.find
Series.find

p Collection.search_count
p Series.search_count