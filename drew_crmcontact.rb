class Contact
  attr_accessor :id, :firstname, :lastname, :email, :notes
 
  def initialize(firstname, lastname, email, notes, id)
    @id = id 
    @firstname = firstname
    @lastname = lastname
    @email = email
    @notes = notes
  end

  def display_contact
    puts ""
    puts "id: #{@id}"
    puts "first name: #{@firstname}"
    puts "last name: #{@lastname}"
    puts "email: #{@email}"
    puts "notes: #{@notes}"  
  end
end


