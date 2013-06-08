require_relative "drew_crmdatabase"
db = Database.new
id = 1000

  # Display the crm greeting

loop do
  # Display the various options
  input = gets.chomp

  case input
  when "add"
    # Get the various contact attributes from the user and store them to variables
    # Insert those variables in a new contact and add them to the database
  when "modify"
    # Prompt the user to select an attribute
    # Confirm that they have selected the correct attribute
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully updated to the user 
  when "display all"
    # Display all of the contacts in the database to the user
  when "display contact"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display the corresponding contact
  when "display attribute"
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
    # Exit from the program
  end
end