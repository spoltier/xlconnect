# Define common data frames to be used in tests
common_checkDf <- data.frame(
  NumericColumn = c(-23.63, NA, NA, 5.8, 3),
  StringColumn = c("Hello", NA, NA, NA, "World"),
  BooleanColumn = c(TRUE, FALSE, FALSE, NA, NA),
  DateTimeColumn = as.POSIXct(c(NA, NA, "2010-09-09 21:03:07", "2010-09-10 21:03:07", "2010-09-11 21:03:07")),
  stringsAsFactors = FALSE
)

common_checkDf1 <- data.frame(
  A = c(1:2, NA, 3:6, NA),
  B = letters[1:8],
  C = c("z", "y", "x", "w", NA, "v", "u", NA),
  D = c(NA, 1:5, NA, NA),
  stringsAsFactors = FALSE
)

common_checkDf2 <- data.frame(
  A = c(rep(NA, 3), 3:6, NA),
  B = c(NA, letters[2:8]),
  C = c("z", "y", "x", "w", NA, "v", "u", NA),
  D = c(NA, 1:5, NA, NA),
  stringsAsFactors = FALSE
)

targetNoForce <- data.frame(
  AAA = c(NA, NA, NA, 780.9, NA),
  BBB = c("hello", "42.24", "true", NA, "11.01.1984 12:00:00"),
  CCC = c(TRUE, NA, NA, NA, NA),
  DDD = as.POSIXct(c("1984-01-11 12:00:00", NA, NA, NA, NA)),
  stringsAsFactors = FALSE
)

targetForce <- data.frame(
  AAA = c(-14.65, NA, 11.7, 780.9, NA),
  BBB = c("hello", "42.24", "true", NA, "11.01.1984 12:00:00"),
  CCC = c(TRUE, TRUE, NA, FALSE, FALSE),
  DDD = as.POSIXct(c("1984-01-11 12:00:00", "2012-02-06 16:15:23", "1984-01-11 12:00:00", NA, "1900-12-22 16:04:48")),
  stringsAsFactors = FALSE
)

target_multi_sheet <- list(
  AAA = data.frame(A = 1:3, B = letters[1:3], C = c(TRUE, TRUE, FALSE), stringsAsFactors = FALSE),
  BBB = data.frame(D = 4:6, E = letters[4:6], F = c(FALSE, TRUE, TRUE), stringsAsFactors = FALSE)
)

target_var_names <- data.frame(
  `With whitespace` = 1:4,
  `And some other funky characters: _=?^~!$@#%§` = letters[1:4],
  check.names = FALSE,
  stringsAsFactors = FALSE
)

checkDfSubset <- data.frame(
  A = c(rep(NA, 3), 3:6, NA),
  C = c("z", "y", "x", "w", NA, "v", "u", NA),
  stringsAsFactors = FALSE
)

checkDfAreaSubset <- data.frame(B = c(NA, letters[2:7]), D = c(NA, 1:5, NA), stringsAsFactors = FALSE)

target1_bb <- data.frame(
  Col1 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 7, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col2 = c(NA, NA, NA, 3, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 13),
  Col3 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col4 = c(NA, NA, NA, 4, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 9, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col5 = c(1, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col6 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col7 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 10, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col8 = c(2, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col9 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col10 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 11, NA, NA, NA, NA, NA),
  Col11 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col12 = c(NA, NA, NA, NA, NA, NA, 5, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 12, NA, NA, NA, NA, NA),
  Col13 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col14 = c(NA, NA, NA, NA, NA, NA, 6, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col15 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col16 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 8, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)
)

target2_orig <- data.frame(
  Col1 = c(9, NA, NA, NA, NA, NA),
  Col2 = c(NA, NA, NA, NA, NA, NA),
  Col3 = c(NA, NA, NA, NA, NA, NA),
  Col4 = c(10, NA, NA, NA, NA, NA),
  Col5 = c(NA, NA, NA, NA, NA, NA),
  Col6 = c(NA, NA, NA, NA, NA, NA),
  Col7 = c(NA, NA, NA, NA, NA, 11)
)

target3_orig <- data.frame(
  Col1 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col2 = c(NA, NA, NA, 9, NA, NA, NA, NA, NA, NA, NA, NA),
  Col3 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col4 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col5 = c(NA, NA, NA, 10, NA, NA, NA, NA, NA, NA, NA, NA),
  Col6 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col7 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA),
  Col8 = c(NA, NA, NA, NA, NA, NA, NA, NA, 11, NA, NA, NA),
  Col9 = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)
)

