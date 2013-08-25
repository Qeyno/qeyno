class MenteesController < UsersController
	XPTAG_TIME = [
		['1 to 10 hours (monthly)', 1],
		['1 to 10 hours (weekly)', 2],
		['10 to 20 hours (weekly)', 3],
		['20 to 30 hours (weekly)', 4],
		['30+ hours (weekly)', 5]
	]

	XPTAG_TIME_MAP = {
		1 => '1 to 10 hours (monthly)',
		2 => '1 to 10 hours (weekly)',
		3 => '10 to 20 hours (weekly)',
		4 => '20 to 30 hours (weekly)',
		5 => '30+ hours (weekly)'
	}

	def edit
		@XPTAG_TIME = XPTAG_TIME
	end

	def show
		@user = User.find(params[:id])
		@XPTAG_TIME_MAP = XPTAG_TIME_MAP
	end
end