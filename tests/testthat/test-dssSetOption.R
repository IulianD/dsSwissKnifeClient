test_that("dssSetOption and dssGetOption work", {
  x <- dssSetOption(list(stringsAsFactors = FALSE), datasources = opals)
  expect_true(x[[1]])
  expect_false(dssGetOption('stringsAsFactors', datasources = opals)[[1]][[1]])

})
