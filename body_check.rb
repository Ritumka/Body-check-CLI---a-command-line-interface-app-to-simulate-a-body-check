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
    loop do
      puts "\n"
      puts "Welcome to the Body check CLI!"
      puts "1. Enter your data"
      puts "2. Calculate your body mass index"
      puts "3. Calculate your calorie intake"
      puts "4. Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_data
      when 2
        body_mass
      when 3
        calorie_intake
      when 4
        puts "See you in a bit!"
        break
      else
        puts "Enter a number from 1 to 4."
      end
    end
  end

  private

  def add_data
    print "What is your name? "
    self.first_name = gets.chomp
    print "What is your last name? "
    self.last_name = gets.chomp
    puts "Your data is recorded!"
  end

  def body_mass
    print "#{@first_name}, what is your weight in pounds? "
    weight = gets.chomp
    print "#{@first_name}, what is your height in feet? "
    height = gets.chomp
    w = weight.to_f
    h = height.to_f
    bmi = w / (h**2)
    if bmi < 18.5
    puts "#{@first_name}, you have an underweight. Your body mass index is #{bmi}. \n Calculate your calorie intake to adjust your weight."
    elsif (bmi >= 18.5) && (bmi <= 24.9)
    puts "#{@first_name}, congratulations! You have a normal weight. Your body mass index is #{bmi}."
    else
    puts "#{@first_name}, you have an overweight. Your body mass index is #{bmi}. \n Calculate your calorie intake to adjust your weight."
    end
    
  end
end
