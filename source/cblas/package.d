/**
D BLAS header.

Authors: Ilya Yaroshenko
*/
module cblas;

public import cblas.cblas;

version(LDC)
{
    pragma(LDC_no_moduleinfo);
}

///
alias sdsdot = cblas_sdsdot;
///
alias dsdot = cblas_dsdot;
///
alias dot = cblas_sdot;
///
alias dot = cblas_ddot;
///
alias dotu = cblas_cdotu;
///
alias dotc = cblas_cdotc;
///
alias dotu = cblas_zdotu;
///
alias dotc = cblas_zdotc;
///
alias dotu_sub = cblas_cdotu_sub;
///
alias dotc_sub = cblas_cdotc_sub;
///
alias dotu_sub = cblas_zdotu_sub;
///
alias dotc_sub = cblas_zdotc_sub;
///
alias asum = cblas_sasum;
///
alias asum = cblas_dasum;
///
alias asum = cblas_scasum;
///
alias asum = cblas_dzasum;
///
alias nrm2 = cblas_snrm2;
///
alias nrm2 = cblas_dnrm2;
///
alias cnrm2 = cblas_scnrm2;
///
alias znrm2 = cblas_dznrm2;
///
alias iamax = cblas_isamax;
///
alias iamax = cblas_idamax;
///
alias iamax = cblas_icamax;
///
alias iamax = cblas_izamax;
///
alias axpy = cblas_saxpy;
///
alias axpy = cblas_daxpy;
///
alias axpy = cblas_caxpy;
///
alias axpy = cblas_zaxpy;
///
alias copy = cblas_scopy;
///
alias copy = cblas_dcopy;
///
alias copy = cblas_ccopy;
///
alias copy = cblas_zcopy;
///
alias swap = cblas_sswap;
///
alias swap = cblas_dswap;
///
alias swap = cblas_cswap;
///
alias swap = cblas_zswap;
///
alias rot = cblas_srot;
///
alias rot = cblas_drot;
///
alias rotg = cblas_srotg;
///
alias rotg = cblas_drotg;
///
alias rotm = cblas_srotm;
///
alias rotm = cblas_drotm;
///
alias rotmg = cblas_srotmg;
///
alias rotmg = cblas_drotmg;
///
alias scal = cblas_sscal;
///
alias scal = cblas_dscal;
///
alias scal = cblas_cscal;
///
alias scal = cblas_zscal;
///
alias sscal = cblas_csscal;
///
alias dscal = cblas_zdscal;
///
alias gemv = cblas_sgemv;
///
alias gemv = cblas_dgemv;
///
alias gemv = cblas_cgemv;
///
alias gemv = cblas_zgemv;
///
alias ger = cblas_sger;
///
alias ger = cblas_dger;
///
alias geru = cblas_cgeru;
///
alias gerc = cblas_cgerc;
///
alias geru = cblas_zgeru;
///
alias gerc = cblas_zgerc;
///
alias trsv = cblas_strsv;
///
alias trsv = cblas_dtrsv;
///
alias trsv = cblas_ctrsv;
///
alias trsv = cblas_ztrsv;
///
alias trmv = cblas_strmv;
///
alias trmv = cblas_dtrmv;
///
alias trmv = cblas_ctrmv;
///
alias trmv = cblas_ztrmv;
///
alias syr = cblas_ssyr;
///
alias syr = cblas_dsyr;
///
alias her = cblas_cher;
///
alias her = cblas_zher;
///
alias syr2 = cblas_ssyr2;
///
alias syr2 = cblas_dsyr2;
///
alias her2 = cblas_cher2;
///
alias her2 = cblas_zher2;
///
alias gbmv = cblas_sgbmv;
///
alias gbmv = cblas_dgbmv;
///
alias gbmv = cblas_cgbmv;
///
alias gbmv = cblas_zgbmv;
///
alias sbmv = cblas_ssbmv;
///
alias sbmv = cblas_dsbmv;
///
alias tbmv = cblas_stbmv;
///
alias tbmv = cblas_dtbmv;
///
alias tbmv = cblas_ctbmv;
///
alias tbmv = cblas_ztbmv;
///
alias tbsv = cblas_stbsv;
///
alias tbsv = cblas_dtbsv;
///
alias tbsv = cblas_ctbsv;
///
alias tbsv = cblas_ztbsv;
///
alias tpmv = cblas_stpmv;
///
alias tpmv = cblas_dtpmv;
///
alias tpmv = cblas_ctpmv;
///
alias tpmv = cblas_ztpmv;
///
alias tpsv = cblas_stpsv;
///
alias tpsv = cblas_dtpsv;
///
alias tpsv = cblas_ctpsv;
///
alias tpsv = cblas_ztpsv;
///
alias symv = cblas_ssymv;
///
alias symv = cblas_dsymv;
///
alias hemv = cblas_chemv;
///
alias hemv = cblas_zhemv;
///
alias spmv = cblas_sspmv;
///
alias spmv = cblas_dspmv;
///
alias spr = cblas_sspr;
///
alias spr = cblas_dspr;
///
alias hpr = cblas_chpr;
///
alias hpr = cblas_zhpr;
///
alias spr2 = cblas_sspr2;
///
alias spr2 = cblas_dspr2;
///
alias hpr2 = cblas_chpr2;
///
alias hpr2 = cblas_zhpr2;
///
alias hbmv = cblas_chbmv;
///
alias hbmv = cblas_zhbmv;
///
alias hpmv = cblas_chpmv;
///
alias hpmv = cblas_zhpmv;
///
alias gemm = cblas_sgemm;
///
alias gemm = cblas_dgemm;
///
alias gemm = cblas_cgemm;
///
alias gemm = cblas_zgemm;
///
alias symm = cblas_ssymm;
///
alias symm = cblas_dsymm;
///
alias symm = cblas_csymm;
///
alias symm = cblas_zsymm;
///
alias syrk = cblas_ssyrk;
///
alias syrk = cblas_dsyrk;
///
alias syrk = cblas_csyrk;
///
alias syrk = cblas_zsyrk;
///
alias syr2k = cblas_ssyr2k;
///
alias syr2k = cblas_dsyr2k;
///
alias syr2k = cblas_csyr2k;
///
alias syr2k = cblas_zsyr2k;
///
alias trmm = cblas_strmm;
///
alias trmm = cblas_dtrmm;
///
alias trmm = cblas_ctrmm;
///
alias trmm = cblas_ztrmm;
///
alias trsm = cblas_strsm;
///
alias trsm = cblas_dtrsm;
///
alias trsm = cblas_ctrsm;
///
alias trsm = cblas_ztrsm;
///
alias hemm = cblas_chemm;
///
alias hemm = cblas_zhemm;
///
alias herk = cblas_cherk;
///
alias herk = cblas_zherk;
///
alias her2k = cblas_cher2k;
///
alias her2k = cblas_zher2k;
///
alias xerbla = cblas_xerbla;
