import random

class GamblingGame:
    def __init__(self):
        self.balance = 100
        self.play()

    def play(self):
        print("Welcome to the Gambling Game!")
        print(f"Your current balance: {self.balance}")

        while self.balance > 0:
            bet = self.get_bet()
            if bet == 0:
                print("Thank you for playing!")
                break
            
            outcome = self.play_round()
            if outcome == 'win':
                print("Congratulations! You won!")
                self.balance += bet
            else:
                print("Sorry, you lost.")
                self.balance -= bet

            print(f"Your current balance: {self.balance}")

        print("Game over!")

    def get_bet(self):
        while True:
            try:
                bet = int(input("Enter your bet (0 to quit): "))
                if bet < 0 or bet > self.balance:
                    print("Invalid bet amount.")
                else:
                    return bet
            except ValueError:
                print("Please enter a valid number.")

    def play_round(self):
        num = random.randint(1, 10)
        guess = int(input("Guess a number between 1 and 10: "))
        print(f"The number was {num}")
        if guess == num:
            return 'win'
        else:
            return 'lose'

if __name__ == "__main__":
    game = GamblingGame()
m    
