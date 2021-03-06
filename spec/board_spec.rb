require_relative '../lib/board.rb'

describe Board do
  let(:board) { Board.new }

  describe '#input_to_index' do
    it 'expect an integer and decrease it by one' do
      expect(board.input_to_index(1)).to eql(0)
    end
    it 'expect an integer and decrease it by one' do
      expect(board.input_to_index(9)).to eql(8)
    end
  end
  describe '#turn_count' do
    it 'return a integer value' do
      expect(board.turn_count).to eql(0)
    end
  end

  describe '#current_player' do
    it 'return X if turn_count return even values' do
      expect(board.current_player).to eql('X')
    end
  end

  describe '#position_taken?(input)' do
    it 'return false if Board position not occupied' do
      expect(board.position_taken?(1)).to eql(false)
    end
  end

  describe '#valid_move?(input)' do
    it 'return true if input  between 0 to 8 and position_taken is false' do
      expect(board.valid_move?(1)).not_to be false
    end
    it 'return false if input is not between 0 to 8 and position_taken is false' do
      expect(board.valid_move?(9)).not_to be true
    end
    it 'return false if input is  between 0 to 8 and position_taken is true' do
      expect(board.valid_move?(9)).not_to be true
    end
  end

  describe '#full?' do
    it 'return false if turn_count is not equal to 9' do
      expect(board.full?).not_to be true
    end
  end

  describe '#over?' do
    it 'return false if not true for  won?, full? and draw?' do
      expect(board.over?).not_to be true
    end
  end
end
