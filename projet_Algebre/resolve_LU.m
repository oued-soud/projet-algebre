function x = resolve_LU(A, b)
	tic
	[L U] = decomp_lu(A);
	y = descente(L, b);
	x = remontee(U, y);
	toc
end