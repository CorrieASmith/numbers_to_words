class Fixnum
  define_method(:numbers_to_words)do
    input_number=self

    single_digit_names={1=>"one", 2=>"two", 3=>"three", 4=>"four",
    5=>"five", 6=> "six", 7=>"seven", 8=>"eight", 9=>"nine",
    10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen",
    15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen",
    19=>"nineteen", 20=>"twenty", 30=>"thrity", 40=>"forty", 50=>"fifty", 60=>"sixty",
    70=>"seventy", 80=>"eighty", 90=>"ninety"}

    input_number_string=input_number.to_s()

    input_number_string_array=input_number_string.split("")

    input_number_fixnum_array=input_number_string_array
    input_number_string_array.map! do |number|
      number=number.to_i()
    end

    input_number_length=input_number_fixnum_array.length()

    last_two_digits=Array.new()
    last_digit=Array.new()
    last_two_digits = [].push(input_number_string_array[-2]).push(input_number_string_array[-1]).join().to_i()
    last_digit = [].push(input_number_string_array[-1]).join("").to_i()
    second_to_last_digit = [].push(input_number_string_array[-2]).join("").to_i()

    output=String.new()

    if input_number_length == 1
      output = "".concat(single_digit_names.fetch(last_digit))

    elsif input_number_length == 2
      output = "".concat(single_digit_names.fetch(last_two_digits))

    elsif input_number_length == 3

      output = "".concat(single_digit_names.fetch(input_number_fixnum_array[0]))
      output = output.concat("hundred")

      second_to_last_digit_spelled_out=String.new("")
      if second_to_last_digit == 1
        output = output.concat(single_digit_names.fetch(last_two_digits))
      elsif second_to_last_digit > 2
        output = "".concat(single_digit_names.fetch(input_number_fixnum_array[0]))
        output = output.concat("hundredand")
        output = output.concat(single_digit_names.fetch((last_two_digits.-last_digit)))
        output = output.concat(single_digit_names.fetch(last_digit))
      else
          output = "".concat(single_digit_names.fetch(input_number_fixnum_array[0]))
          output = output.concat("hundredand")
          output = output.concat(single_digit_names.fetch(last_digit))

      end
    end

  end
end
