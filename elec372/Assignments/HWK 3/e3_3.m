a = [ 0, 1; -1, -2];
i = eye(2);

syms s;

disp(solve( det((s * i) - a)));
