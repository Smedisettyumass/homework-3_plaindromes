function result = analyze_file(file_name)
    fid = fopen(file_name, 'r');
    string_data = fscanf(fid, '%s');
    fclose(fid);
    result = has_palindrome(string_data);
end
