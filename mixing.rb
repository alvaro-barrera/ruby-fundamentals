module Tagged
  def tag(tag)
    ; @tags ||= []; @tags << tag;
  end

  def untag(tag)
    ; @tags.delete(tag) if !@tags.nil?;
  end

  module ClassMethods
    def find_by_tags(tagged_collection, tags)
      tagged_collection.filter { |c| tags & c.tags == tags }
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end