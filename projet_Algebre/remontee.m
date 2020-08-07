function [x] = remontee(U, y)
	n = length(y);
	x = zeros(n,1);

	for i=n:-1:1
		x(i) = (y(i) - U(i,i+1:n)*x(i+1:n,1))/U(i,i);
	end
end