class Person
  attr_accessor :first_name, :last_name

  def initialize
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    "#{@first_name}, #{@last_name}"
  end

  def run
    puts "Welcome to the Body check CLI!"
    print "What is your name? "
    self.first_name = gets.chomp.capitalize!
    print "What is your last name? "
    self.last_name = gets.chomp.capitalize!
    puts "\n"
    puts "Hi #{@first_name} #{@last_name}! What would you like to do today?"
    check
  end

  def check
    loop do
      puts "\n"
      puts "1. Calculate your body mass index"
      puts "2. Calculate your calorie intake"
      puts "3. Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        body_mass
      when 2
        calorie_intake
      when 3
          puts "See you in a bit!"
          break
      else
          puts "Enter a number from 1 to 3."
      end
    end
  end

  def body_mass
    print "#{@first_name}, what is your weight in pounds? "
    weight = gets.chomp
    print "#{@first_name}, what is your height in feet? "
    height = gets.chomp
    w = weight.to_f
    h = height.to_f
    bmi = w / (h**2)
    puts "\n"
    if bmi < 18.5
      puts "#{@first_name}, you have an underweight. Your body mass index is #{bmi}. Calculate your calorie intake to adjust your weight."
    elsif (bmi >= 18.5) && (bmi <= 24.9)
      puts "#{@first_name}, congratulations! You have a normal weight. Your body mass index is #{bmi}."
    else
      puts "#{@first_name}, you have an overweight. Your body mass index is #{bmi}. Calculate your calorie intake to adjust your weight."
    end  
  end

end
