require './hero.rb'

describe Hero do
  
  it "has a capitalized name" do
    hero = Hero.new 'mike'

    expect(hero.name).to eq 'Mike'
  end
  it "has a health_up" do
    hero = Hero.new 'mike'

    expect(hero.health_up).to eq 110
  end

end