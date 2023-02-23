class Users
   def initialize()
      @user_firstname = firstname
      @user_lastname = lastname
      @user_dob      = dob
   end
   def firstname
      print "first name is : #@user_firstname"
      @user_firstname = gets.chomp() 
   end
   def lastname 
      print "last name is : #@user_lastname" 
      @user_lastname = gets.chomp()
   end
   def dob
      print "date of birth is : #@user_dob"
      @user_dob = gets.chomp()
   end
   
   def display_details()
      puts "Users name is #@user_firstname #@user_lastname whose dob is #@user_dob"
   end
end
   use1 = Users.new()

   use1.display_details()


