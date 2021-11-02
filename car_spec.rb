require './car.rb'

describe Car do
  it 'add_fuel' do
    # arrange
    car = Car.new
    # act
    result = car.add_fuel(10)
    # assert
    expect(car.range).to eq 200
  end
  
end