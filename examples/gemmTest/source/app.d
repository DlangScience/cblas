import cblas;

void main()
{
    double[] A = [1, 0, 0,
                  0, 1, 1];
    double[] B = [1, 0,
                  0, 1,
                  2, 2];
    auto C = new double[2*2];

    gemm(Order.RowMajor, Transpose.NoTrans, Transpose.NoTrans,
            2, 2, 3, /*no scaling*/1,
            A.ptr, 3, B.ptr, 2, /*no addition*/0, C.ptr, 2);

    assert(C == [1, 0,
                 2, 3]);
}
