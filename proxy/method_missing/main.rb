# 銀行口座クラス
class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

# 銀行口座のセキュリティを担うプロキシークラス
class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @real_account = real_account
    @owner_name = owner_name
  end

  def check_access
    puts "アクセスしたユーザーが#{@owner_name}であるかをチェックします"
  end

  def method_missing(name, *args)
    check_access
    @real_account.send(name, *args)
  end
end

acount_proxy = AccountProtectionProxy.new(BankAccount.new(100), "Alice")
puts acount_proxy.balance
