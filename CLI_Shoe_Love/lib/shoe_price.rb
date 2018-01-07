 require "lorem"

 module Lorem
   class CLI < Thor

     desc "ipsum", "Lorem Ipsum text generator"
       def ipsum
         puts Lorem.ipsum
     end
   end
  end