require 'user'


describe User do
  
  it "creates user with name and date of bird" do 
    date_of_birth = Date.new(1991,1,1)
    user = User.new("George", date_of_birth)
    expect(user.name).to eq "George"
    expect(user.date_of_birth).to eq date_of_birth
  end
  
  describe "#age" do 
    it "returns the current age of the user" do 
      date_of_birth = Date.new(1985,11,1)
      user = User.new("George", date_of_birth)
      expect(user.age).to eq 35
    end

    it "returns the correct current age of the user each time" do 
      date_of_birth = Date.new(1986,1,1)
      user = User.new("George", date_of_birth)
      expect(user.age).to eq 34
    end

    it "returns the correct current age of the user each time" do 
      date_of_birth = Date.new(1988, Date.today.month, Date.today.day)
      user = User.new("George", date_of_birth)
      expect(user.age).to eq 32
    end
  end

  describe "#next_birthday" do 
    it "return the user's next birthday" do 
      date_of_birth = Date.new(1985,11,1)
      user = User.new("George", date_of_birth)
      expect(user.next_birthday).to eq "2021-11-01"
    end

    it "return different user next birthday" do 
      date_of_birth = Date.new(1986,1,1)
      user = User.new("George", date_of_birth)
      expect(user.next_birthday).to eq "2021-01-01"
    end

    it "return different user next birthday" do 
      date_of_birth = Date.new(1988, Date.today.month, Date.today.day)
      user = User.new("George", date_of_birth)
      expect(user.next_birthday).to eq "2021-11-03"
    end
  end
end