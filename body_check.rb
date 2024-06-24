class Body_check
  attr_accessor :name, :weight, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
  end

  def to_s
    "#{@name}, #{@weight}, #{@weight}"
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
    name = gets.chomp
    print "What is your weight in pounds? "
    weight = gets.chomp
    print "What is your height in feet? "
    height = gets.chomp
    @body_check << Body_check.new(name, weight, height)
    puts "Your data is recorded!"
  end

  def body_mass
    w = @weight
    h = @height
    bmi = w / (h**2)
    if bmi < 18.5
    puts "#{@name}, you have an underweight. Your body mass index is #{bmi}. \n Calculate your calorie intake to adjust your weight."
    elsif (bmi >= 18.5) && (bmi <= 24.9)
    puts "#{@name}, congratulations! You have a normal weight. Your body mass index is #{bmi}."
    else
    puts "#{@name}, you have an overweight. Your body mass index is #{bmi}. \n Calculate your calorie intake to adjust your weight."
    end
    
  end
end
