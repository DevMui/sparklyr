% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ml_feature_idf.R
\name{ft_idf}
\alias{ft_idf}
\title{Feature Tranformation -- IDF (Estimator)}
\usage{
ft_idf(x, input_col, output_col, min_doc_freq = 0L, dataset = NULL,
  uid = random_string("idf_"), ...)
}
\arguments{
\item{x}{A \code{spark_connection}, \code{ml_pipeline}, or a \code{tbl_spark}.}

\item{input_col}{The name of the input column.}

\item{output_col}{The name of the output column.}

\item{min_doc_freq}{The minimum number of documents in which a term should appear. Default: 0}

\item{dataset}{(Optional) A \code{tbl_spark}. If provided, eagerly fit the (estimator)
feature "transformer" against \code{dataset}. See details.}

\item{uid}{A character string used to uniquely identify the feature transformer.}

\item{...}{Optional arguments; currently unused.}
}
\value{
The object returned depends on the class of \code{x}.

\itemize{
  \item \code{spark_connection}: When \code{x} is a \code{spark_connection}, the function returns a \code{ml_transformer},
  a \code{ml_estimator}, or one of their subclasses. The object contains a pointer to
  a Spark \code{Transformer} or \code{Estimator} object and can be used to compose
  \code{Pipeline} objects.

  \item \code{ml_pipeline}: When \code{x} is a \code{ml_pipeline}, the function returns a \code{ml_pipeline} with
  the transformer or estimator appended to the pipeline.

  \item \code{tbl_spark}: When \code{x} is a \code{tbl_spark}, a transformer is constructed then
  immediately applied to the input \code{tbl_spark}, returning a \code{tbl_spark}
}
}
\description{
Compute the Inverse Document Frequency (IDF) given a collection of documents.
}
\details{
When \code{dataset} is provided for an estimator transformer, the function
  internally calls \code{ml_fit()} against \code{dataset}. Hence, the methods for
  \code{spark_connection} and \code{ml_pipeline} will then return a \code{ml_transformer}
  and a \code{ml_pipeline} with a \code{ml_transformer} appended, respectively. When
  \code{x} is a \code{tbl_spark}, the estimator will be fit against \code{dataset} before
  transforming \code{x}.

  When \code{dataset} is not specified, the constructor returns a \code{ml_estimator}, and,
  in the case where \code{x} is a \code{tbl_spark}, the estimator fits against \code{x} then
  to obtain a transformer, which is then immediately used to transform \code{x}.
}
\seealso{
See \url{http://spark.apache.org/docs/latest/ml-features.html} for
  more information on the set of transformations available for DataFrame
  columns in Spark.

Other feature transformers: \code{\link{ft_binarizer}},
  \code{\link{ft_bucketizer}},
  \code{\link{ft_chisq_selector}},
  \code{\link{ft_count_vectorizer}}, \code{\link{ft_dct}},
  \code{\link{ft_elementwise_product}},
  \code{\link{ft_feature_hasher}},
  \code{\link{ft_hashing_tf}}, \code{\link{ft_imputer}},
  \code{\link{ft_index_to_string}},
  \code{\link{ft_interaction}}, \code{\link{ft_lsh}},
  \code{\link{ft_max_abs_scaler}},
  \code{\link{ft_min_max_scaler}}, \code{\link{ft_ngram}},
  \code{\link{ft_normalizer}},
  \code{\link{ft_one_hot_encoder}}, \code{\link{ft_pca}},
  \code{\link{ft_polynomial_expansion}},
  \code{\link{ft_quantile_discretizer}},
  \code{\link{ft_r_formula}},
  \code{\link{ft_regex_tokenizer}},
  \code{\link{ft_sql_transformer}},
  \code{\link{ft_standard_scaler}},
  \code{\link{ft_stop_words_remover}},
  \code{\link{ft_string_indexer}},
  \code{\link{ft_tokenizer}},
  \code{\link{ft_vector_assembler}},
  \code{\link{ft_vector_indexer}},
  \code{\link{ft_vector_slicer}}, \code{\link{ft_word2vec}}
}
