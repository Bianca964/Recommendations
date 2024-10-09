function reduced_mat = preprocess(mat, min_reviews)
  # TODO: Remove all user rows from `mat` that have strictly less then `min_reviews` reviews.
  
  % find the number of reviews for each user
  num_reviews_per_user = sum(mat ~= 0, 2);
  
  % find indices of users with at least min_reviews
  valid_indices = num_reviews_per_user >= min_reviews;
  
  % filter out users with fewer than min_reviews
  reduced_mat = mat(valid_indices, :);

endfunction
