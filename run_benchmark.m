function run_benchmark()
    file_count = 10000;  % Number of files for testing
    batch_size = 10;   % Adjust the batch size
    
    generate_files(file_count);  % Ensure files are generated

    % Serial search
    tic;
    serial_outcomes = serial_palindrome_search(file_count);
    serial_duration = toc;
    fprintf('Serial results: %s...\n', mat2str(serial_outcomes(1:10)));
    fprintf('Serial duration: %.4f seconds\n', serial_duration);

    % Parallel search with batch processing
    tic;
    parallel_outcomes = parallel_palindrome_search(file_count, batch_size);
    parallel_duration = toc;
    fprintf('Parallel results: %s...\n', mat2str(parallel_outcomes(1:10)));
    fprintf('Parallel duration: %.4f seconds\n', parallel_duration);

    % Calculate improvements
    speedup_factor = serial_duration / parallel_duration;
    efficiency_factor = speedup_factor / feature('numCores');
    fprintf('Speedup: %.2f\n', speedup_factor);
    fprintf('Efficiency: %.4f\n', efficiency_factor);
end
