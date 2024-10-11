function generate_files(count)
    folder_name = 'random_files';
    if ~exist(folder_name, 'dir')
        mkdir(folder_name);  % Create directory if it doesn't exist
    end
    for index = 1:count
        file_path = fullfile(folder_name, sprintf('random_%d.txt', index));
        create_file_with_random_data(file_path);
        fprintf('Generated: %s\n', file_path);  % Debugging print statement
    end
end