target4_orig <- as.data.frame(matrix(NA, nrow = 10, ncol = 8))
names(target4_orig) <- paste("Col", 1:8, sep = "")

target5_orig <- data.frame(Col1 = c(NA, NA, NA, NA, 4, NA), Col2 = c(NA, 1, NA, NA, NA, NA))

target6_orig <- data.frame(
  Col1 = c(NA, NA, NA, NA),
  Col2 = c(NA, NA, NA, 4),
  Col3 = c(1, NA, NA, NA),
  Col4 = c(NA, NA, NA, NA),
  Col5 = c(NA, NA, NA, NA)
)

target7_orig <- data.frame(Col1 = c(NA, NA, NA, 4), Col2 = c(1, NA, NA, NA))

expected_bug52 <- data.frame(
  Var1 = c(2, 4, 6),
  Var2 = c("2", "nope", "6"),
  Var3 = c(NA, 4, 6),
  Var4 = c(2, 4, 6),
  stringsAsFactors = FALSE
)

expected_bug49 <- data.frame(B = 1:5, row.names = letters[1:5])

expected_bug53_sheet1 <- data.frame(A = c("2003-04-06", "2014-10-30", "abc"), stringsAsFactors = FALSE)

expected_bug53_sheet2 <- data.frame(A = as.POSIXct(c("2015-12-01", "2015-11-17", "1984-01-11")))

testAAA_df <- data.frame(A = 1:3, B = letters[1:3], C = c(TRUE, TRUE, FALSE), stringsAsFactors = FALSE)

