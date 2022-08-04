class BookForm
  attr_accessor :title, :author, :pub_year, :isbn

  validates :title, blank: false
  validates :author, blank: false
  validates :pub_year, type: int
  validates :isbn, blank: false, format: :isbn
end
class BookForm
  def self.validates(attr, rules)
    @validations ||= Hash.new
    @validations[attr] = rules
  end

  def is_valid?

  end

  def self.validations
    @validations
  end
end

p BookForm.validations