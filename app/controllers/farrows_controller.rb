class FarrowsController < ApplicationController
  before_action :farrow_shuffle, only: [:index]
  
  def index
   @farrow = Library.order("created_at DESC")
  end

  private

  def farrow_shuffle
    library_farrow_shuffle = Library.order("created_at DESC")
    farrow_1 = library_farrow_shuffle.last(rand(24..27))
    farrow_2 = library_farrow_shuffle - farrow_1
    farrow_3_0 = farrow_1.slice(0)
    farrow_2.insert(rand(0..1),farrow_3_0)
    farrow_3_1 = farrow_1.slice(1)
    farrow_2.insert(rand(2..3),farrow_3_1)
    farrow_3_2 = farrow_1.slice(2)
    farrow_2.insert(rand(4..5),farrow_3_2)
    farrow_3_3 = farrow_1.slice(3)
    farrow_2.insert(rand(6..7),farrow_3_3)
    farrow_3_4 = farrow_1.slice(4)
    farrow_2.insert(rand(8..9),farrow_3_4)
    farrow_3_5 = farrow_1.slice(5)
    farrow_2.insert(rand(10..11),farrow_3_5)
    farrow_3_6 = farrow_1.slice(6)
    farrow_2.insert(rand(12..13),farrow_3_6)
    farrow_3_7 = farrow_1.slice(7)
    farrow_2.insert(rand(14..15),farrow_3_7)
    farrow_3_8 = farrow_1.slice(8)
    farrow_2.insert(rand(16..17),farrow_3_8)
    farrow_3_9 = farrow_1.slice(9)
    farrow_2.insert(rand(18..19),farrow_3_9)
    farrow_3_10 = farrow_1.slice(10)
    farrow_2.insert(rand(20..21),farrow_3_10)
    farrow_3_11 = farrow_1.slice(11)
    farrow_2.insert(rand(22..23),farrow_3_11)
    farrow_3_12 = farrow_1.slice(12)
    farrow_2.insert(rand(24..25),farrow_3_12)
    farrow_3_13 = farrow_1.slice(13)
    farrow_2.insert(rand(26..27),farrow_3_13)
    farrow_3_14 = farrow_1.slice(14)
    farrow_2.insert(rand(28..29),farrow_3_14)
    farrow_3_15 = farrow_1.slice(15)
    farrow_2.insert(rand(30..31),farrow_3_15)
    farrow_3_16 = farrow_1.slice(16)
    farrow_2.insert(rand(32..33),farrow_3_16)
    farrow_3_17 = farrow_1.slice(17)
    farrow_2.insert(rand(34..35),farrow_3_17)
    farrow_3_18 = farrow_1.slice(18)
    farrow_2.insert(rand(36..37),farrow_3_18)
    farrow_3_19 = farrow_1.slice(19)
    farrow_2.insert(rand(38..39),farrow_3_19)
    farrow_3_20 = farrow_1.slice(20)
    farrow_2.insert(rand(40..41),farrow_3_20)
    farrow_3_21 = farrow_1.slice(21)
    farrow_2.insert(rand(42..43),farrow_3_21)
    farrow_3_22 = farrow_1.slice(22)
    farrow_2.insert(rand(44..45),farrow_3_22)
    farrow_3_23 = farrow_1.slice(23)
    farrow_2.insert(rand(46..47),farrow_3_23)
    farrow_3_24 = farrow_1.slice(24)
    farrow_2.insert(rand(48..49),farrow_3_24)
    farrow_3_25 = farrow_1.slice(25)
    farrow_2.insert(rand(50..51),farrow_3_25)
    farrow_3_26 = farrow_1.slice(26)
    farrow_2.insert(rand(52..53),farrow_3_26)
    @farrow_shuffle = farrow_2.compact
  end
end
