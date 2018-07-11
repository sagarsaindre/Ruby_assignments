require_relative "questions"
class DevelopmentTest
  def display_question

   r = Random.new
   q= r.rand(1...10)
   puts "Question No=> #{q}"

    question=Question.new
    question.display(q)

  end
  def accept_answer()
    score=0
    puts "Enter your answer"
    ans=gets

    case ans
    when "A\n"
      score+=4
      puts score
      self.display_question
    when "B\n"
      score+=3
      puts score
      self.display_question
    end
  end
end

dev=DevelopmentTest.new
dev.display_question