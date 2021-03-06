% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process_forecasts.R
\name{make_ensemble}
\alias{make_ensemble}
\title{Create the ensemble model from all other forecasts}
\usage{
make_ensemble(all_forecasts, pred_dir, models_to_use = NA, CI_level = 0.9)
}
\arguments{
\item{all_forecasts}{alll forecasts}

\item{pred_dir}{directory name where the saved model predictions reside}

\item{models_to_use}{models to use}

\item{CI_level}{confidence interval level}
}
\value{
ensemble
}
\description{
Uses the weighted mean and weighted sample variance
  Mean is the weighted mean of all model means. Variance is the weighted 
  mean of all model variances + the variances of the weighted mean using
  the unbiased estimate of sample variance. See
  https://github.com/weecology/portalPredictions/pull/65
  We only store the prediction interval for models, so backcalculate 
  individual model variance assuming the same CI_level throughout. Assert
  that the summed weight of all the model ensembles is 1, as that's what
  the above variance estimates assume. Rounded to account for precision
  errors. Summed weights can also be NA if there are not weights availble
  for that ensemble.
}
