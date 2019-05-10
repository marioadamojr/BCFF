# CLI code, brings in the methods created in tiers.rb

class BCFF::CLI

  def call
    greeting
    tiers
    goodbye
  end

  def greeting
    @positions = []

  end

  def tiers
    input = nil
    while input != "exit"
      puts "Enter the position you want to see the tier list for, or type exit to close the program."
      input = gets.strip.downcase

      if input == "qb"
        puts "Here are #{input}s"
        scrape_"#{input}"
      elsif input == "rb"
        puts "#{input}"
      else
        "Please enter a valid position: qb, rb, wr, te, flex, k, def, or exit"
      end
    end
  end

  def goodbye
    puts "Thank you for checking out my CLI!"
  end

  def scrape_qb
  end

end
