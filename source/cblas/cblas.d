/**
C BLAS header.

Authors: Ilya Yaroshenko
*/
module cblas.cblas;

import std.complex : Complex;

extern(C) @system @nogc nothrow:

version(OPENBLAS)
{
	enum OPENBLAS_SEQUENTIAL = 0;
	/* OpenBLAS is compiled using normal threading model */
	enum OPENBLAS_THREAD = 1;
	/* OpenBLAS is compiled using OpenMP threading model */
	enum OPENBLAS_OPENMP = 2;	
}

///
alias CBLAS_INDEX = size_t;

version(BLASNATIVEINT)
	///
	alias blasint = ptrdiff_t;
else
	///
	alias blasint = int;

debug pragma(msg, "blasint = " ~ blasint.stringof);

///
enum CBLAS_ORDER : blasint  {
	///
	RowMajor=101,
	///
	ColMajor=102
};

///
alias Order = CBLAS_ORDER;

///
enum CBLAS_TRANSPOSE : blasint {
	///
	NoTrans=111,
	///
	Trans=112,
	///
	ConjTrans=113,
	///
	ConjNoTrans=114
};

///
alias Transpose = CBLAS_TRANSPOSE;

///
enum CBLAS_UPLO  : blasint {
	///
	Upper=121, 
	///
	Lower=122
};

///
alias Uplo = CBLAS_UPLO;

///
enum CBLAS_DIAG  : blasint {
	///
	NonUnit=131,
	///
	Unit=132
};

///
alias Diag = CBLAS_DIAG;

///
enum CBLAS_SIDE  : blasint {
	///
	Left=141,
	///
	Right=142
};

///
alias Side = CBLAS_SIDE;

version(OPENBLAS)
{
	/// Set the number of threads on runtime.
	void set_num_threads(int num_threads);
	///ditto
	void goto_set_num_threads(int num_threads);

	/// Get the build configure on runtime.
	char* get_config();

	/// Get the parallelization type which is used by OpenBLAS
	int get_parallel(); 
}

///
float  cblas_sdsdot(in blasint n, in float alpha, in float *x, in blasint incx, in float *y, in blasint incy);
///
double cblas_dsdot (in blasint n, in float *x, in blasint incx, in float *y, in blasint incy);
///
float  cblas_sdot(in blasint n, in float  *x, in blasint incx, in float  *y, in blasint incy);
///
double cblas_ddot(in blasint n, in double *x, in blasint incx, in double *y, in blasint incy);

///
Complex!float  cblas_cdotu(in blasint n, in Complex!float  *x, in blasint incx, in Complex!float  *y, in blasint incy);
///
Complex!float  cblas_cdotc(in blasint n, in Complex!float  *x, in blasint incx, in Complex!float  *y, in blasint incy);
///
Complex!double cblas_zdotu(in blasint n, in Complex!double *x, in blasint incx, in Complex!double *y, in blasint incy);
///
Complex!double cblas_zdotc(in blasint n, in Complex!double *x, in blasint incx, in Complex!double *y, in blasint incy);

///
void  cblas_cdotu_sub(in blasint n, in Complex!float  *x, in blasint incx, in Complex!float  *y, in blasint incy, Complex!float  *ret);
///
void  cblas_cdotc_sub(in blasint n, in Complex!float  *x, in blasint incx, in Complex!float  *y, in blasint incy, Complex!float  *ret);
///
void  cblas_zdotu_sub(in blasint n, in Complex!double *x, in blasint incx, in Complex!double *y, in blasint incy, Complex!double *ret);
///
void  cblas_zdotc_sub(in blasint n, in Complex!double *x, in blasint incx, in Complex!double *y, in blasint incy, Complex!double *ret);

///
float  cblas_sasum (in blasint n, in float  *x, in blasint incx);
///
double cblas_dasum (in blasint n, in double *x, in blasint incx);
///
float  cblas_scasum(in blasint n, in Complex!float  *x, in blasint incx);
///
double cblas_dzasum(in blasint n, in Complex!double *x, in blasint incx);

///
float  cblas_snrm2 (in blasint N, in float  *X, in blasint incX);
///
double cblas_dnrm2 (in blasint N, in double *X, in blasint incX);
///
float  cblas_scnrm2(in blasint N, in Complex!float  *X, in blasint incX);
///
double cblas_dznrm2(in blasint N, in Complex!double *X, in blasint incX);