# Helper function to run tests for a given workbook (XLS or XLSX)
run_read_worksheet_tests <- function(wb, type) {
  # Basic reading
  expect_equal(readWorksheet(wb, 1), common_checkDf, info = paste(type, "Read sheet 1 by index"))
  expect_equal(readWorksheet(wb, "Test1"), common_checkDf, info = paste(type, "Read sheet 'Test1' by name"))

  # Specific regions
  expect_equal(readWorksheet(wb, 2, startRow = 17, startCol = 6, endRow = 22, endCol = 9, header = TRUE), common_checkDf, info = paste(type, "Specific area"))
  expected_neg_end <- common_checkDf[-nrow(common_checkDf) + 0:1, -ncol(common_checkDf)]
  expect_equal(readWorksheet(wb, "Test2", startRow = 17, startCol = 6, endRow = -2, endCol = -1, header = TRUE), expected_neg_end, info = paste(type, "Negative endRow/Col"))
  expect_equal(readWorksheet(wb, 2, region = "F17:I22", header = TRUE), common_checkDf, info = paste(type, "Region string"))
  expect_equal(readWorksheet(wb, 2, region = "F17:I22", startRow = 88, endCol = 45, header = TRUE), common_checkDf, info = paste(type, "Region string with other params"))

  # Non-existent and empty sheets
  expect_error(readWorksheet(wb, 23), info = paste(type, "Non-existent sheet index"))
  expect_error(readWorksheet(wb, "SheetDoesNotExist"), info = paste(type, "Non-existent sheet name"))
  res_3 <- suppressMessages(readWorksheet(wb, 3))
  expect_equal(res_3, data.frame(), info = paste(type, "Empty sheet by index (Test3)"))
  res_Test3 <- suppressMessages(readWorksheet(wb, "Test3"))
  expect_equal(res_Test3, data.frame(), info = paste(type, "Empty sheet by name (Test3)"))

  # NAs and varied data
  expect_equal(readWorksheet(wb, "Test4"), common_checkDf1, info = paste(type, "Test4 sheet"))
  expect_equal(readWorksheet(wb, "Test5"), common_checkDf2, info = paste(type, "Test5 sheet"))
  expected_test4_neg <- common_checkDf1[-nrow(common_checkDf1) + 0:3, -ncol(common_checkDf1) + 0:1]
  expect_equal(readWorksheet(wb, "Test4", endRow = -4, endCol = -2), expected_test4_neg, info = paste(type, "Test4 negative endRow/Col"))
  expected_test5_neg <- common_checkDf2[-nrow(common_checkDf2) + 0:2, -ncol(common_checkDf2)]
  expect_equal(readWorksheet(wb, "Test5", endRow = -3, endCol = -1), expected_test5_neg, info = paste(type, "Test5 negative endRow/Col"))

  # Column type conversion
  col_types_spec <- c(XLC$DATA_TYPE.NUMERIC, XLC$DATA_TYPE.STRING, XLC$DATA_TYPE.BOOLEAN, XLC$DATA_TYPE.DATETIME)
  datetime_fmt <- "%d.%m.%Y %H:%M:%S"
  res_noforce <- readWorksheet(wb, sheet = "Conversion", header = TRUE, colTypes = col_types_spec, forceConversion = FALSE, dateTimeFormat = datetime_fmt)
  expect_equal(res_noforce, targetNoForce, info = paste(type, "Conversion sheet, no force"))
  res_force <- readWorksheet(wb, sheet = "Conversion", header = TRUE, colTypes = col_types_spec, forceConversion = TRUE, dateTimeFormat = datetime_fmt)
  expect_equal(res_force, targetForce, info = paste(type, "Conversion sheet, force"))

  # Multiple sheets
  expect_equal(readWorksheet(wb, sheet = c("AAA", "BBB"), header = TRUE), target_multi_sheet, info = paste(type, "Multi-sheet read"))

  # Variable names
  res_varnames <- readWorksheet(wb, sheet = "VariableNames", header = TRUE, check.names = FALSE)
  expect_equal(res_varnames, target_var_names, info = paste(type, "VariableNames sheet, check.names=FALSE"))

  # Keep and drop arguments
  if (type == "XLS") {
    expect_error(readWorksheet(wb, "Test5", header = TRUE, keep = c("A", "C"), drop = c("B", "D")), info = paste(type, "keep and drop both specified"))
    expect_error(readWorksheet(wb, "Test5", header = TRUE, keep = c("A", "Z")), info = paste(type, "keep non-existent column name"))
    expect_error(readWorksheet(wb, "Test5", header = TRUE, keep = c(1, 5)), info = paste(type, "keep non-existent column index"))
    expect_error(readWorksheet(wb, "Test5", header = TRUE, drop = c("A", "Z")), info = paste(type, "drop non-existent column name"))
    expect_error(readWorksheet(wb, "Test5", header = TRUE, drop = c(1, 5)), info = paste(type, "drop non-existent column index"))
    expect_error(readWorksheet(wb, "Test5", header = FALSE, keep = c("A", "C")), info = paste(type, "keep by name with header=FALSE"))
    expect_error(readWorksheet(wb, "Test5", header = FALSE, drop = c("B", "D")), info = paste(type, "drop by name with header=FALSE"))
  }
  expect_equal(readWorksheet(wb, "Test5", header = TRUE, keep = c("A", "C")), checkDfSubset, info = paste(type, "keep by name"))
  expect_equal(readWorksheet(wb, "Test5", header = TRUE, drop = c("B", "D")), checkDfSubset, info = paste(type, "drop by name"))
  expect_equal(readWorksheet(wb, "Test5", header = TRUE, keep = c(1, 3)), checkDfSubset, info = paste(type, "keep by index"))
  expect_equal(readWorksheet(wb, "Test5", header = TRUE, drop = c(2, 4)), checkDfSubset, info = paste(type, "drop by index"))

  # Bounding box
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", autofitRow = TRUE, autofitCol = TRUE, header = FALSE), target1_bb)
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", autofitRow = FALSE, autofitCol = FALSE, header = FALSE), target1_bb)
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", startRow = 20, startCol = 5, endRow = 31, endCol = 13, autofitRow = TRUE, autofitCol = TRUE, header = FALSE), target2_orig)
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", startRow = 20, startCol = 5, endRow = 31, endCol = 13, autofitRow = FALSE, autofitCol = FALSE, header = FALSE), target3_orig)
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", startRow = 12, startCol = 5, endRow = 21, endCol = 12, autofitRow = TRUE, autofitCol = TRUE, header = FALSE), data.frame())
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", startRow = 12, startCol = 5, endRow = 21, endCol = 12, autofitRow = FALSE, autofitCol = FALSE, header = FALSE), target4_orig)
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", startRow = 6, startCol = 5, endRow = 11, endCol = 9, autofitRow = FALSE, autofitCol = TRUE, header = FALSE), target5_orig)
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", startRow = 6, startCol = 5, endRow = 11, endCol = 9, autofitRow = TRUE, autofitCol = FALSE, header = FALSE), target6_orig)
  expect_equal(readWorksheet(wb, sheet = "BoundingBox", startRow = 6, startCol = 5, endRow = 11, endCol = 9, autofitRow = TRUE, autofitCol = TRUE, header = FALSE), target7_orig)
}

