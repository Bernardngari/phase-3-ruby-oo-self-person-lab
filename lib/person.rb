# your code goes here
class Person
	attr_accessor :bank_account
	attr_reader :name, :hygiene, :happiness

	def initialize name
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(num)
		@happiness = num.clamp(0, 10)
	end

	def hygiene=(num)
		@hygiene = num.clamp(0,10)
	end

	def happy?
		self.happiness > 7
	end

	def clean?
		self.hygiene > 7
	end

	def get_paid(amount)
		self.bank_account += amount
		"all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		'♪ Rub-a-dub just relaxing in the tub ♫'
	end

	def work_out
		self.hygiene -= 3
		self.happiness +=2
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness += 3
		friend.happiness += 3
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person,topic)
		case topic
		when "politics"
			[self, person].each{|each_party| each_party.happiness -= 2}
			"blah blah partisan blah lobbyist"
		when "weather"
			[self, person].each{|each_party| each_party.happiness += 1}
			"blah blah sun blah rain"
		else
			 "blah blah blah blah blah"
		end
	end
end
 bernard = Person.new("Ngari")

 puts bernard.happiness