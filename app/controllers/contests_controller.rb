class ContestsController < ApplicationController
  def destroy
    @contest = Contest.find(params[:id])
    @contest.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Contest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
