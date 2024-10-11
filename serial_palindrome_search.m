function results = serial_palindrome_search(file_count)
    results = zeros(1, file_count);
    for index = 1:file_count
        file_path = fullfile('random_files', sprintf('random_%d.txt', index));
        results(index) = analyze_file(file_path);
    end
end
