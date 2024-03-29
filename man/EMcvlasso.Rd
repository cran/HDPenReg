% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cvEM.R
\name{EMcvlasso}
\alias{EMcvlasso}
\title{cross validation for \code{\link{EMlasso}}}
\usage{
EMcvlasso(
  X,
  y,
  lambda = NULL,
  nbFolds = 10,
  maxSteps = 1000,
  intercept = TRUE,
  model = c("linear", "logistic"),
  burn = 30,
  threshold = 1e-08,
  eps = 1e-05,
  epsCG = 1e-08
)
}
\arguments{
\item{X}{the matrix (of size n*p) of the covariates.}

\item{y}{a vector of length n with the response.}

\item{lambda}{Values at which prediction error should be computed.}

\item{nbFolds}{the number of folds for the cross-validation.}

\item{maxSteps}{Maximal number of steps for EM algorithm.}

\item{intercept}{If TRUE, there is an intercept in the model.}

\item{model}{"linear" or "logistic".}

\item{burn}{Number of steps for the burn period.}

\item{threshold}{Zero tolerance. Coefficients under this value are set to zero.}

\item{eps}{Tolerance of the EM algorithm.}

\item{epsCG}{Epsilon for the convergence of the conjugate gradient.}
}
\value{
A list containing
\describe{
  \item{cv}{Mean prediction error for each value of index.}
  \item{cvError}{Standard error of \code{lambda}.}
  \item{minCv}{Minimal \code{lambda} criterion.}
  \item{lambda}{Values of \code{lambda} at which prediction error should be computed.}
  \item{lambda.optimal}{Value of \code{lambda} for which the cv criterion is minimal.}
}
}
\description{
cross validation function for \code{\link{EMlasso}}.
}
\examples{
dataset <- simul(50, 100, 0.4, 1, 10, matrix(c(0.1, 0.8, 0.02, 0.02), nrow = 2))
result <- EMcvlasso(
  X = dataset$data, y = dataset$response,
  lambda = 5:1, nbFolds = 5, intercept = FALSE
)
}
\author{
Quentin Grimonprez, Serge Iovleff
}