///
CBLAS_INDEX cblas_isamax(in blasint n, in float  *x, in blasint incx);
///
CBLAS_INDEX cblas_idamax(in blasint n, in double *x, in blasint incx);
///
CBLAS_INDEX cblas_icamax(in blasint n, in Complex!float  *x, in blasint incx);
///
CBLAS_INDEX cblas_izamax(in blasint n, in Complex!double *x, in blasint incx);

///
void cblas_saxpy(in blasint n, in float alpha, in float *x, in blasint incx, float *y, in blasint incy);
///
void cblas_daxpy(in blasint n, in double alpha, in double *x, in blasint incx, double *y, in blasint incy);
///
void cblas_caxpy(in blasint n, in Complex!float *alpha, in Complex!float *x, in blasint incx, Complex!float *y, in blasint incy);
///
void cblas_zaxpy(in blasint n, in Complex!double *alpha, in Complex!double *x, in blasint incx, Complex!double *y, in blasint incy);

///
void cblas_scopy(in blasint n, in float *x, in blasint incx, float *y, in blasint incy);
///
void cblas_dcopy(in blasint n, in double *x, in blasint incx, double *y, in blasint incy);
///
void cblas_ccopy(in blasint n, in Complex!float *x, in blasint incx, Complex!float *y, in blasint incy);
///
void cblas_zcopy(in blasint n, in Complex!double *x, in blasint incx, Complex!double *y, in blasint incy);

///
void cblas_sswap(in blasint n, float *x, in blasint incx, float *y, in blasint incy);
///
void cblas_dswap(in blasint n, double *x, in blasint incx, double *y, in blasint incy);
///
void cblas_cswap(in blasint n, Complex!float *x, in blasint incx, Complex!float *y, in blasint incy);
///
void cblas_zswap(in blasint n, Complex!double *x, in blasint incx, Complex!double *y, in blasint incy);

///
void cblas_srot(in blasint N, float *X, in blasint incX, float *Y, in blasint incY, in float c, in float s);
///
void cblas_drot(in blasint N, double *X, in blasint incX, double *Y, in blasint incY, in double c, in double  s);

void cblas_srotg(float *a, float *b, float *c, float *s);
void cblas_drotg(double *a, double *b, double *c, double *s);

///
void cblas_srotm(in blasint N, float *X, in blasint incX, float *Y, in blasint incY, in float *P);
///
void cblas_drotm(in blasint N, double *X, in blasint incX, double *Y, in blasint incY, in double *P);

void cblas_srotmg(float *d1, float *d2, float *b1, in float b2, float *P);
void cblas_drotmg(double *d1, double *d2, double *b1, in double b2, double *P);

///
void cblas_sscal(in blasint N, in float alpha, float *X, in blasint incX);
///
void cblas_dscal(in blasint N, in double alpha, double *X, in blasint incX);
///
void cblas_cscal(in blasint N, in Complex!float *alpha, Complex!float *X, in blasint incX);
///
void cblas_zscal(in blasint N, in Complex!double *alpha, Complex!double *X, in blasint incX);
///
void cblas_csscal(in blasint N, in Complex!float alpha, Complex!float *X, in blasint incX);
///
void cblas_zdscal(in blasint N, in Complex!double alpha, Complex!double *X, in blasint incX);

///
void cblas_sgemv(in CBLAS_ORDER order,  in CBLAS_TRANSPOSE trans,  in blasint m, in blasint n, in float alpha, in float  *a, in blasint lda,  in float  *x, in blasint incx,  in float beta,  float  *y, in blasint incy);
///
void cblas_dgemv(in CBLAS_ORDER order,  in CBLAS_TRANSPOSE trans,  in blasint m, in blasint n, in double alpha, in double  *a, in blasint lda,  in double  *x, in blasint incx,  in double beta,  double  *y, in blasint incy);
///
void cblas_cgemv(in CBLAS_ORDER order,  in CBLAS_TRANSPOSE trans,  in blasint m, in blasint n, in Complex!float *alpha, in Complex!float  *a, in blasint lda,  in Complex!float  *x, in blasint incx,  in Complex!float *beta,  Complex!float  *y, in blasint incy);
///
void cblas_zgemv(in CBLAS_ORDER order,  in CBLAS_TRANSPOSE trans,  in blasint m, in blasint n, in Complex!double *alpha, in Complex!double  *a, in blasint lda,  in Complex!double  *x, in blasint incx,  in Complex!double *beta,  Complex!double  *y, in blasint incy);

