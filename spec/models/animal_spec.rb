require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'has a name' do

    animal = Animal.create latin_name:'soemthigdn', kingdom:'sjofjdof'

    expect(animal.errors[:name]).to_not be_empty
  end
  it 'has a latin name' do

    animal = Animal.create name:'name', kingdom:'sjofjdof'

    expect(animal.errors[:name]).to_not be_empty
  end
  it "does not have the same common and latin name" do
    animal = Animal.create name:'hoooooo' latin_name:'hoooooo'
    expect(animal.errors.[:name]).not_to eq(:latin_name)
  end
end
  it 'has unique names' do
    Animal.create(name:'elllo', latin_name:'laasdfsd', kingdom:'asdfasdfa')
    animal = Animal.create(name:'elllo', latin_name:'latsdffdsin', kingdom:'asdfgasgdasfd')
    p (animal.errors[:name])
    expect(animal.errors[:name]).to_not be_empty
  end
  it 'has unique latin names' do
    Animal.create(name:'elllo', latin_name:'ggggggg', kingdom:'asdfasdfa')
    animal = Animal.create(name:'sdfelllo', latin_name:'ggggggg', kingdom:'asdfgasgdasfd')
    p (animal.errors[:latin_name])
    expect(animal.errors[:latin_name]).to_not be_empty
  end
  

end
