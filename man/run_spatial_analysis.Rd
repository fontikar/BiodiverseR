% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_spatial_analysis.R
\name{run_spatial_analysis}
\alias{run_spatial_analysis}
\title{Runs a spatial analysis with the given paramaters
Uses the basedata object (bd) to call the server}
\usage{
run_spatial_analysis(
  bd,
  calculations = NULL,
  spatial_conditions = c("sp_self_only()"),
  def_query = NULL,
  name = NULL,
  tree = NULL
)
}
\arguments{
\item{bd}{class R6 basedata}

\item{calculations}{integer}

\item{spatial_conditions}{character}

\item{def_query}{character}

\item{name}{character}

\item{tree}{class phylo}
}
\value{
The processed results of the spatial analysis
}
\description{
Runs a spatial analysis with the given paramaters
Uses the basedata object (bd) to call the server
}
\examples{
if(interactive()) {
  bd = BiodiverseR::basedata$new(cellsizes=c(500,500))

  results = bd$run_spatial_analysis (
     # name = "sp1",
     calculations = c("calc_richness", "calc_endemism_central"),
     spatial_conditions = "sp_self_only()"
  )
}
}
