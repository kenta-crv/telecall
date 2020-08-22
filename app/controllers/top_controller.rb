class TopController < ApplicationController

  def index
    @topics = Topic.order(created_at: "DESC").limit(3)
  end

  def apotakumi
  end

  def ritonal
    render layout: "ritonaru"
  end

  def mail
  end

  def engilance
  end

  def movies
  end

  def recruitment
  end

  def metal
  end

  def marketing
  end

  def business
  end

  def price
  end

  def president
  end

  def company
  end

  def privacy
  end

  def review
  end

  def recruit
  end

  def parttime20200822
  end

  def regular20200822
  end

  def script
  end

  def telework
  end

  def subcontracting
  end

  def homework
  end

  def question
  end

  def tcare
  end

  def oneday
  end

end
