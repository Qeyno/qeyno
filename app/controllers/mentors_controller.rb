class MentorsController < UsersController
	XPTAG = [
		['Beginner (1 - 3 years)', 1],
		['Novice (3 - 5 years)', 2],
		['Professional (5 to 10 years)', 3],
		['Expert (10 to 20 years)', 4],
		['Master (20+ years)', 5]
	]

	XPTAG_MAP = {
		1 => 'Beginner (1 - 3 years)',
		2 => 'Novice (3 - 5 years)',
		3 => 'Professional (5 to 10 years)',
		4 => 'Expert (10 to 20 years)',
		5 => 'Master (20+ years)'
	}

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
		@XPTAG = XPTAG
		@XPTAG_TIME = XPTAG_TIME
	end

	def show
		@user = User.find(params[:id])
		@XPTAG_MAP = XPTAG_MAP
		@XPTAG_TIME_MAP = XPTAG_TIME_MAP
	end

end