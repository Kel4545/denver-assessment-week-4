class DogHTMLPage  #Define methods of class DogHTMLPage
  attr_accessor :dog_count #Make dog_count available below--attr_reader instead here?? dog_count is not receiving anything

  def initialize(array_of_dogs) #Initialize array of dogs to use below
   @array_of_dogs = array_of_dogs
   @dog_count = array_of_dogs.length #Initialize length of array_of_dogs to use below
end

 def title #title method is array_of_dogs.length
   "<h1>There are #{display_dog_count} dogs</h1>" #use display_dog_count method here
 end

  def display_dog_count #Make another method here for when there is 0 dogs to print no
    if dog_count == 0
      'no'
    else
      dog_count
    end
  end

  def list #list method is list of dog names in order
      if @array_of_dogs != []    #If array is not empty print out list
        dog_list = @array_of_dogs.collect {|dog| dog[:name]}
        "<ul><li>#{dog_list[0]}</li><li>#{dog_list[1]}</li><li>#{dog_list[2]}</li><li>#{dog_list[3]}</li></ul>"
      else
        ""
      end
    end
end


#Notes:
#Should I initialize @array_of_dogs in attr_accessor as well--
#     so I'm not using @ symbol in methods??
#Is there a more efficient way to loop list in list method?
#How do I make list method more efficient & less convoluted?
# Should there be another method for just "", rather than including it in list method??
