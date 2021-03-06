% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepare_rodents.R
\name{rodents_data}
\alias{rodents_data}
\title{Collect and process historic rodent data}
\usage{
rodents_data(moons = prep_moons(), options_rodents = rodents_options())
}
\arguments{
\item{moons}{current newmoon table}

\item{options_rodents}{data options list for rodents}
}
\value{
a list of two dataframes, all plots and control plots
}
\description{
Prepare a particular version of the rodent dataset, tailored 
  for forecasting.
}
