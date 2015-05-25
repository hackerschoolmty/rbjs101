# Write a script to set up interviews for all candidates
# Rules are:
# 1. 2 random interviewers per candidate
# 2. When the interviewers are selected send an e-mail to the candidate informing them of the selection
## Hint!
# rand(n) gives you a random number from 0 to n
# 
## Sample output:
## Sending E-mail to: luis.castillo@practum.com
## Hola Luis Emmanuel Castillo Chapa
## Tus entrevistadores son JP y Benito

INTERVIEWERS = [
  {name: 'Adrian', email: 'adrian@hsmty.mx'},
  {name: 'Kuri', email: 'kuri@hsmty.mx'},
  {name: 'JP', email: 'jp@hsmty.mx'},
  {name: 'Edo', email: 'edo@hstmty.mx'},
  {name: 'Benito', email: 'benji@hsmty.mx'}
]

CANDIDATES = [
  {:name=>"Jesus Lerma", :email=>"hacker1@gmail.com"}, 
  {:name=>"Alejandro Sandoval", :email=>"hacker2@gmail.com"}, 
  {:name=>"Eduardo Romero", :email=>"hacker3@outlook.com"}, 
  {:name=>"Benjamin Moreno", :email=>"hacker4@cedim.edu.mx"}, 
  {:name=>"William Alvarez", :email=>"hacker5@gmail.com"}, 
  {:name=>"Pablo De Jess Garca", :email=>"hacker6@hotmail.com"}, 
  {:name=>"Luis Arturo Cerda", :email=>"hacker7@gmail.com"}, 
  {:name=>"Rodrigo Camargo", :email=>"hacker8@gmail.com"}, 
  {:name=>"Andres Garza", :email=>"hacker9@gmail.com"}, 
  {:name=>"Josue Zavala", :email=>"hacker10@prodigy.net.mx"}, 
  {:name=>"Juan Garcia", :email=>"hacker11@gmail.com"}, 
  {:name=>"Yaser Almasri", :email=>"hacker12@outlook.com"}, 
  {:name=>"Omar Manjarrez", :email=>"hacker13@outlook.com"}, 
  {:name=>"Esteban Lara", :email=>"hacker14@esnilara.com"}, 
  {:name=>"Daniel Brambila", :email=>"hacker15@gmail.com"}, 
  {:name=>"Jose Contreras", :email=>"hacker16@evitra.mx"}, 
  {:name=>"Gustavo Prez", :email=>"hacker17@gmail.com"}, 
  {:name=>"Eduardo Williams", :email=>"hacker18@tegik.com"}, 
  {:name=>"Oliver Mendoza", :email=>"hacker19@hotmail.com"}, 
  {:name=>"Angel Montoya", :email=>"hacker20@gmail.com"}, 
  {:name=>"Luis Castillo", :email=>"hacker21@practum.com"}, 
  {:name=>"Daniel Brambila", :email=>"hacker22@gmail.com"}
]

def email(address, &block)
  puts "Sending E-mail to: #{address}"
  yield
end

## Your script starts here



## Your script ends here