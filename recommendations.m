function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
  # TODO: Get the best `num_recoms` recommandations similar with 'liked_theme'.

  % Step 1: Load the matrix from the .csv file
  mat = read_mat(path);
  
  % Step 2: Preprocess the matrix to remove users with fewer than min_reviews
  processed_mat = preprocess(mat, min_reviews);
  
  % Step 3: Compute the reduced SVD of the matrix
  [~, ~, V] = svds(processed_mat, num_features);
  
  % Step 4: Compute similarity of each theme with the liked theme
  liked_theme_vector = V(liked_theme, :)
  similarities = zeros(1, size(V, 1));
  for i = 1:size(V, 1)
      similarities(1, i) = cosine_similarity(V(i, :), liked_theme_vector);
  endfor
  
  % Step 5: Sort themes by similarity in descending order
  [~, sorted_indices] = sort(similarities, 'descend');

  % Step 6: Return the indices of the top num_recoms themes
  recoms = sorted_indices(2:num_recoms+1);

endfunction
