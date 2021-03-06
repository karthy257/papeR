\name{confint.mer}
\alias{confint.mer}
\title{Confidence intervals for mixed models}
\usage{
\method{confint}{mer}(object, parm, level = 0.95,
            simulate = c("ifneeded", TRUE, FALSE),
            B = 1000,...)
}
\arguments{
  \item{object}{
    Model of class \code{mer}.
  }

  \item{parm}{
    Parameters to be included in the confidence interval. See
    \code{\link{confint.default}} for details.
  }

  \item{level}{
    the confidence level.
  }

  \item{simulate}{
    If \dQuote{"ifneeded"} is specified (default), simulated confidence
    intervals are returned if (and only if) no z-value exists in the
    corresponding \code{summary} and asymptotic confidence intervals
    will be returned otherwise. If \code{TRUE} (or \dQuote{"TRUE"})
    confidence intervals will be estimated using \code{\link{ci}} from
    package \pkg{gmodels} which uses \code{\link[lme4]{mcmcsamp}} internally.
    If \code{FALSE} (or \dQuote{"FALSE"}), asymptotic confidence
    intervals will be returned and an error is given if not possible.
  }

  \item{B}{
    number of samples to take in \code{\link[lme4]{mcmcsamp}}. Per default
    1000 samples are used.
  }

  \item{...}{
    Additional arguments. Currently not used.
  }
}
\value{
  Matrix with confidence intervals.
}
\description{
  Compute confidence intervals for mixed models from
  package \pkg{lme4} (prior to version 1.0). 
  This function is only needed for backward compatibility.
}
\author{
  Benjamin Hofner, partially based on code from package stats.
  See source code for documentation.
}

