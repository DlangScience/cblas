module cblas;

import std.complex : Complex;

alias sdsdot = cblas_sdsdot;
alias dsdot = cblas_dsdot;
alias dot = cblas_sdot;
alias dot = cblas_ddot;
alias dotu = cblas_cdotu;
alias dotc = cblas_cdotc;
alias dotu = cblas_zdotu;
alias dotc = cblas_zdotc;
alias dotu_sub = cblas_cdotu_sub;
alias dotc_sub = cblas_cdotc_sub;
alias dotu_sub = cblas_zdotu_sub;
alias dotc_sub = cblas_zdotc_sub;
alias asum = cblas_sasum;
alias asum = cblas_dasum;
alias asum = cblas_scasum;
alias asum = cblas_dzasum;
alias nrm2 = cblas_snrm2;
alias nrm2 = cblas_dnrm2;
alias cnrm2 = cblas_scnrm2;
alias znrm2 = cblas_dznrm2;
alias samax = cblas_isamax;
alias damax = cblas_idamax;
alias camax = cblas_icamax;
alias zamax = cblas_izamax;
alias axpy = cblas_saxpy;
alias axpy = cblas_daxpy;
alias axpy = cblas_caxpy;
alias axpy = cblas_zaxpy;
alias copy = cblas_scopy;
alias copy = cblas_dcopy;
alias copy = cblas_ccopy;
alias copy = cblas_zcopy;
alias swap = cblas_sswap;
alias swap = cblas_dswap;
alias swap = cblas_cswap;
alias swap = cblas_zswap;
alias rot = cblas_srot;
alias rot = cblas_drot;
alias rotg = cblas_srotg;
alias rotg = cblas_drotg;
alias rotm = cblas_srotm;
alias rotm = cblas_drotm;
alias rotmg = cblas_srotmg;
alias rotmg = cblas_drotmg;
alias scal = cblas_sscal;
alias scal = cblas_dscal;
alias scal = cblas_cscal;
alias scal = cblas_zscal;
alias sscal = cblas_csscal;
alias dscal = cblas_zdscal;
alias gemv = cblas_sgemv;
alias gemv = cblas_dgemv;
alias gemv = cblas_cgemv;
alias gemv = cblas_zgemv;
alias ger = cblas_sger;
alias ger = cblas_dger;
alias geru = cblas_cgeru;
alias gerc = cblas_cgerc;
alias geru = cblas_zgeru;
alias gerc = cblas_zgerc;
alias trsv = cblas_strsv;
alias trsv = cblas_dtrsv;
alias trsv = cblas_ctrsv;
alias trsv = cblas_ztrsv;
alias trmv = cblas_strmv;
alias trmv = cblas_dtrmv;
alias trmv = cblas_ctrmv;
alias trmv = cblas_ztrmv;
alias syr = cblas_ssyr;
alias syr = cblas_dsyr;
alias her = cblas_cher;
alias her = cblas_zher;
alias syr2 = cblas_ssyr2;
alias syr2 = cblas_dsyr2;
alias her2 = cblas_cher2;
alias her2 = cblas_zher2;
alias gbmv = cblas_sgbmv;
alias gbmv = cblas_dgbmv;
alias gbmv = cblas_cgbmv;
alias gbmv = cblas_zgbmv;
alias sbmv = cblas_ssbmv;
alias sbmv = cblas_dsbmv;
alias tbmv = cblas_stbmv;
alias tbmv = cblas_dtbmv;
alias tbmv = cblas_ctbmv;
alias tbmv = cblas_ztbmv;
alias tbsv = cblas_stbsv;
alias tbsv = cblas_dtbsv;
alias tbsv = cblas_ctbsv;
alias tbsv = cblas_ztbsv;
alias tpmv = cblas_stpmv;
alias tpmv = cblas_dtpmv;
alias tpmv = cblas_ctpmv;
alias tpmv = cblas_ztpmv;
alias tpsv = cblas_stpsv;
alias tpsv = cblas_dtpsv;
alias tpsv = cblas_ctpsv;
alias tpsv = cblas_ztpsv;
alias symv = cblas_ssymv;
alias symv = cblas_dsymv;
alias hemv = cblas_chemv;
alias hemv = cblas_zhemv;
alias spmv = cblas_sspmv;
alias spmv = cblas_dspmv;
alias spr = cblas_sspr;
alias spr = cblas_dspr;
alias hpr = cblas_chpr;
alias hpr = cblas_zhpr;
alias spr2 = cblas_sspr2;
alias spr2 = cblas_dspr2;
alias hpr2 = cblas_chpr2;
alias hpr2 = cblas_zhpr2;
alias hbmv = cblas_chbmv;
alias hbmv = cblas_zhbmv;
alias hpmv = cblas_chpmv;
alias hpmv = cblas_zhpmv;
alias gemm = cblas_sgemm;
alias gemm = cblas_dgemm;
alias gemm = cblas_cgemm;
alias gemm = cblas_zgemm;
alias symm = cblas_ssymm;
alias symm = cblas_dsymm;
alias symm = cblas_csymm;
alias symm = cblas_zsymm;
alias syrk = cblas_ssyrk;
alias syrk = cblas_dsyrk;
alias syrk = cblas_csyrk;
alias syrk = cblas_zsyrk;
alias syr2k = cblas_ssyr2k;
alias syr2k = cblas_dsyr2k;
alias syr2k = cblas_csyr2k;
alias syr2k = cblas_zsyr2k;
alias trmm = cblas_strmm;
alias trmm = cblas_dtrmm;
alias trmm = cblas_ctrmm;
alias trmm = cblas_ztrmm;
alias trsm = cblas_strsm;
alias trsm = cblas_dtrsm;
alias trsm = cblas_ctrsm;
alias trsm = cblas_ztrsm;
alias hemm = cblas_chemm;
alias hemm = cblas_zhemm;
alias herk = cblas_cherk;
alias herk = cblas_zherk;
alias her2k = cblas_cher2k;
alias her2k = cblas_zher2k;
alias xerbla = cblas_xerbla;

