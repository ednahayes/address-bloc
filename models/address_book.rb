  # #8
 require_relative 'entry'
 
 class AddressBook
     attr_reader :entries

     def initialize
       @entries = []
     end

 
    def add_entry(name, phone_number, email)
     # #9
     index = 0
     entries.each do |entry|
     # #10
       if name < entry.name
         break
       end
       index+= 1
     end
     # #11
     entries.insert(index, Entry.new(name, phone_number, email))
    end
    
    
    def remove_entry(name, phone_number, email)
    # Implementation goes here
        index = 0
        entries.each do |entry|
          if name == entry.name
              entries.delete(index, Entry.delete(name, phone_number, email))
          end
          index+= 1
      end
      
    end
 end