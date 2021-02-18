function [c,ceq] = constraints(x)
    c1 = x(1)*x(2)*x(3)*x(4)-25;
    c2 = x(1)^2 + x(2)^2 + x(3)^2 + x(4)^2 - 40;
    ceq1 = [];
    ceq2 = [];
    c = [c1; c2];
    ceq = [ceq1; ceq2];
end