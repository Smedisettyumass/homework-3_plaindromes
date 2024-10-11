function results = parallel_palindrome_search(file_count, batch_size)
    % Pre-allocate cell array for parallel compatibility
    num_batches = ceil(file_count / batch_size);
    results_cell = cell(1, num_batches);  % Use a cell array to avoid classification issues

    parfor batch_idx = 1:num_batches
        batch_results = [];  % Temporary variable to store batch results
        start_idx = (batch_idx - 1) * batch_size + 1;
        end_idx = min(batch_idx * batch_size, file_count);
        
        % Process a batch of files
        for file_idx = start_idx:end_idx
            file_path = fullfile('random_files', sprintf('random_%d.txt', file_idx));
            batch_results = [batch_results, analyze_file(file_path)];
        end
        
        % Store the results for this batch
        results_cell{batch_idx} = batch_results;
    end

    % Convert the cell array back to a regular array
    results = [results_cell{:}];
end
