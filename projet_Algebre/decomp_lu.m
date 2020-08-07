function [L,U] = decomp_lu(M)
	n = size(M,1);
	L = eye(n);
	U = zeros(n);

	for k=1:n
		for j=k:n
			U(k,j) = M(k,j) - L(k,1:k-1)*U(1:k-1,j);
		end
		for i=k+1:n
			L(i,k) = ( M(i,k) - L(i,1:k-1)*U(1:k-1,k))/U(k,k);
		end
	end
end