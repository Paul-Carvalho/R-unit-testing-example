test_that("identity matrix is correct", {
  matrix1 <- identity_matrix(3)
  expect_equal(matrix1, matrix(c(1, 0, 0,
                                 0, 1, 0,
                                 0, 0, 1),
                               nrow = 3, ncol = 3))

})


test_that("identiy_matrix error handling", {
  expect_error(identity_matrix(-1))
  expect_error(identity_matrix("a"))
})

