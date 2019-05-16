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
    @all_positions = ["qb", "rb", "wr", "te", "flex", "kicker", "defense"]

    @positions = {}
    @positions[:qb] = BCFF::Tiers.qb
    @positions[:rb] = BCFF::Tiers.rb
    @positions[:wr] = BCFF::Tiers.wr
    @positions[:te] = BCFF::Tiers.te
    @positions[:flex] = BCFF::Tiers.flex
    @positions[:kicker] = BCFF::Tiers.k
    @positions[:defense] = BCFF::Tiers.def
  end

  def tiers
    input = nil
    while input != "exit"
      puts "Enter the position you want to see the tier list for.\nTo see a list of possible positions, type list. To close the program, type exit."

      input = gets.strip.downcase

      if input == "list"
        puts @all_positions
      elsif input == "qb"
        # binding.pry
        # old way
        # puts "Here are #{input}s"
        # puts @positions[:"#{input}"]
        puts "Here are #{input}s"
        Players.all.each do |i|
          if i.position == "QB"
            puts i.players_list
          end
          # binding.pry
        end
      elsif input == "rb"
        puts "Here are #{input}s"
        Players.all.each do |i|
          if i.position == "RB"
            puts i.players_list
          end
        end
      elsif input == "wr"
        puts "Here are #{input}s"
        Players.all.each do |i|
          if i.position == "WR"
            puts i.players_list
          end
        end
      elsif input == "te"
        puts "Here are #{input}s"
        Players.all.each do |i|
          if i.position == "TE"
            puts i.players_list
          end
        end
      elsif input == "flex"
        puts "Here are #{input}s"
        Players.all.each do |i|
          if i.position == "Flex"
            puts i.players_list
          end
        end
      elsif input == "kicker"
        puts "Here are #{input}s"
        Players.all.each do |i|
          if i.position == "Kicker"
            puts i.players_list
          end
        end
      elsif input == "defense"
        puts "Here are #{input}s"
        Players.all.each do |i|
          if i.position == "Defense"
            puts i.players_list
          end
        end
      else
        puts "Please enter a valid position: qb, rb, wr, te, flex, kicker, defense, or exit"
      end
    end
  end

  def goodbye
    puts "Thank you for checking out my CLI!"
  end


end
