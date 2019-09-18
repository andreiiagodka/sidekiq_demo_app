class WorkersController < ApplicationController
  def index; end

  def queue_throw_dice_worker
    ThrowDiceWorker.perform_async
    redirect_to root_path
  end
end
