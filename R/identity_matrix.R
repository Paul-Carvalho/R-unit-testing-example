#' Create an identity matrix of size n
#'
#' @param n A positive integer specifying the size of the matrix (n x n)
#' @return An n x n identity matrix
identity_matrix <- function(n) {
  if (!is.numeric(n) || n <= 0 || n != floor(n)) {
    stop("n must be a positive integer")
  }
  diag(n)
}
