function[e_ap] = euler_num()
% To calculate the approx. Euler number to the given no.
% of digits.
e_ap = 0;
e = exp(1);

% for n = 0:digits
%     e_ap = e_ap + 1/factorial(n);
% end
n = 0;
while 1
    e_ap = e_ap + 1/factorial(n);
    if e_ap == e
        break;
    end
    n = n+1
end
    