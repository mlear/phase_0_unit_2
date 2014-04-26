# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)  #Defining a method to pass a string agurment into
    alphabet = ('a'..'z').to_a  #creating an array with individual letters as string elements
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]  #generating a hash using alphabet as the key, and the elements of alphabet rotated 4 spots to be the value.
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #generating and array of symbols as string elements.
    
    original_sentence = sentence.downcase  #making sure the input is all lowercase
    encoded_sentence = [] #generating a new array to hold the new string
    original_sentence.each_char do |element|  #calling on each element to be passed into the method
      if cipher.include?(element)  #checking to see if the element is a key in the cipher hash
        encoded_sentence << cipher[element]  #if so, its value is placed in the new aray
      elsif element == ' ' #checking to see if there is a space in the string
        encoded_sentence << spaces.sample #if so, it places one of the spaces array elements into the new array
      else 
        encoded_sentence << element #otherwise, it puts whatever element is there into the new array
      end
     end
    
    return encoded_sentence.join  # joins the elements of the new array into a string.
end


# Questions:
# 1. What is the .to_a method doing?  It taking the elements of 'a'..'z' and adding them to the alphabet array
# 2. How does the rotate method work? What does it work on?  rotate rotates the indexs of the array its called on by the value of the agrument that you pass it.
# 3. What is `each_char` doing?  it's interating through the passed argument character by character
# 4. What does `sample` do?  it randomly chooses an element of the array that it is called upon.
# 5. Are there any other methods you want to understand better?  More than I can list ehre.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?  We could have used the .each_car method instead of splitting the input into a new array.  We could also have used the rotate method.  Neither of which, however, we knew existed before this exercise!  Learning!
# 7. Is this good code? What makes it good? What makes it bad?  It is good to the extent of how clean it is.  There is not much repetition going on at all.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

# everytime I think that I have some clear and concise, I learn of another method that could of made it the coding even simpler.
# I suppose that at some point, I will know enough where that won't happen EVERY single exercise.  It's nice to learn new
# things by examining someone elses code when you already know what its supposed to do, and that it works.