///
void cblas_sger (in CBLAS_ORDER order, in blasint M, in blasint N, in float   alpha, in float  *X, in blasint incX, in float  *Y, in blasint incY, float  *A, in blasint lda);
///
void cblas_dger (in CBLAS_ORDER order, in blasint M, in blasint N, in double  alpha, in double *X, in blasint incX, in double *Y, in blasint incY, double *A, in blasint lda);
///
void cblas_cgeru(in CBLAS_ORDER order, in blasint M, in blasint N, in Complex!float  *alpha, in Complex!float  *X, in blasint incX, in Complex!float  *Y, in blasint incY, Complex!float  *A, in blasint lda);
///
void cblas_cgerc(in CBLAS_ORDER order, in blasint M, in blasint N, in Complex!float  *alpha, in Complex!float  *X, in blasint incX, in Complex!float  *Y, in blasint incY, Complex!float  *A, in blasint lda);
///
void cblas_zgeru(in CBLAS_ORDER order, in blasint M, in blasint N, in Complex!double *alpha, in Complex!double *X, in blasint incX, in Complex!double *Y, in blasint incY, Complex!double *A, in blasint lda);
///
void cblas_zgerc(in CBLAS_ORDER order, in blasint M, in blasint N, in Complex!double *alpha, in Complex!double *X, in blasint incX, in Complex!double *Y, in blasint incY, Complex!double *A, in blasint lda);

///
void cblas_strsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in float *A, in blasint lda, float *X, in blasint incX);
///
void cblas_dtrsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in double *A, in blasint lda, double *X, in blasint incX);
///
void cblas_ctrsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in Complex!float *A, in blasint lda, Complex!float *X, in blasint incX);
///
void cblas_ztrsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in Complex!double *A, in blasint lda, Complex!double *X, in blasint incX);

///
void cblas_strmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in float *A, in blasint lda, float *X, in blasint incX);
///
void cblas_dtrmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in double *A, in blasint lda, double *X, in blasint incX);
///
void cblas_ctrmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in Complex!float *A, in blasint lda, Complex!float *X, in blasint incX);
///
void cblas_ztrmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in Complex!double *A, in blasint lda, Complex!double *X, in blasint incX);

///
void cblas_ssyr(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, float *A, in blasint lda);
///
void cblas_dsyr(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, double *A, in blasint lda);
///
void cblas_cher(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in Complex!float alpha, in Complex!float *X, in blasint incX, Complex!float *A, in blasint lda);
///
void cblas_zher(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in Complex!double alpha, in Complex!double *X, in blasint incX, Complex!double *A, in blasint lda);

///
void cblas_ssyr2(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, in float *Y, in blasint incY, float *A, in blasint lda);
///
void cblas_dsyr2(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, in double *Y, in blasint incY, double *A, in blasint lda);
///
void cblas_cher2(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in Complex!float *alpha, in Complex!float *X, in blasint incX, in Complex!float *Y, in blasint incY, Complex!float *A, in blasint lda);
///
void cblas_zher2(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in Complex!double *alpha, in Complex!double *X, in blasint incX, in Complex!double *Y, in blasint incY, Complex!double *A, in blasint lda);

///
void cblas_sgbmv(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in blasint M, in blasint N, in blasint KL, in blasint KU, in float alpha, in float *A, in blasint lda, in float *X, in blasint incX, in float beta, float *Y, in blasint incY);
///
void cblas_dgbmv(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in blasint M, in blasint N, in blasint KL, in blasint KU, in double alpha, in double *A, in blasint lda, in double *X, in blasint incX, in double beta, double *Y, in blasint incY);
///
void cblas_cgbmv(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in blasint M, in blasint N, in blasint KL, in blasint KU, in Complex!float *alpha, in Complex!float *A, in blasint lda, in Complex!float *X, in blasint incX, in Complex!float *beta, Complex!float *Y, in blasint incY);
///
void cblas_zgbmv(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in blasint M, in blasint N, in blasint KL, in blasint KU, in Complex!double *alpha, in Complex!double *A, in blasint lda, in Complex!double *X, in blasint incX, in Complex!double *beta, Complex!double *Y, in blasint incY);

