# CLI code, brings in the methods created in tiers.rb

class BCFF::CLI

  def call
    greeting
    tiers
    goodbye
  end

  def greeting
  end

  def tiers
  end

  def goodbye
    puts "Thank you for checking out my CLI!"
  end

end
