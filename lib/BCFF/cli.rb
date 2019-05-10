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
    puts "Enter the position you want to see the tier list for, or type exit to close the program."
    while input != "exit"
      input = gets.strip.downcase

      if input == "qb"
        puts "Here are #{input}s"
        # scrape_qb
      elsif input == "rb"
        puts "Here are #{input}s"
        # scrape_rb
      elsif input == "wr"
        puts "Here are #{input}s"
        # scrape_wr
      elsif input == "te"
        puts "Here are #{input}s"
        # scrape_te
      elsif input == "flex"
        puts "Here are #{input}s"
        # scrape_flex
      elsif input == "k"
        puts "Here are #{input}s"
        # scrape_k
      elsif input == "def"
        puts "Here are #{input}s"
        # scrape_def
      else
        puts "Please enter a valid position: qb, rb, wr, te, flex, k, def, or exit"
      end
    end
  end

  def goodbye
    puts "Thank you for checking out my CLI!"
  end


end
