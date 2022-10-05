class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  
  def play_rock
    render({:template => "/game_templates/rock.html.erb"})
  end

  def play_paper
    render({:template => "/game_templates/paper.html.erb"})
  end

  def play_scissors

     index = rand(3)

 moves = ["rock", "paper", "scissors"]

 @comp_move = moves.at(index)

 if @comp_move == "rock"
   @outcome = "lost"
 elsif @comp_move == "paper"  
   @outcome = "won"
 elsif @comp_move == "scissors"  
   @outcome = "tied"
 end  

    render({:template => "/game_templates/scissors.html.erb"})
  end
end
