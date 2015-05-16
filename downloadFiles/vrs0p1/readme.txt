ReadMe file for the IVM toolbox version 0.1 Wednesday, February 11, 2004 at 16:39:49
Written by Neil D. Lawrence.

This is the first release of my IVM software, it contains basic IVM functionality including point selection and kernel optimisation. 

Both the regression IVM and classification IVM are available.

Yet to be implemented functionality includes:

EP updates, multi-class noise models, point removal and randomised greed selection.

Brief descriptions of the included files are given below.

computeInfoChange.m: Compute the information change associated with each point.
covarianceGradient.m: The gradient of the likelihood approximation wrt the covariance.
demClassification1.m: Test IVM code on a toy feature selection
demClassification2.m: Try the IVM for classification.
demDigits.m: Try the IVM on some digits data.
demRegression1.m: Try the IVM for regression.
gaussianUpdateParams.m: Update parameters for probit noise model.
gaussianUpdateSites.m: Update sites for gaussian noise model.
generateClassificationData.m: Tries to load a sampled data set otherwise generates it.
generateRegressionData.m: Tries to load a sampled data set otherwise generates it.
heavisideUpdateParams.m: Update parameters for heaviside noise model.
heavisideUpdateSites.m: Update site parameters for heaviside model.
initTheta.m: Initialise the kernel parameters.
ivm.m: Initialise an IVM model.
ivmAddPoint.m: Add a point.
ivmInit.m: Initialise the IVM model.
ivmOptimise.m: Optimise the IVM.
ivmOptimiseIVM.m: Optimises an IVM model.
ivmOptimiseKernel.m: Optimise the kernel parameters.
ivmRun.m: Run ivm on a data set.
ivmfwd.m: Make out put predictions for the IVM
kernel.m: Compute the kernel given the parameters and X.
kernelGradient.m: Gradient of likelihood approximation wrt kernel parameters.
kernelObjective.m: Likelihood approximation.
kerneldiag.m: Compute the diagonal of the kernel.
logdet.m: The log of the determinant when argument is positive definite.
ngaussian.m: Compute a Gaussian with mean 0 and variance 1.
pdinv.m: Computes the inverse of a positive definite matrix
probitUpdateParams.m: Update parameters for probit noise model.
probitUpdateSites.m: Update site parameters for probit model.
thetaConstrain.m: Prevent kernel parameters from getting too big or small.
updateM.m: Update matrix M, L, v and mu.
updateSites.m: Update site parameters.
