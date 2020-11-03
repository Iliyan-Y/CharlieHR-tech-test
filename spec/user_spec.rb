require "user"

describe User do
  
  it "creates user with name and date of bird" do 
    date_of_birth = Date.new​(​1986​, ​1​, ​1​)
    user = User.new("George", date_of_birth)
    expect(user.name).to eq "George"
    expec(user.date_of_birth).to eq date_of_birth
  end
  
end