version(OPENBLAS)
{
	enum OPENBLAS_SEQUENTIAL = 0;
	/* OpenBLAS is compiled using normal threading model */
	enum OPENBLAS_THREAD = 1;
	/* OpenBLAS is compiled using OpenMP threading model */
	enum OPENBLAS_OPENMP = 2;	
}



alias CBLAS_INDEX = size_t;
version(BLASNATIVEINT)
	alias blasint = ptrdiff_t;
else
	alias blasint = int;

pragma(msg, "blasint = "~blasint.stringof);

alias complex_float = Complex!float;
alias complex_double = Complex!double;

enum CBLAS_ORDER : blasint  {RowMajor=101, ColMajor=102};
alias Order = CBLAS_ORDER;
enum CBLAS_TRANSPOSE : blasint {NoTrans=111, Trans=112, ConjTrans=113, ConjNoTrans=114};
alias Transpose = CBLAS_TRANSPOSE;
enum CBLAS_UPLO  : blasint {Upper=121, Lower=122};
alias Uplo = CBLAS_UPLO;
enum CBLAS_DIAG  : blasint {NonUnit=131, Unit=132};
alias Diag = CBLAS_DIAG;
enum CBLAS_SIDE  : blasint {Left=141, Right=142};
alias Side = CBLAS_SIDE;
	
