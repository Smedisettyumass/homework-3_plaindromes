function create_file_with_random_data(file_name)
    characters = char('A':'Z');  % All uppercase letters
    % Generate a 5-letter palindrome
    palindrome_seq = [characters(randi(26, 1, 2)), characters(randi(26)), characters(randi(26, 1, 2))];
    random_seq = [characters(randi(26, 1, 995)), palindrome_seq];
    shuffled_seq = random_seq(randperm(length(random_seq)));  % Shuffle the sequence

    % Write to file
    fid = fopen(file_name, 'wt');
    fprintf(fid, '%s', shuffled_seq);
    fclose(fid);
end
