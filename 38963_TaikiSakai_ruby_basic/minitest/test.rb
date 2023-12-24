require 'minitest/autorun'
require './ruby_basic_02/answer'

class Chapter2Test < Minitest::Test
  def test_chapter02_01
    assert_equal [["ひさじゅ", 100], ["らんてくん", 98], ["だいそん", 84], ["ファラオ", 57], ["カンノ", 23]], chapter02_01([["らんてくん", 98],["カンノ", 23],["ファラオ", 57],["だいそん", 84],["ひさじゅ", 100]])
    assert_equal [["Chemistry", 65],["Physics", 57], ["Math", 50]], chapter02_01([["Math", 50],["Chemistry", 65],["Physics", 57]])
  end
end
