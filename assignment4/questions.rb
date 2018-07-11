require_relative "development"
class Question
  def display(q)
    puts q

    question={"question1"=>{"id"=>"1", "question"=>" Our personalities developed as a result of ______ .   ",        "A"=>"genetic inheritance ", "B"=>"environmental influences ","c"=>"both of the above  ",
               "D"=>"None "},
              "question2"=>{"id"=>"2", "question"=>"  Which of the following things can have an effect on the development of an individual's personality?
               ", "A"=>"physical and mental capabilities  ", "B"=>"health and physical appearance  ","c"=>"skin color, gender, and sexual orientation ", "D"=>"all of the above "},"question3"=>{"id"=>"3", "question"=>" Our personalities developed as a result of ______ .   ",        "A"=>"genetic inheritance ", "B"=>"environmental influences ","c"=>"both of the above  ",
               "D"=>"None "},"question4"=>{"id"=>"4", "question"=>" Our personalities developed as a result of ______ .   ",        "A"=>"genetic inheritance ", "B"=>"environmental influences ","c"=>"both of the above  ",
               "D"=>"None "}}
        puts question.select{|key, hash| hash["id"] == "#{q}" }

     dev=DevelopmentTest.new
     dev.accept_answer
  end
end

