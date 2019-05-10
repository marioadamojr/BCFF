# get the tiers for each position
class BCFF::Tiers

  def self.qb
    # ["QB1", "QB2"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_QB.txt")).text
    # binding.pry
    doc
  end

  def self.rb
    # ["rb1", "rb2"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_RB.txt")).text
    doc
  end

  def self.wr
    # ["wr"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_WR.txt")).text
    doc
  end

  def self.te
    # ["te"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_TE.txt")).text
    doc
  end

  def self.flex
    # ["flex"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_Flex.txt")).text
    doc
  end

  def self.k
    # ["k"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_K.txt")).text
    doc
  end

  def self.def
    # ["def"]
    doc = Nokogiri::HTML(open("https://s3-us-west-1.amazonaws.com/fftiers/out/text_DST.txt")).text
    doc
  end

end