extern(C)
{

	version(OPENBLAS)
	{
		/*Set the number of threads on runtime.*/
		void set_num_threads(int num_threads);
		void goto_set_num_threads(int num_threads);

		/*Get the build configure on runtime.*/
		char* get_config();

		/* Get the parallelization type which is used by OpenBLAS */
		int get_parallel(); 
	}

	/* OpenBLAS is compiled for sequential use */
	float  cblas_sdsdot(const blasint n, const float alpha, const float *x, const blasint incx, const float *y, const blasint incy);
	double cblas_dsdot (const blasint n, const float *x, const blasint incx, const float *y, const blasint incy);
	float  cblas_sdot(const blasint n, const float  *x, const blasint incx, const float  *y, const blasint incy);
	double cblas_ddot(const blasint n, const double *x, const blasint incx, const double *y, const blasint incy);

	complex_float  cblas_cdotu(const blasint n, const Complex!float  *x, const blasint incx, const Complex!float  *y, const blasint incy);
	complex_float  cblas_cdotc(const blasint n, const Complex!float  *x, const blasint incx, const Complex!float  *y, const blasint incy);
	complex_double cblas_zdotu(const blasint n, const Complex!double *x, const blasint incx, const Complex!double *y, const blasint incy);
	complex_double cblas_zdotc(const blasint n, const Complex!double *x, const blasint incx, const Complex!double *y, const blasint incy);

	void  cblas_cdotu_sub(const blasint n, const Complex!float  *x, const blasint incx, const Complex!float  *y, const blasint incy, complex_float  *ret);
	void  cblas_cdotc_sub(const blasint n, const Complex!float  *x, const blasint incx, const Complex!float  *y, const blasint incy, complex_float  *ret);
	void  cblas_zdotu_sub(const blasint n, const Complex!double *x, const blasint incx, const Complex!double *y, const blasint incy, complex_double *ret);
	void  cblas_zdotc_sub(const blasint n, const Complex!double *x, const blasint incx, const Complex!double *y, const blasint incy, complex_double *ret);

	float  cblas_sasum (const blasint n, const float  *x, const blasint incx);
	double cblas_dasum (const blasint n, const double *x, const blasint incx);
	float  cblas_scasum(const blasint n, const Complex!float  *x, const blasint incx);
	double cblas_dzasum(const blasint n, const Complex!double *x, const blasint incx);

	float  cblas_snrm2 (const blasint N, const float  *X, const blasint incX);
	double cblas_dnrm2 (const blasint N, const double *X, const blasint incX);
	float  cblas_scnrm2(const blasint N, const Complex!float  *X, const blasint incX);
	double cblas_dznrm2(const blasint N, const Complex!double *X, const blasint incX);

	CBLAS_INDEX cblas_isamax(const blasint n, const float  *x, const blasint incx);
	CBLAS_INDEX cblas_idamax(const blasint n, const double *x, const blasint incx);
	CBLAS_INDEX cblas_icamax(const blasint n, const Complex!float  *x, const blasint incx);
	CBLAS_INDEX cblas_izamax(const blasint n, const Complex!double *x, const blasint incx);

	void cblas_saxpy(const blasint n, const float alpha, const float *x, const blasint incx, float *y, const blasint incy);
	void cblas_daxpy(const blasint n, const double alpha, const double *x, const blasint incx, double *y, const blasint incy);
	void cblas_caxpy(const blasint n, const Complex!float *alpha, const Complex!float *x, const blasint incx, Complex!float *y, const blasint incy);
	void cblas_zaxpy(const blasint n, const Complex!double *alpha, const Complex!double *x, const blasint incx, Complex!double *y, const blasint incy);

	void cblas_scopy(const blasint n, const float *x, const blasint incx, float *y, const blasint incy);
	void cblas_dcopy(const blasint n, const double *x, const blasint incx, double *y, const blasint incy);
	void cblas_ccopy(const blasint n, const Complex!float *x, const blasint incx, Complex!float *y, const blasint incy);
	void cblas_zcopy(const blasint n, const Complex!double *x, const blasint incx, Complex!double *y, const blasint incy);

	void cblas_sswap(const blasint n, float *x, const blasint incx, float *y, const blasint incy);
	void cblas_dswap(const blasint n, double *x, const blasint incx, double *y, const blasint incy);
	void cblas_cswap(const blasint n, Complex!float *x, const blasint incx, Complex!float *y, const blasint incy);
	void cblas_zswap(const blasint n, Complex!double *x, const blasint incx, Complex!double *y, const blasint incy);

	void cblas_srot(const blasint N, float *X, const blasint incX, float *Y, const blasint incY, const float c, const float s);
	void cblas_drot(const blasint N, double *X, const blasint incX, double *Y, const blasint incY, const double c, const double  s);

	void cblas_srotg(float *a, float *b, float *c, float *s);
	void cblas_drotg(double *a, double *b, double *c, double *s);

	void cblas_srotm(const blasint N, float *X, const blasint incX, float *Y, const blasint incY, const float *P);
	void cblas_drotm(const blasint N, double *X, const blasint incX, double *Y, const blasint incY, const double *P);

	void cblas_srotmg(float *d1, float *d2, float *b1, const float b2, float *P);
	void cblas_drotmg(double *d1, double *d2, double *b1, const double b2, double *P);

	void cblas_sscal(const blasint N, const float alpha, float *X, const blasint incX);
	void cblas_dscal(const blasint N, const double alpha, double *X, const blasint incX);
	void cblas_cscal(const blasint N, const Complex!float *alpha, Complex!float *X, const blasint incX);
	void cblas_zscal(const blasint N, const Complex!double *alpha, Complex!double *X, const blasint incX);
	void cblas_csscal(const blasint N, const Complex!float alpha, Complex!float *X, const blasint incX);
	void cblas_zdscal(const blasint N, const Complex!double alpha, Complex!double *X, const blasint incX);

	void cblas_sgemv(const CBLAS_ORDER order,  const CBLAS_TRANSPOSE trans,  const blasint m, const blasint n, const float alpha, const float  *a, const blasint lda,  const float  *x, const blasint incx,  const float beta,  float  *y, const blasint incy);
	void cblas_dgemv(const CBLAS_ORDER order,  const CBLAS_TRANSPOSE trans,  const blasint m, const blasint n, const double alpha, const double  *a, const blasint lda,  const double  *x, const blasint incx,  const double beta,  double  *y, const blasint incy);
	void cblas_cgemv(const CBLAS_ORDER order,  const CBLAS_TRANSPOSE trans,  const blasint m, const blasint n, const Complex!float *alpha, const Complex!float  *a, const blasint lda,  const Complex!float  *x, const blasint incx,  const Complex!float *beta,  Complex!float  *y, const blasint incy);
	void cblas_zgemv(const CBLAS_ORDER order,  const CBLAS_TRANSPOSE trans,  const blasint m, const blasint n, const Complex!double *alpha, const Complex!double  *a, const blasint lda,  const Complex!double  *x, const blasint incx,  const Complex!double *beta,  Complex!double  *y, const blasint incy);

	void cblas_sger (const CBLAS_ORDER order, const blasint M, const blasint N, const float   alpha, const float  *X, const blasint incX, const float  *Y, const blasint incY, float  *A, const blasint lda);
	void cblas_dger (const CBLAS_ORDER order, const blasint M, const blasint N, const double  alpha, const double *X, const blasint incX, const double *Y, const blasint incY, double *A, const blasint lda);
	void cblas_cgeru(const CBLAS_ORDER order, const blasint M, const blasint N, const Complex!float  *alpha, const Complex!float  *X, const blasint incX, const Complex!float  *Y, const blasint incY, Complex!float  *A, const blasint lda);
	void cblas_cgerc(const CBLAS_ORDER order, const blasint M, const blasint N, const Complex!float  *alpha, const Complex!float  *X, const blasint incX, const Complex!float  *Y, const blasint incY, Complex!float  *A, const blasint lda);
	void cblas_zgeru(const CBLAS_ORDER order, const blasint M, const blasint N, const Complex!double *alpha, const Complex!double *X, const blasint incX, const Complex!double *Y, const blasint incY, Complex!double *A, const blasint lda);
	void cblas_zgerc(const CBLAS_ORDER order, const blasint M, const blasint N, const Complex!double *alpha, const Complex!double *X, const blasint incX, const Complex!double *Y, const blasint incY, Complex!double *A, const blasint lda);

	void cblas_strsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const float *A, const blasint lda, float *X, const blasint incX);
	void cblas_dtrsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const double *A, const blasint lda, double *X, const blasint incX);
	void cblas_ctrsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const Complex!float *A, const blasint lda, Complex!float *X, const blasint incX);
	void cblas_ztrsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const Complex!double *A, const blasint lda, Complex!double *X, const blasint incX);

	void cblas_strmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const float *A, const blasint lda, float *X, const blasint incX);
	void cblas_dtrmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const double *A, const blasint lda, double *X, const blasint incX);
	void cblas_ctrmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const Complex!float *A, const blasint lda, Complex!float *X, const blasint incX);
	void cblas_ztrmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const Complex!double *A, const blasint lda, Complex!double *X, const blasint incX);

	void cblas_ssyr(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *X, const blasint incX, float *A, const blasint lda);
	void cblas_dsyr(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, double *A, const blasint lda);
	void cblas_cher(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const Complex!float alpha, const Complex!float *X, const blasint incX, Complex!float *A, const blasint lda);
	void cblas_zher(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const Complex!double alpha, const Complex!double *X, const blasint incX, Complex!double *A, const blasint lda);

	void cblas_ssyr2(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *X, const blasint incX, const float *Y, const blasint incY, float *A, const blasint lda);
	void cblas_dsyr2(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, const double *Y, const blasint incY, double *A, const blasint lda);
	void cblas_cher2(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const Complex!float *alpha, const Complex!float *X, const blasint incX, const Complex!float *Y, const blasint incY, Complex!float *A, const blasint lda);
	void cblas_zher2(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const Complex!double *alpha, const Complex!double *X, const blasint incX, const Complex!double *Y, const blasint incY, Complex!double *A, const blasint lda);

	void cblas_sgbmv(const CBLAS_ORDER order, const CBLAS_TRANSPOSE TransA, const blasint M, const blasint N, const blasint KL, const blasint KU, const float alpha, const float *A, const blasint lda, const float *X, const blasint incX, const float beta, float *Y, const blasint incY);
	void cblas_dgbmv(const CBLAS_ORDER order, const CBLAS_TRANSPOSE TransA, const blasint M, const blasint N, const blasint KL, const blasint KU, const double alpha, const double *A, const blasint lda, const double *X, const blasint incX, const double beta, double *Y, const blasint incY);
	void cblas_cgbmv(const CBLAS_ORDER order, const CBLAS_TRANSPOSE TransA, const blasint M, const blasint N, const blasint KL, const blasint KU, const Complex!float *alpha, const Complex!float *A, const blasint lda, const Complex!float *X, const blasint incX, const Complex!float *beta, Complex!float *Y, const blasint incY);
	void cblas_zgbmv(const CBLAS_ORDER order, const CBLAS_TRANSPOSE TransA, const blasint M, const blasint N, const blasint KL, const blasint KU, const Complex!double *alpha, const Complex!double *A, const blasint lda, const Complex!double *X, const blasint incX, const Complex!double *beta, Complex!double *Y, const blasint incY);

	void cblas_ssbmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float *X, const blasint incX, const float beta, float *Y, const blasint incY);
	void cblas_dsbmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double *X, const blasint incX, const double beta, double *Y, const blasint incY);


	void cblas_stbmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const blasint K, const float *A, const blasint lda, float *X, const blasint incX);
	void cblas_dtbmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const blasint K, const double *A, const blasint lda, double *X, const blasint incX);
	void cblas_ctbmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const blasint K, const Complex!float *A, const blasint lda, Complex!float *X, const blasint incX);
	void cblas_ztbmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const blasint K, const Complex!double *A, const blasint lda, Complex!double *X, const blasint incX);

	void cblas_stbsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const blasint K, const float *A, const blasint lda, float *X, const blasint incX);
	void cblas_dtbsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const blasint K, const double *A, const blasint lda, double *X, const blasint incX);
	void cblas_ctbsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const blasint K, const Complex!float *A, const blasint lda, Complex!float *X, const blasint incX);
	void cblas_ztbsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const blasint K, const Complex!double *A, const blasint lda, Complex!double *X, const blasint incX);

	void cblas_stpmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const float *Ap, float *X, const blasint incX);
	void cblas_dtpmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const double *Ap, double *X, const blasint incX);
	void cblas_ctpmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const Complex!float *Ap, Complex!float *X, const blasint incX);
	void cblas_ztpmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const Complex!double *Ap, Complex!double *X, const blasint incX);

	void cblas_stpsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const float *Ap, float *X, const blasint incX);
	void cblas_dtpsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const double *Ap, double *X, const blasint incX);
	void cblas_ctpsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const Complex!float *Ap, Complex!float *X, const blasint incX);
	void cblas_ztpsv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint N, const Complex!double *Ap, Complex!double *X, const blasint incX);

	void cblas_ssymv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *A, const blasint lda, const float *X, const blasint incX, const float beta, float *Y, const blasint incY);
	void cblas_dsymv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *A, const blasint lda, const double *X, const blasint incX, const double beta, double *Y, const blasint incY);
	void cblas_chemv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const Complex!float *alpha, const Complex!float *A, const blasint lda, const Complex!float *X, const blasint incX, const Complex!float *beta, Complex!float *Y, const blasint incY);
	void cblas_zhemv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const Complex!double *alpha, const Complex!double *A, const blasint lda, const Complex!double *X, const blasint incX, const Complex!double *beta, Complex!double *Y, const blasint incY);


	void cblas_sspmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *Ap, const float *X, const blasint incX, const float beta, float *Y, const blasint incY);
	void cblas_dspmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *Ap, const double *X, const blasint incX, const double beta, double *Y, const blasint incY);

	void cblas_sspr(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *X, const blasint incX, float *Ap);
	void cblas_dspr(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, double *Ap);

	void cblas_chpr(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *X, const blasint incX, float *A);
	void cblas_zhpr(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, double *A);

	void cblas_sspr2(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *X, const blasint incX, const float *Y, const blasint incY, float *A);
	void cblas_dspr2(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, const double *Y, const blasint incY, double *A);
	void cblas_chpr2(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const Complex!float *alpha, const Complex!float *X, const blasint incX, const Complex!float *Y, const blasint incY, Complex!float *Ap);
	void cblas_zhpr2(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const Complex!double *alpha, const Complex!double *X, const blasint incX, const Complex!double *Y, const blasint incY, Complex!double *Ap);

	void cblas_chbmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const blasint K, const float *alpha, const float *A, const blasint lda, const float *X, const blasint incX, const float *beta, float *Y, const blasint incY);
	void cblas_zhbmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const blasint K, const double *alpha, const double *A, const blasint lda, const double *X, const blasint incX, const double *beta, double *Y, const blasint incY);

	void cblas_chpmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const float *alpha, const float *Ap, const float *X, const blasint incX, const float *beta, float *Y, const blasint incY);
	void cblas_zhpmv(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const blasint N, const double *alpha, const double *Ap, const double *X, const blasint incX, const double *beta, double *Y, const blasint incY);

	void cblas_sgemm(const CBLAS_ORDER order, const CBLAS_TRANSPOSE TransA, const CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float *B, const blasint ldb, const float beta, float *C, const blasint ldc);
	void cblas_dgemm(const CBLAS_ORDER order, const CBLAS_TRANSPOSE TransA, const CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double *B, const blasint ldb, const double beta, double *C, const blasint ldc);
	void cblas_cgemm(const CBLAS_ORDER order, const CBLAS_TRANSPOSE TransA, const CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const Complex!float *alpha, const Complex!float *A, const blasint lda, const Complex!float *B, const blasint ldb, const Complex!float *beta, Complex!float *C, const blasint ldc);
	void cblas_zgemm(const CBLAS_ORDER order, const CBLAS_TRANSPOSE TransA, const CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const Complex!double *alpha, const Complex!double *A, const blasint lda, const Complex!double *B, const blasint ldb, const Complex!double *beta, Complex!double *C, const blasint ldc);

	void cblas_ssymm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const blasint M, const blasint N, const float alpha, const float *A, const blasint lda, const float *B, const blasint ldb, const float beta, float *C, const blasint ldc);
	void cblas_dsymm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const blasint M, const blasint N, const double alpha, const double *A, const blasint lda, const double *B, const blasint ldb, const double beta, double *C, const blasint ldc);
	void cblas_csymm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const blasint M, const blasint N, const Complex!float *alpha, const Complex!float *A, const blasint lda, const Complex!float *B, const blasint ldb, const Complex!float *beta, Complex!float *C, const blasint ldc);
	void cblas_zsymm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const blasint M, const blasint N, const Complex!double *alpha, const Complex!double *A, const blasint lda, const Complex!double *B, const blasint ldb, const Complex!double *beta, Complex!double *C, const blasint ldc);

	void cblas_ssyrk(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float beta, float *C, const blasint ldc);
	void cblas_dsyrk(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double beta, double *C, const blasint ldc); 
	void cblas_csyrk(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const Complex!float *alpha, const Complex!float *A, const blasint lda, const Complex!float *beta, Complex!float *C, const blasint ldc);
	void cblas_zsyrk(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const Complex!double *alpha, const Complex!double *A, const blasint lda, const Complex!double *beta, Complex!double *C, const blasint ldc);

	void cblas_ssyr2k(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float *B, const blasint ldb, const float beta, float *C, const blasint ldc);
	void cblas_dsyr2k(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double *B, const blasint ldb, const double beta, double *C, const blasint ldc);
	void cblas_csyr2k(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const Complex!float *alpha, const Complex!float *A, const blasint lda, const Complex!float *B, const blasint ldb, const Complex!float *beta, Complex!float *C, const blasint ldc);
	void cblas_zsyr2k(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const Complex!double *alpha, const Complex!double *A, const blasint lda, const Complex!double *B, const blasint ldb, const Complex!double *beta, Complex!double *C, const blasint ldc);

	void cblas_strmm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint M, const blasint N, const float alpha, const float *A, const blasint lda, float *B, const blasint ldb);
	void cblas_dtrmm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint M, const blasint N, const double alpha, const double *A, const blasint lda, double *B, const blasint ldb);
	void cblas_ctrmm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint M, const blasint N, const Complex!float *alpha, const Complex!float *A, const blasint lda, Complex!float *B, const blasint ldb);
	void cblas_ztrmm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint M, const blasint N, const Complex!double *alpha, const Complex!double *A, const blasint lda, Complex!double *B, const blasint ldb);

	void cblas_strsm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint M, const blasint N, const float alpha, const float *A, const blasint lda, float *B, const blasint ldb);
	void cblas_dtrsm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint M, const blasint N, const double alpha, const double *A, const blasint lda, double *B, const blasint ldb);
	void cblas_ctrsm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint M, const blasint N, const Complex!float *alpha, const Complex!float *A, const blasint lda, Complex!float *B, const blasint ldb);
	void cblas_ztrsm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE TransA, const CBLAS_DIAG Diag, const blasint M, const blasint N, const Complex!double *alpha, const Complex!double *A, const blasint lda, Complex!double *B, const blasint ldb);

	void cblas_chemm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const blasint M, const blasint N, const float *alpha, const float *A, const blasint lda, const float *B, const blasint ldb, const float *beta, float *C, const blasint ldc);
	void cblas_zhemm(const CBLAS_ORDER order, const CBLAS_SIDE Side, const CBLAS_UPLO Uplo, const blasint M, const blasint N, const double *alpha, const double *A, const blasint lda, const double *B, const blasint ldb, const double *beta, double *C, const blasint ldc);

	void cblas_cherk(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float beta, float *C, const blasint ldc);
	void cblas_zherk(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double beta, double *C, const blasint ldc);

	void cblas_cher2k(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const float *alpha, const float *A, const blasint lda, const float *B, const blasint ldb, const float beta, float *C, const blasint ldc);
	void cblas_zher2k(const CBLAS_ORDER order, const CBLAS_UPLO Uplo, const CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const double *alpha, const double *A, const blasint lda, const double *B, const blasint ldb, const double beta, double *C, const blasint ldc);

	void cblas_xerbla(blasint p, char *rout, char *form, ...);
}