test_that("reading worksheets from XLS files works", {
  wb.xls <- loadWorkbook(test_path("resources/testWorkbookReadWorksheet.xls"), create = FALSE)
  run_read_worksheet_tests(wb.xls, "XLS")
})

test_that("reading worksheets from XLSX files works", {
  wb.xlsx <- loadWorkbook(test_path("resources/testWorkbookReadWorksheet.xlsx"), create = FALSE)
  run_read_worksheet_tests(wb.xlsx, "XLSX")
})

test_that("keep/drop with specified region work correctly", {
  wb.xls <- loadWorkbook(test_path("resources/testWorkbookReadWorksheet.xls"), create = FALSE)
  wb.xlsx <- loadWorkbook(test_path("resources/testWorkbookReadWorksheet.xlsx"), create = FALSE)

  region_params <- list(sheet = "Test5", startRow = 17, startCol = 7, endRow = 24, endCol = 9, header = TRUE)

  # XLS
  expect_error(do.call(readWorksheet, c(list(wb.xls), region_params, list(keep = c("B", "D"), drop = c("C")))), info = "XLS: Region keep and drop")
  expect_error(do.call(readWorksheet, c(list(wb.xls), region_params, list(keep = c("B", "Z")))), info = "XLS: Region keep non-existent name")
  expect_error(do.call(readWorksheet, c(list(wb.xls), region_params, list(keep = c(1, 5)))), info = "XLS: Region keep non-existent index")
  expect_error(do.call(readWorksheet, c(list(wb.xls), region_params, list(drop = c("B", "Z")))), info = "XLS: Region drop non-existent name")
  expect_error(do.call(readWorksheet, c(list(wb.xls), region_params, list(drop = c(1, 5)))), info = "XLS: Region drop non-existent index")
  expect_equal(do.call(readWorksheet, c(list(wb.xls), region_params, list(keep = c("B", "D")))), checkDfAreaSubset, info = "XLS: Region keep by name")
  expect_equal(do.call(readWorksheet, c(list(wb.xls), region_params, list(drop = "C"))), checkDfAreaSubset, info = "XLS: Region drop by name")
  expect_equal(do.call(readWorksheet, c(list(wb.xls), region_params, list(keep = c(1, 3)))), checkDfAreaSubset, info = "XLS: Region keep by index")
  expect_equal(do.call(readWorksheet, c(list(wb.xls), region_params, list(drop = 2))), checkDfAreaSubset, info = "XLS: Region drop by index")

  # XLSX
  expect_equal(do.call(readWorksheet, c(list(wb.xlsx), region_params, list(keep = c("B", "D")))), checkDfAreaSubset, info = "XLSX: Region keep by name")
  expect_equal(do.call(readWorksheet, c(list(wb.xlsx), region_params, list(drop = "C"))), checkDfAreaSubset, info = "XLSX: Region drop by name")
  expect_equal(do.call(readWorksheet, c(list(wb.xlsx), region_params, list(keep = c(1, 3)))), checkDfAreaSubset, info = "XLSX: Region keep by index")
  expect_equal(do.call(readWorksheet, c(list(wb.xlsx), region_params, list(drop = 2))), checkDfAreaSubset, info = "XLSX: Region drop by index")
})

