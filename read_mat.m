function mat = read_mat(path)
  # TODO: Parse the .csv file and return the matrix of values (without row and column headers).

  % Read the .csv file
  data = csvread(path);

  % Extract the matrix of values without row and column headers
  mat = data(2:end, 2:end);

endfunction
