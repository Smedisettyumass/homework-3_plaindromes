function result = has_palindrome(string_data)
    % Find any 5-character palindromes
    result = 0;
    for idx = 1:(length(string_data) - 4)
        sub_string = string_data(idx:idx + 4);
        if isequal(sub_string, flip(sub_string))  % Check if the substring is a palindrome
            result = 1;
            return;
        end
    end
end
