require_relative "drew_crmcontact"
class Database
  attr_accessor :contacts_array

  def initialize
    @contacts_array = Array.new
  end



  def add(contact)

    @contacts_array << contact
  end

  def modify_contact(selection, attribute, modification)
    # @contacts_array.each do |contact|
    #   contact.map! { |selection| selection ==  ? modification : x}
    # end

      #if attribute


      #1. I need to target an contact based on attribute
  end

  #DONE
  def display_all_contacts
    @contacts_array.each do |contact|
      contact.display_contact
    end
  end

  #DONE
  def display_particular_contact(contact)
    @contacts_array.each do |person|
      if person.firstname == contact
        person.display_contact
      end
    end
  end

  #DONE
  def display_info_by_attribute(attribute)

    @contacts_array.each do |person|
      if attribute == "first name"
        puts person.firstname
      elsif attribute == "last name"
      puts person.lastname
      end

    end
    #if "firstname" is typed, all first names of contacts should be printed. 

  end

  def delete_contact(attribute)
  end
end

