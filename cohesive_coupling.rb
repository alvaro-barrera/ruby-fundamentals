# module Account
# end

module UserFunctions
end

module AuthorFunctions
end

module PublisherFunctions
end

class MailerCustom
  def send_email
    puts "in Mailer send_email"
  end
end

class Account
  def initialize(id)
    @id = id
  end

  def charge!
    puts "in Account charge!"
  end

  def payment_due?
    puts "in Account payment_due?"
  end
end

class User
  extend Forwardable # Delegation
  def_delegator :@mailer, :send_email, :send_announcement
  def_delegator :@account, :charge, :payment_due?

  def initialize(id, mailer = MailerCustom.new)
    @id = id
    @account = Account.new(id)
    @mailer = mailer
  end

  def set_card(card)
    delete_card!() if card_exists?
    add_card(card)
  end

  def send_announcement
      @mailer.send_announcement(@name)
      # @mailer.send_announcement(self, books)
  end

  private

  def add_card(card) end

  def delete_card!
  end
end

class Author < User
  # include Account
  # include UserFunctions
  # include AuthorFunctions
  def initialize(id)
    @user = User.new(id)
  end
end

class SelfPublishedAuthor
  # include Account
  # include UserFunctions
  # include AuthorFunctions
  # include PublisherFunctions
end

# author.user.account.charge!
# user.charge! if user.payment_due?