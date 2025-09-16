# Mutation Testing Analysis Summary

## 1. Overview

This report summarizes the results of a manual mutation testing exercise performed on the `normalizeDataframe` function in the R package `XLConnect`. The goal of this exercise was to evaluate the effectiveness of the existing `testthat` and `RUnit` test suites in detecting faults.

Five mutations were manually introduced into the `R/normalizeDataframe.R` file, one at a time. For each mutation, the package was re-installed, and both the `testthat` and `RUnit` test suites were run to check if the mutation was detected (i.e., if any tests failed).

## 2. Results Summary

- **Total Mutants Created**: 5
- **Mutants Killed**: 3
- **Mutants Survived**: 2
- **Mutation Score (combined)**: 3 / 5 = 60%

| Mutant ID | Mutation Operator | Testthat Outcome | RUnit Outcome | Final Status |
|---|---|---|---|---|
| 1 | ROR | KILLED | KILLED | KILLED |
| 2 | AOR | SURVIVED | SURVIVED | SURVIVED |
| 3 | LOR | SURVIVED | SURVIVED | SURVIVED |
| 4 | STD | KILLED | KILLED | KILLED |
| 5 | RVR | KILLED | KILLED | KILLED |

## 3. Analysis of Survived Mutants

Two mutants survived both the `testthat` and `RUnit` test suites.

### Mutant 2 (AOR)

- **Mutation**: The rounding precision for POSIXt objects was changed from 3 decimal places (milliseconds) to 0 decimal places (seconds).
- **File**: `R/normalizeDataframe.R.Mutant_2.R`
- **Analysis**: This mutation survived because none of the tests check for sub-second precision in date-time objects. The test data for date-time columns uses `as.POSIXct` and `as.POSIXlt` without specifying fractional seconds. Therefore, rounding to the nearest second had no effect on the test outcomes.
- **Recommendation**: To kill this mutant, a new test case should be added that uses date-time objects with millisecond precision and asserts that the normalization preserves this precision.

### Mutant 3 (LOR)

- **Mutation**: The logical OR `||` was replaced with a logical AND `&&` in the condition to check for logical or character columns. This effectively forces all logical and character columns to be converted to character type.
- **File**: `R/normalizeDataframe.R.Mutant_3.R`
- **Analysis**: This mutation survived because the tests do not strictly check the data types of the columns after normalization. The `testthat::expect_equal` and `RUnit::checkEquals` functions, as used in the tests, coerce the data to be of the same type before comparison. For example, a logical `TRUE` is considered equal to a character `"TRUE"`.
- **Recommendation**: To kill this mutant, the tests should be improved to explicitly check the data types of the columns in the normalized data frame. For example, using `expect_type` in `testthat`.

## 4. Comparison of `testthat` and `RUnit` Suites

In this exercise, both test suites performed similarly in terms of killing or letting mutants survive. However, an interesting difference was observed with **Mutant 4 (STD)**, where a line setting the timezone attribute was deleted.

- **`testthat` outcome**: KILLED. The `testthat::expect_equal` function is very strict and compares all attributes of the objects, including the timezone attribute of date-time objects. The missing timezone attribute caused the test to fail.
- **`RUnit` outcome**: KILLED. The `RUnit::checkEquals` function, with `check.attributes = FALSE`, did not fail because of the missing timezone attribute. However, it failed because of a subsequent data type mismatch (`Component “Column.E”: target is character, current is logical`), which seems to be a cascading effect of the original mutation.

This shows that `testthat` can be more sensitive to changes in object attributes, which can be both an advantage (catching subtle changes) and a disadvantage (making tests more brittle).

## 5. Conclusion

The mutation testing exercise was successful in identifying weaknesses in the test suites for the `normalizeDataframe` function. The current test coverage is not sufficient to detect changes in date-time precision or data type coercion. The recommendations provided in this summary can be used to improve the test suite and increase its fault detection capabilities.
