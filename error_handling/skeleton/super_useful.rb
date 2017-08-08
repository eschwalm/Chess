# PHASE 2
def convert_to_int(str)
  Integer(str)
  rescue StandardError || RuntimeError
    nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
  rescue StandardError
    puts "#{maybe_fruit} is not a fruit"
    retry
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = check_name(name)
    @yrs_known = check_yrs(yrs_known)
    @fav_pastime = check_fav_pastime(fav_pastime)
    
  rescue StandardError
    retry
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end

  private

  def check_yrs(yrs_known)
    if yrs_known < 5
      raise StandardError.new('Years known is too short to be best friends!')
    else
      yrs_known
    end
  end

  def check_name(name)
    if name.length < 1
      raise StandardError.new("Please enter valid a name please..")
    else
      name
    end
  end

  def check_fav_pastime(pastime)
    if pastime.length < 1
      raise StandardError.new("Please enter valid pastime!")
    else
      pastime
    end
  end

end
