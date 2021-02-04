
def int_valid?(input)
  input.is_a? Integer
end

def float_valid?(input)
  input.is_a Float
end

def monthly_payment_calc(loan_am, int_rate,duration)
  duration = duration * 12 # converts loan term to months
  monthly_int_rate = (int_rate.to_f / 100) / 12 # gets monthly interst rate needed for calc
  int_and_principal_rate = monthly_int_rate / (1 - (1 + monthly_int_rate)**-duration) # combines prin and int rate
  loan_am * int_and_principal_rate # returns final monthly payment
end

