class HomeController < ApplicationController
	def index
		@limit = 103
		@header = find_odd_nums(@limit)
		@composites = find_composites(@limit)
	end

	def composite_search
		@limit = params[:limit].to_i
		@header = find_odd_nums(@limit)
		@composites = find_composites(@limit)
		render 'home/index'
	end

	protected

	require 'prime'

	def find_odd_nums(limit)
		arr = []
		(1+limit).times do |x|
			if x.odd?
				arr << x
			end
		end
		arr
	end

	def find_composites(limit)
		find_odd_nums(limit).map { |x| find_odd_nums(limit).map { |y| (x * y).to_s }}
	end
end