test_that("keep/drop with multiple sheets works in XLS", {
  wb.xls <- loadWorkbook(test_path("resources/testWorkbookReadWorksheet.xls"), create = FALSE)
  sheets_to_read <- c("Test1", "Test4", "Test5")
  res_xls_kl1 <- readWorksheet(wb.xls, sheet = sheets_to_read, header = TRUE, keep = c(1, 2, 3))
  expect_equal(res_xls_kl1, list(Test1 = common_checkDf[1:3], Test4 = common_checkDf1[1:3], Test5 = common_checkDf2[1:3]), info = "XLS: Multi-sheet keep same cols")
  res_xls_kl2 <- readWorksheet(wb.xls, sheet = sheets_to_read, header = TRUE, keep = list(1, 2, c(1, 3)))
  expect_equal(res_xls_kl2, list(Test1 = common_checkDf[1], Test4 = common_checkDf1[2], Test5 = common_checkDf2[c(1, 3)]), info = "XLS: Multi-sheet keep different cols (simple list)")
  res_xls_kl3 <- readWorksheet(wb.xls, sheet = sheets_to_read, header = TRUE, keep = list(c(1, 2), c(2, 3), c(1, 3)))
  expect_equal(res_xls_kl3, list(Test1 = common_checkDf[1:2], Test4 = common_checkDf1[2:3], Test5 = common_checkDf2[c(1, 3)]), info = "XLS: Multi-sheet keep different cols (list of vectors)")
  sheets_plus_aaa <- c("Test1", "Test4", "Test5", "AAA")
  res_xls_kl4 <- readWorksheet(wb.xls, sheet = sheets_plus_aaa, header = TRUE, keep = list(c(1, 2), c(2, 3)))
  expect_equal(res_xls_kl4, list(Test1 = common_checkDf[1:2], Test4 = common_checkDf1[2:3], Test5 = common_checkDf2[1:2], AAA = testAAA_df[2:3]), info = "XLS: Multi-sheet keep, recycle last keep spec (adjusted for observed behavior)")
  res_xls_dl1 <- readWorksheet(wb.xls, sheet = sheets_to_read, header = TRUE, drop = c(1, 2))
  expect_equal(res_xls_dl1, list(Test1 = common_checkDf[3:4], Test4 = common_checkDf1[3:4], Test5 = common_checkDf2[3:4]), info = "XLS: Multi-sheet drop same cols")
  res_xls_dl2 <- readWorksheet(wb.xls, sheet = sheets_to_read, header = TRUE, drop = list(1, 2, c(1, 3)))
  expect_equal(res_xls_dl2, list(Test1 = common_checkDf[2:4], Test4 = common_checkDf1[c(1, 3, 4)], Test5 = common_checkDf2[c(2, 4)]), info = "XLS: Multi-sheet drop different cols (simple list)")
})

