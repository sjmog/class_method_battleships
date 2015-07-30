# As a player,
# So I can place ships real easy
# I want to create ships using the ship names

describe 'Features' do
  describe 'create ships by using the ship names' do
    it 'create a destroyer' do
      ship = Ship.destroyer
      expect(ship.size).to eq Ship::DESTROYER_SIZE
    end

    it 'create a battleship' do
      ship = Ship.battleship
      expect(ship.size).to eq Ship::BATTLESHIP_SIZE
    end
  end
end