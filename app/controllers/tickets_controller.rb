class TicketsController < ApplicationController
  def update 
    receiver = params[:send]
    ticket = Ticket.find(params[:id])
    if receiver == "bl"
      ticket.status = "backlog"
    elsif receiver == "cs"
      ticket.status = "current sprint"
    elsif receiver == "ip"
      ticket.status = "in progress"
    else
      ticket.status = "done"
    end
    ticket.save
    redirect_to :back
  end
end
