class BankAccount
    attr_reader :balance
  
    def initialize(account_holder, initial_balance = 0)
      @account_holder = account_holder
      @balance = initial_balance
      puts "Account created for #{@account_holder} with initial balance of #{@balance}."
    end
  
    # Method to deposit money
    def add_balance(amount)
      if amount > 0
        @balance += amount
        puts "Successfully deposited #{amount}. New balance: #{@balance}."
      else
        puts "Error: Deposit amount must be positive."
      end
    end
  
    # Method to withdraw money
    def withdraw(amount)
      if amount > @balance
        puts "Error: Insufficient balance. Current balance: #{@balance}."
      elsif amount <= 0
        puts "Error: Withdrawal amount must be positive."
      else
        @balance -= amount
        puts "Successfully withdrew #{amount}. New balance: #{@balance}."
      end
    end
  
    # Method to check balance
    def check_balance
      puts "Current balance: #{@balance}."
    end
  end
  
  # Example usage
  account = BankAccount.new("Alice", 100)
  account.add_balance(50)       # Deposit 50
  account.withdraw(30)          # Withdraw 30
  account.check_balance          # Check balance
  account.add_balance(-20)      # Attempt to deposit a negative amount
  account.withdraw(200)         # Attempt to withdraw more than balance
  
