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

  def script
  end

  def question
  end

  def tcare
  end

  def oneday
  end

end