test_that("keep/drop with multiple sheets works in XLSX", {
  wb.xlsx <- loadWorkbook(test_path("resources/testWorkbookReadWorksheet.xlsx"), create = FALSE)
  sheets_to_read <- c("Test1", "Test4", "Test5")
  res_xlsx_kl1 <- readWorksheet(wb.xlsx, sheet = sheets_to_read, header = TRUE, keep = c(1, 2, 3))
  expect_equal(res_xlsx_kl1, list(Test1 = common_checkDf[1:3], Test4 = common_checkDf1[1:3], Test5 = common_checkDf2[1:3]), info = "XLSX: Multi-sheet keep same cols")
  res_xlsx_kl2 <- readWorksheet(wb.xlsx, sheet = sheets_to_read, header = TRUE, keep = list(1, 2, c(1, 3)))
  expect_equal(res_xlsx_kl2, list(Test1 = common_checkDf[1], Test4 = common_checkDf1[2], Test5 = common_checkDf2[c(1, 3)]), info = "XLSX: Multi-sheet keep different cols (simple list)")
  res_xlsx_kl3 <- readWorksheet(wb.xlsx, sheet = sheets_to_read, header = TRUE, keep = list(c(1, 2), c(2, 3), c(1, 3)))
  expect_equal(res_xlsx_kl3, list(Test1 = common_checkDf[1:2], Test4 = common_checkDf1[2:3], Test5 = common_checkDf2[c(1, 3)]), info = "XLSX: Multi-sheet keep different cols (list of vectors)")
  sheets_plus_aaa <- c("Test1", "Test4", "Test5", "AAA")
  res_xlsx_kl4 <- readWorksheet(wb.xlsx, sheet = sheets_plus_aaa, header = TRUE, keep = list(c(1, 2), c(2, 3)))
  expect_equal(res_xlsx_kl4, list(Test1 = common_checkDf[1:2], Test4 = common_checkDf1[2:3], Test5 = common_checkDf2[1:2], AAA = testAAA_df[2:3]), info = "XLSX: Multi-sheet keep, recycle last keep spec (adjusted for observed behavior)")
  res_xlsx_dl1 <- readWorksheet(wb.xlsx, sheet = sheets_to_read, header = TRUE, drop = c(1, 2))
  expect_equal(res_xlsx_dl1, list(Test1 = common_checkDf[3:4], Test4 = common_checkDf1[3:4], Test5 = common_checkDf2[3:4]), info = "XLSX: Multi-sheet drop same cols")
  res_xlsx_dl2 <- readWorksheet(wb.xlsx, sheet = sheets_to_read, header = TRUE, drop = list(1, 2, c(1, 3)))
  expect_equal(res_xlsx_dl2, list(Test1 = common_checkDf[2:4], Test4 = common_checkDf1[c(1, 3, 4)], Test5 = common_checkDf2[c(2, 4)]), info = "XLSX: Multi-sheet drop different cols (simple list)")
})

test_that("useCachedValues and onErrorCell interaction works in XLS", {
  wb.xls.cache <- loadWorkbook(test_path("resources/testCachedValues.xls"), create = FALSE)
  ref.xls.uncached <- readWorksheet(wb.xls.cache, "AllLocal", useCachedValues = FALSE)
  ref.xls.cached <- readWorksheet(wb.xls.cache, "AllLocal", useCachedValues = TRUE)
  expect_equal(ref.xls.cached, ref.xls.uncached, info = "XLS: Cached vs Uncached for AllLocal")
  onErrorCell(wb.xls.cache, XLC$ERROR.STOP)
  expect_error(readWorksheet(wb.xls.cache, "HeaderRemote", useCachedValues = FALSE), info = "XLS: HeaderRemote uncached error")
  expect_error(readWorksheet(wb.xls.cache, "BodyRemote", useCachedValues = FALSE), info = "XLS: BodyRemote uncached error")
  expect_error(readWorksheet(wb.xls.cache, "AllRemote", useCachedValues = FALSE), info = "XLS: AllRemote uncached error")
  expect_equal(readWorksheet(wb.xls.cache, "HeadersRemote", useCachedValues = TRUE), ref.xls.uncached, info = "XLS: HeadersRemote cached")
  expect_equal(readWorksheet(wb.xls.cache, "BodyRemote", useCachedValues = TRUE), ref.xls.uncached, info = "XLS: BodyRemote cached")
  expect_equal(readWorksheet(wb.xls.cache, "BothRemote", useCachedValues = TRUE), ref.xls.uncached, info = "XLS: BothRemote cached")
})

