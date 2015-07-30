require 'ship'

describe Ship do
  subject { Ship.destroyer }

  it { is_expected.to respond_to(:size) }

  describe 'knows the sizes of ships' do
    it "knows the size of a destroyer" do
      expect(Ship::DESTROYER_SIZE).to eq 2
    end

    it "knows the size of a cruiser" do
      expect(Ship::CRUISER_SIZE).to eq 3
    end

    it "knows the size of a submarine" do
      expect(Ship::SUBMARINE_SIZE).to eq 3
    end

    it "knows the size of a battleship" do
      expect(Ship::BATTLESHIP_SIZE).to eq 4
    end

    it "knows the size of a carrier" do
      expect(Ship::CARRIER_SIZE).to eq 5
    end
  end

  describe '.destroyer' do
    let(:destroyer) { Ship.destroyer }
    it "creates a new instance" do
      expect(destroyer).to be_a Ship
    end

    it "makes a ship with a size of 2" do
      expect(destroyer.size).to eq Ship::DESTROYER_SIZE
    end
  end

  describe '.battleship' do
    let(:battleship) { Ship.battleship }

    it "creates a new instance" do
      expect(battleship).to be_a Ship
    end

    it "makes a ship with a size of 4" do
      expect(battleship.size).to eq Ship::BATTLESHIP_SIZE
    end
  end
end





