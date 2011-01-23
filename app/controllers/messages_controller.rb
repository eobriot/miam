# -*- coding: utf-8 -*-
class MessagesController < ApplicationController
  
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.user = current_user
    respond_to do |format|
      if @message.save
        format.html { redirect_to(@message, :notice => 'Message créé') }
      else
        format.html {render :action => "new" }
      end
    end
  end

  def show
    @message = Message.find(params[:id])
  end

end