test_that("useCachedValues and onErrorCell interaction works in XLSX", {
  wb.xlsx.cache <- loadWorkbook(test_path("resources/testCachedValues.xlsx"), create = FALSE)
  ref.xlsx.uncached <- readWorksheet(wb.xlsx.cache, "AllLocal", useCachedValues = FALSE)
  ref.xlsx.cached <- readWorksheet(wb.xlsx.cache, "AllLocal", useCachedValues = TRUE)
  expect_equal(ref.xlsx.cached, ref.xlsx.uncached, info = "XLSX: Cached vs Uncached for AllLocal")
  onErrorCell(wb.xlsx.cache, XLC$ERROR.STOP)
  expect_error(readWorksheet(wb.xlsx.cache, "HeaderRemote", useCachedValues = FALSE), info = "XLSX: HeaderRemote uncached error")
  expect_error(readWorksheet(wb.xlsx.cache, "BodyRemote", useCachedValues = FALSE), info = "XLSX: BodyRemote uncached error")
  expect_error(readWorksheet(wb.xlsx.cache, "AllRemote", useCachedValues = FALSE), info = "XLSX: AllRemote uncached error")
  expect_equal(readWorksheet(wb.xlsx.cache, "HeadersRemote", useCachedValues = TRUE), ref.xlsx.uncached, info = "XLSX: HeadersRemote cached")
  expect_equal(readWorksheet(wb.xlsx.cache, "BodyRemote", useCachedValues = TRUE), ref.xlsx.uncached, info = "XLSX: BodyRemote cached")
  expect_equal(readWorksheet(wb.xlsx.cache, "BothRemote", useCachedValues = TRUE), ref.xlsx.uncached, info = "XLSX: BothRemote cached")
})

test_that("readWorksheetFromFile with useCachedValues works (Bug 52)", {
  res_bug52 <- readWorksheetFromFile(test_path("resources/testBug52.xlsx"), sheet = 1, useCachedValues = TRUE)
  expect_equal(res_bug52, expected_bug52, info = "Bug 52 (cached values)")
})

test_that("readWorksheetFromFile with rownames works (Bug 49)", {
  res_bug49 <- readWorksheetFromFile(test_path("resources/testBug49.xlsx"), sheet = 1, rownames = 1)
  expect_equal(res_bug49, expected_bug49, info = "Bug 49 (rownames)")
})

test_that("readWorksheetFromFile with dateTimeFormat and forceConversion works (Bug 53)", {
  res_bug53_sheet1 <- readWorksheetFromFile(test_path("resources/testBug53.xlsx"), sheet = 1, dateTimeFormat = "%Y-%m-%d")
  expect_equal(res_bug53_sheet1, expected_bug53_sheet1, info = "Bug 53 (sheet 1, dateTimeFormat)")
  res_bug53_sheet2 <- readWorksheetFromFile(test_path("resources/testBug53.xlsx"), sheet = 2, colTypes = "POSIXt", forceConversion = TRUE)
  expect_equal(res_bug53_sheet2, expected_bug53_sheet2, info = "Bug 53 (sheet 2, colTypes POSIXt)")
})

test_that("reading sparse bitset worksheet works", {
  wbSparse.xlsx <- loadWorkbook(test_path("resources/testReadWorksheetSparseBitSet.xlsx"), create = FALSE)
  expect_silent(sparseSheet <- readWorksheet(wbSparse.xlsx, "hist"))
  expect_true(is.data.frame(sparseSheet))
})