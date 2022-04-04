# methods for returning the fibonacci sequence of a given length with and without recursion.
# frozen_string_literal: true

def fibs(number)
  sequence = [0, 1]
  sequence << sequence[-1] + sequence[-2] while sequence.length < number
  p sequence
end

fibs(8)

def fibs_rec(number)
  if number < 2
    number
  else
    fibs_rec(number - 1) + fibs_rec(number - 2)
  end
end

puts fibs_rec(7)