///
void cblas_ssbmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float *X, in blasint incX, in float beta, float *Y, in blasint incY);
///
void cblas_dsbmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double *X, in blasint incX, in double beta, double *Y, in blasint incY);


///
void cblas_stbmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in float *A, in blasint lda, float *X, in blasint incX);
///
void cblas_dtbmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in double *A, in blasint lda, double *X, in blasint incX);
///
void cblas_ctbmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in Complex!float *A, in blasint lda, Complex!float *X, in blasint incX);
///
void cblas_ztbmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in Complex!double *A, in blasint lda, Complex!double *X, in blasint incX);

///
void cblas_stbsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in float *A, in blasint lda, float *X, in blasint incX);
///
void cblas_dtbsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in double *A, in blasint lda, double *X, in blasint incX);
///
void cblas_ctbsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in Complex!float *A, in blasint lda, Complex!float *X, in blasint incX);
///
void cblas_ztbsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in Complex!double *A, in blasint lda, Complex!double *X, in blasint incX);

///
void cblas_stpmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in float *Ap, float *X, in blasint incX);
///
void cblas_dtpmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in double *Ap, double *X, in blasint incX);
///
void cblas_ctpmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in Complex!float *Ap, Complex!float *X, in blasint incX);
///
void cblas_ztpmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in Complex!double *Ap, Complex!double *X, in blasint incX);

///
void cblas_stpsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in float *Ap, float *X, in blasint incX);
///
void cblas_dtpsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in double *Ap, double *X, in blasint incX);
///
void cblas_ctpsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in Complex!float *Ap, Complex!float *X, in blasint incX);
///
void cblas_ztpsv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in Complex!double *Ap, Complex!double *X, in blasint incX);

///
void cblas_ssymv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *A, in blasint lda, in float *X, in blasint incX, in float beta, float *Y, in blasint incY);
///
void cblas_dsymv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *A, in blasint lda, in double *X, in blasint incX, in double beta, double *Y, in blasint incY);
///
void cblas_chemv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in Complex!float *alpha, in Complex!float *A, in blasint lda, in Complex!float *X, in blasint incX, in Complex!float *beta, Complex!float *Y, in blasint incY);
///
void cblas_zhemv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in Complex!double *alpha, in Complex!double *A, in blasint lda, in Complex!double *X, in blasint incX, in Complex!double *beta, Complex!double *Y, in blasint incY);


///
void cblas_sspmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *Ap, in float *X, in blasint incX, in float beta, float *Y, in blasint incY);
///
void cblas_dspmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *Ap, in double *X, in blasint incX, in double beta, double *Y, in blasint incY);

///
void cblas_sspr(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, float *Ap);
///
void cblas_dspr(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, double *Ap);

///
void cblas_chpr(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, float *A);
///
void cblas_zhpr(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, double *A);

///
void cblas_sspr2(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, in float *Y, in blasint incY, float *A);
///
void cblas_dspr2(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, in double *Y, in blasint incY, double *A);
///
void cblas_chpr2(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in Complex!float *alpha, in Complex!float *X, in blasint incX, in Complex!float *Y, in blasint incY, Complex!float *Ap);
///
void cblas_zhpr2(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in Complex!double *alpha, in Complex!double *X, in blasint incX, in Complex!double *Y, in blasint incY, Complex!double *Ap);

///
void cblas_chbmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in blasint K, in float *alpha, in float *A, in blasint lda, in float *X, in blasint incX, in float *beta, float *Y, in blasint incY);
///
void cblas_zhbmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in blasint K, in double *alpha, in double *A, in blasint lda, in double *X, in blasint incX, in double *beta, double *Y, in blasint incY);

///
void cblas_chpmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float *alpha, in float *Ap, in float *X, in blasint incX, in float *beta, float *Y, in blasint incY);
///
void cblas_zhpmv(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double *alpha, in double *Ap, in double *X, in blasint incX, in double *beta, double *Y, in blasint incY);

