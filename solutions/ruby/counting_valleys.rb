def counting_valleys steps, path
	current_level = 0 #starts at sea level
	valleys = 0

	path.split("").each do |step|
		if step == 'U' && current_level == -1
			valleys = valleys + 1
		end
		if step == 'D'
			current_level = current_level - 1
		else
			current_level = current_level + 1
		end		
	end
	valleys
end