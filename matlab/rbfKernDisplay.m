function rbfKernDisplay(kern)

% RBFKERNDISPLAY Display parameters of radial basis function kernel.

% IVM

fprintf('RBF Variance: %2.4f\n', kern.variance)
fprintf('RBF inverse width: %2.4f\n', kern.inverseWidth)