///
void cblas_sgemm(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in CBLAS_TRANSPOSE TransB, in blasint M, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float beta, float *C, in blasint ldc);
///
void cblas_dgemm(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in CBLAS_TRANSPOSE TransB, in blasint M, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double beta, double *C, in blasint ldc);
///
void cblas_cgemm(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in CBLAS_TRANSPOSE TransB, in blasint M, in blasint N, in blasint K, in Complex!float *alpha, in Complex!float *A, in blasint lda, in Complex!float *B, in blasint ldb, in Complex!float *beta, Complex!float *C, in blasint ldc);
///
void cblas_zgemm(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in CBLAS_TRANSPOSE TransB, in blasint M, in blasint N, in blasint K, in Complex!double *alpha, in Complex!double *A, in blasint lda, in Complex!double *B, in blasint ldb, in Complex!double *beta, Complex!double *C, in blasint ldc);

///
void cblas_ssymm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in float alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float beta, float *C, in blasint ldc);
///
void cblas_dsymm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in double alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double beta, double *C, in blasint ldc);
///
void cblas_csymm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in Complex!float *alpha, in Complex!float *A, in blasint lda, in Complex!float *B, in blasint ldb, in Complex!float *beta, Complex!float *C, in blasint ldc);
///
void cblas_zsymm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in Complex!double *alpha, in Complex!double *A, in blasint lda, in Complex!double *B, in blasint ldb, in Complex!double *beta, Complex!double *C, in blasint ldc);

///
void cblas_ssyrk(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float beta, float *C, in blasint ldc);
///
void cblas_dsyrk(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double beta, double *C, in blasint ldc); 
///
void cblas_csyrk(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in Complex!float *alpha, in Complex!float *A, in blasint lda, in Complex!float *beta, Complex!float *C, in blasint ldc);
///
void cblas_zsyrk(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in Complex!double *alpha, in Complex!double *A, in blasint lda, in Complex!double *beta, Complex!double *C, in blasint ldc);

///
void cblas_ssyr2k(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float beta, float *C, in blasint ldc);
///
void cblas_dsyr2k(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double beta, double *C, in blasint ldc);
///
void cblas_csyr2k(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in Complex!float *alpha, in Complex!float *A, in blasint lda, in Complex!float *B, in blasint ldb, in Complex!float *beta, Complex!float *C, in blasint ldc);
///
void cblas_zsyr2k(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in Complex!double *alpha, in Complex!double *A, in blasint lda, in Complex!double *B, in blasint ldb, in Complex!double *beta, Complex!double *C, in blasint ldc);

///
void cblas_strmm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in float alpha, in float *A, in blasint lda, float *B, in blasint ldb);
///
void cblas_dtrmm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in double alpha, in double *A, in blasint lda, double *B, in blasint ldb);
///
void cblas_ctrmm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in Complex!float *alpha, in Complex!float *A, in blasint lda, Complex!float *B, in blasint ldb);
///
void cblas_ztrmm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in Complex!double *alpha, in Complex!double *A, in blasint lda, Complex!double *B, in blasint ldb);

///
void cblas_strsm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in float alpha, in float *A, in blasint lda, float *B, in blasint ldb);
///
void cblas_dtrsm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in double alpha, in double *A, in blasint lda, double *B, in blasint ldb);
///
void cblas_ctrsm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in Complex!float *alpha, in Complex!float *A, in blasint lda, Complex!float *B, in blasint ldb);
///
void cblas_ztrsm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in Complex!double *alpha, in Complex!double *A, in blasint lda, Complex!double *B, in blasint ldb);

///
void cblas_chemm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in float *alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float *beta, float *C, in blasint ldc);
///
void cblas_zhemm(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in double *alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double *beta, double *C, in blasint ldc);

///
void cblas_cherk(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float beta, float *C, in blasint ldc);
///
void cblas_zherk(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double beta, double *C, in blasint ldc);

///
void cblas_cher2k(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in float *alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float beta, float *C, in blasint ldc);
///
void cblas_zher2k(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in double *alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double beta, double *C, in blasint ldc);

///
void cblas_xerbla(blasint p, char *rout, char *form, ...);
