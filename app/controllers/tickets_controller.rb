class TicketsController < ApplicationController
  def create
    ticket = Ticket.new(ticket_params)
    if ticket.save
      redirect_to :back
    end
  end

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

  private

  def ticket_params
    params.require(:ticket).permit(:title, :description, :status)
  end
end
