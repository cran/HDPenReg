% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HDPenReg-package.R
\docType{package}
\name{HDPenReg-package}
\alias{HDPenReg-package}
\alias{HDPenReg-package,}
\alias{HDPenReg}
\title{Algorithms for lasso and fused-lasso problems.}
\description{
This package contains algorithms for lasso and fused-lasso problems.
It contains an implementation of the lars algorithm [1],
for the lasso and fusion penalization and EM-based algorithms for (logistic) lasso and fused-lasso.
}
\examples{

# see vignette
# vignette("HDPenReg")

dataset <- simul(50, 10000, 0.4, 10, 50, matrix(c(0.1, 0.8, 0.02, 0.02), nrow = 2))
result <- HDlars(dataset$data, dataset$response)

# plot coefficient path
plot(result)

# get all coefficients
coefficient <- listToMatrix(result)


}
\seealso{
\code{\link{HDlars}} \code{\link{HDcvlars}}
}
\keyword{package}
