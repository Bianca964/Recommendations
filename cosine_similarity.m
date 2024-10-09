function similarity = cosine_similarity(A, B)
  # TODO: Compute the cosine similarity between two column vectors.
  % normalize vectors
  A_norm = A / norm(A);
  B_norm = B / norm(B);
  
  % compute dot product
  similarity = dot(A_norm, B_norm);

endfunction
