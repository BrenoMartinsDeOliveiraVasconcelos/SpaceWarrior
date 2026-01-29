function zfilled_number(zeroes, num){
	var number_str = string(num)
	var num_chars = string_length(number_str)
	
	var total_zeroes = zeroes - num_chars
	var return_str = ""
	
	
	if (num_chars > zeroes){
		return string((1*power(10, zeroes))-1)
	}
	
	if (total_zeroes < 0){
		total_zeroes = 0
	}
	
	for (var zero=0; zero < total_zeroes; zero+=1){
		return_str += "0"
	}
	
	return_str += number_str
	
	return return_str
}