module VacanciesHelper

	def approve_vacancy(vacancy)
		vacancy.confirmed? ? 'Confirmed' : 'Not confirmed'
	end

end
