# get the tiers for each position
class Players
  attr_accessor :position, :players_list
  @@all_players = []

  def self.all
    @@all_players
  end

  def save
    @@all_players << self
  end

end

class BCFF::Tiers

  def self.qb
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_QB.txt")).text
    qbs = Players.new
    qbs.position = "QB"
    qbs.players_list = doc
    qbs.save
    # binding.pry
  end

  def self.rb
    # ["rb1", "rb2"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_RB.txt")).text
    rbs = Players.new
    rbs.position = "RB"
    rbs.players_list = doc
    rbs.save
  end

  def self.wr
    # ["wr"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_WR.txt")).text
    wrs = Players.new
    wrs.position = "WR"
    wrs.players_list = doc
    wrs.save
  end

  def self.te
    # ["te"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_TE.txt")).text
    tes = Players.new
    tes.position = "TE"
    tes.players_list = doc
    tes.save
  end

  def self.flex
    # ["flex"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_Flex.txt")).text
    flexs = Players.new
    flexs.position = "Flex"
    flexs.players_list = doc
    flexs.save
  end

  def self.k
    # ["k"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_K.txt")).text
    kickers = Players.new
    kickers.position = "Kicker"
    kickers.players_list = doc
    kickers.save
  end

  def self.def
    # ["def"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_DST.txt")).text
    defenses = Players.new
    defenses.position = "Defense"
    defenses.players_list = doc
    defenses.save
  end
end
