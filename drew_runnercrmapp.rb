require_relative "drew_crmdatabase"

db = Database.new #is this essentially the same as hangman.new?
id = 0

  # Display the crm greeting

loop do
  puts "\nType add, modify, display all, display contact,
display attribute, delete or exit."
  input = gets.chomp

  case input
  when "add"

    puts "What\'s your first name homie?"
    firstname = gets.chomp
    puts "Last name?"
    lastname = gets.chomp
    puts "Email address?"
    email = gets.chomp
    puts "Do you have any notes?"
    notes = gets.chomp
    id += 1

    db.add(Contact.new(firstname, lastname, email, notes, id)) #DREW: this line means we're calling the
    # #database and adding another object, Contacts, to the database, which has 4 diff attributes. 

    # Get the various contact attributes from the user and store them to variables
    # Insert those variables in a new contact and add them to the database
  when "modify"
    puts "select an attribute, first name, last name, email or id of contact you want to modify"
    selection = gets.chomp
    db.display_particular_contact(selection)
    person= particular_contact
    puts "Type yes to confirm modifying this contact's details"
    yesenter = gets.chomp
    if yesenter == "yes"
      puts "Please enter the new value for this contact's attribute"
      attribute = gets.chomp
      db.modify_contact(selection, attribute, modification)

    end



    # Prompt the user to select an attribute
    # Confirm that they have selected the correct attribute
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully updated to the user 
  when "display all"
    db.display_all_contacts

    # Display all of the contacts in the database to the user
  when "display contact"

    puts "Enter first name, last name, email or id of the contact you want to display."
    contact = gets.chomp
    db.display_particular_contact(contact)

    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display the corresponding contact
  when "display attribute"
    puts "type id, first name, last name, email, or notes"
    
    attribute = gets.chomp
    db.display_info_by_attribute(attribute)

    # Prompt the user to search the database by one of the five attributes (E.g. "ID")
    # Display all of the the contacts by that attribute
  when "delete"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display a prompt to confirm "yes" or "no"
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully deleted to the user
    # If 'no', prompt them to type the new value for the attribute
    # Display that the contact could not be found to the user
  when "exit"
    break
  end

end