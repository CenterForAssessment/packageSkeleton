% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/strHead.R
\name{strHead}
\alias{strHead}
\title{Returns the First \code{n} Characters of a String, with Support for Negative Values}
\usage{
strHead(string, n_char = 1)
}
\arguments{
\item{string}{Character string or vector of character strings.}

\item{n_char}{Number of characters to take from the head (starting at the first character) of the
string (or vector of strings). A positive value returns the first \code{n_char} characters,
while a negative value removes the last \code{abs(n_char)} characters from the end. Defaults to 1.}
}
\value{
The function returns a character string or a vector of character strings, depending on the input.
The output consists of the first \code{n_char} characters from each string in the input. If \code{n_char}
is negative, the result excludes the last \code{abs(n_char)} characters from each string.
}
\description{
The \code{strHead} function extracts the first \code{n} characters of a provided string.
If \code{n_char} is positive, it returns the first \code{n_char} characters; if negative,
it returns all but the last \code{abs(n_char)} characters. The function handles input validation,
ensuring that \code{n_char} is within the bounds of the string length. It’s useful for quickly
trimming strings to desired lengths.
}
\details{
The \code{strHead} function is typically used to extract the first few characters from a
character string or each string in a vector of character strings. This can be useful for truncating
strings or extracting prefixes. The function supports both positive and negative values for \code{n_char},
allowing flexible string extraction. For positive values, the function returns the first \code{n_char}
characters, while for negative values, it returns all but the last \code{abs(n_char)} characters.
}
\examples{
# Example 1: First two characters of each state name
strHead(state.name, 2)

# Example 2: First three characters of a single string
strHead("California", 3)

# Example 3: Remove the last two characters from each string in a vector
strHead(c("apple", "banana", "cherry"), -2)

# Example 4: Get the first character of each month name
strHead(month.name, 1)

# Example 5: Handle a vector of different length strings
strHead(c("wolf", "elephant", "giraffe"), 4)

}
\author{
Damian W. Betebenner \email{dbetebenner@nciea.org}
}
\keyword{misc}
\keyword{models}
