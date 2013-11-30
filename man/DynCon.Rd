\name{DynCon}
\alias{DynCon}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Dynamically Visualized Continuous Probability Distributions and Their Moments
}
\description{
This function is aimed at dynamically visualizing continuous probability distributions and their moments when the parameters changed.
}
\usage{
DynCon(name, par_matrix, total = c(100, 100), choice = "cdf", 
interval = 0.05, const_par = c(NULL, NULL))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{name}{
A discrete probability distribution that you want to plot.
}
  \item{par_matrix}{
A matrix shows the ranges of the parameters. The column number of the matrix indicates the number of parameters in the distribution and the row number of the matrix is 2 for all the distributions. The first column shows the range for the first parameter, the second column accordingly show the ranges for the second parameter in distributions. All the elements in the first row indicate the minimum for the parameters and those in the second row show the maximum ones. 
}
  \item{total}{
A vector and its elements indicate the step length for parameters by order, with the default value c(100,100).
}
  \item{choice}{
A vector and its elements indicate the plot you want to show, with a default value "cdf".
}
  \item{interval}{
A value to show the speed of changing plots.
}
  \item{const_par}{
A vector and its elements indicate the value of the parameters that do not change.
}
}
\details{
For name, you can choose among Continuous Uniform('Con_Uniform'), Normal('Normal'), Chi-Square('Chi_Square'), F('F_dis'), Student's t('Student_t'), Exponential('Exponential'), Gamma('Gamma_dis'), Beta('Beta_dis'), Laplace('Laplace'), Logistic('Logistic'), Lognormal('Lognormal'), Pareto('Pareto'), Cauchy('Cauchy'), Inverse Gaussian('Inverse_Gaussian'), Rayleigh('Rayleigh'). For choice, you can choose among Cumulative Probability Function('cdf'), Mean('Mean'), Variance('Variance'), Mode('Mode'), Skewness('Skewness') and Kurtosis('Kurtosis').

More details about distributions and parameters are as follows:

Beta: Beta distribution. Shape parameters a, b, a>0, b>0.

  Cauchy: Cauchy distribution. Location parameter a. Scale
  parameter b, b>0.The order of parameters is a, b. See
  Note Below.

  Con_Uniform: Continuous Uniform distribution. Location
  parameter a, the lower bound of the range. Parameter b,
  the upper bound of the range. The order of parameters is
  a, b. See Note Below.

  Chi_Square: Chi-squared Distribution. Shape parameter n,
  degrees of freedom.

  Exponential: Exponential Distribution. The scale
  parameter b, b>0.

  F_Dis: F(central) Distribution. Shape parameters m, n,
  positive integers.

  Gamma: Gamma distribution. Shape parameter a, a>0.Scale
  parameter b, b>0.The order of parameters is a, b. See
  Note below.

  Inverse_Gaussian: Inverse Gaussian (Wald) distribution.
  Scale parameter lamda, lamda>0. Location parameter mu,
  mu>0. The order of parameters is lamda,mu. See Note
  below.

  Laplace: Laplace distribution. Location parameter a.
  Scale parameter b, b>0.The order of parameters is a, b.
  See Note below.

  Logistic: Logistic distribution. Location parameter a,
  scale parameter b, b>0.The order of parameters is a, b.
  See Note below.

  Lognormal: Lognormal distribution. Scale parameter mu,
  mu>0.Shape parameter sigma, sigma>0.The order of
  parameters is mu, sigma. See Note below.

  Normal: Normal distribution. Location parameter mu. Scale
  parameter sigma, sigma>0. The order of parameters is mu,
  sigma. See Note below.

  Pareto: Pareto distribution. Location parameter a,
  a>0.shape parameter b, b>0.The order of parameters is a,
  b. See Note below.

  Rayleigh: Rayleigh distribution. Scale parameter b>0.

  Student_t:Student's t distribution. Shape parameter n,
  degrees of freedom, n is a positive integer.
}
\value{
A dynamic graph which includes probability density function graph and  'choice' graph.
}
\note{
When you assign the parameter matrix to the argument
  par_matrix , you must follow the input sequence of parameters.
}
\references{
K. Krishnamoorthy(2006) Handbook of Statistical Distributions with Applications University of Louisiana at Lafayette.
}
\author{
Lei ZHANG, Hao JIANG and Chen XUE (Equally contributed, the order is 
decided by the time the author joined the project.)
}
\examples{DynCon(name=Lognormal,par_matrix=matrix(c(0,2,1,2),2,2),
choice='cdf',const_par=c(0,1))

DynCon(name=Inverse_Gaussian,par_matrix=matrix(c(1,12,10,20),2,2)
,choice='Kurtosis',const_par=c(2,3))

DynCon(name=Exponential,par_matrix=matrix(c(1,20),2,1),choice=
'Skewness')

DynCon(name=Normal,par_matrix=matrix(c(1,20,10,20),2,2),choice=
'Variance',const_par=c(0,1))

DynCon(name=Logistic,par_matrix=matrix(c(1,12,10,20),2,2),choice
='Kurtosis',const_par=c(2,3))
}
