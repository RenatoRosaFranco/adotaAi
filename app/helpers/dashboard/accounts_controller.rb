# frozen_string_literal: true

class Dashboard::AccountsController < ApplicationController
  def index

  end

  def edit

  end

  def update

  end

  def destroy
    @account.destroy
  end

  private

  def account_params
    params.require(:user)
      .permit()
  end
end