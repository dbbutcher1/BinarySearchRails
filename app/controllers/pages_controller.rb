class PagesController < ApplicationController
  
  before_filter :init_inputs

  def create
	@search = params[:content]
	@result = chop(@search, @array, @array.length, 0)
  end

  def index
	
  end

  def contact
  end

  private
  def init_inputs
	@array = [1, 2, 3, 4, 5, 6, 7, 8, 9] 
  end

  def chop(ints, arrayOfInts, high, low)
	mid = (high + low) / 2
        ints = ints.to_i
	if ints == arrayOfInts[mid]
		return 0
	elsif ints > arrayOfInts[mid]
		return chop(ints, arrayOfInts, arrayOfInts.length, mid - 1)
	elsif ints < arrayOfInts[mid]
		return chop(ints, arrayOfInts, 0, mid + 1)
	else
		return -1;
	end
  end
end
