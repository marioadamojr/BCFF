# CLI code, brings in the methods created in tiers.rb
require_relative "./tiers.rb"
class BCFF::CLI

  def call
    greeting
    tiers
    goodbye
  end

  def greeting
    puts "Welcome"
    # @all_positions = ["qb", "rb", "wr", "te", "flex", "k", "def"]

    @positions = {}
    @positions[:qb] = BCFF::Tiers.qb
    @positions[:rb] = BCFF::Tiers.rb
    @positions[:wr] = BCFF::Tiers.wr
    @positions[:te] = BCFF::Tiers.te
    @positions[:flex] = BCFF::Tiers.flex
    @positions[:k] = BCFF::Tiers.k
    @positions[:def] = BCFF::Tiers.def

    # below is a WIP
    # @all_positions = ["qb", "rb", "wr", "te", "flex", "k", "def"]
    # @all_tiers = [
    #   BCFF::Tiers.qb,
    #   BCFF::Tiers.rb,
    #   BCFF::Tiers.wr,
    #   BCFF::Tiers.te,
    #   BCFF::Tiers.flex,
    #   BCFF::Tiers.k,
    #   BCFF::Tiers.def]
    #
    # @positions = {}
    #
    # @all_positions.each_with_index do |p, i|
    #   @positions[:p] = @all_tiers[i]
    # end
  end

  def tiers
    input = nil
    puts "Enter the position you want to see the tier list for, or type exit to close the program."
    while input != "exit"
      input = gets.strip.downcase

      if input == "qb"
        puts "Here are #{input}s"
        puts @positions[:"#{input}"]
      elsif input == "rb"
        puts "Here are #{input}s"
        puts @positions[:"#{input}"]
      elsif input == "wr"
        puts "Here are #{input}s"
        puts @positions[:"#{input}"]
      elsif input == "te"
        puts "Here are #{input}s"
        puts @positions[:"#{input}"]
      elsif input == "flex"
        puts "Here are #{input}s"
        puts @positions[:"#{input}"]
      elsif input == "k"
        puts "Here are #{input}s"
        puts @positions[:"#{input}"]
      elsif input == "def"
        puts "Here are #{input}s"
        puts @positions[:"#{input}"]
      else
        puts "Please enter a valid position: qb, rb, wr, te, flex, k, def, or exit"
      end
    end
  end

  def goodbye
    puts "Thank you for checking out my CLI!"
  end


end
