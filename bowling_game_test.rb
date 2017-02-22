require 'minitest/autorun'
require_relative 'bowling_game'

class BowlingGameTest < Minitest::Test
  def test_peter_game
    game = BowlingGame.new
    peter_game = Array.new(20, 0)
    assert_equal 0, game.rolls(peter_game)
  end

  def test_susie_game
    game = BowlingGame.new
    susie_game = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]
    assert_equal 133, game.rolls(susie_game)
  end

  def test_david_game
    game = BowlingGame.new
    david_game = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
    assert_equal 300, game.rolls(david_game)
  end

  def test_thomas_game
    game = BowlingGame.new
    thomas_game = [0, 4, 6] + [0] * 17
    assert_equal 10, game.rolls(thomas_game)
  end

  def test_sean_game
    game = BowlingGame.new
    sean_game = [0, 4, 6, 2] + [0] * 16
    assert_equal 12, game.rolls(sean_game)
  end

  def test_christian_game
    game = BowlingGame.new
    christian_game = Array.new(20, 1)
    assert_equal 20, game.rolls(christian_game)
  end

  def test_game_with_spare
    game = BowlingGame.new
    game_with_spare = [4, 6, 5] + [0] * 17
    assert_equal 20, game.rolls(game_with_spare)
  end

  def test_game_with_strike
    game = BowlingGame.new
    game_with_strike = [10, 3, 5] + [0] * 17
    assert_equal 26, game.rolls(game_with_strike)
  end
end
