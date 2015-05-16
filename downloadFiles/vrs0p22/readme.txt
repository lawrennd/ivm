ReadMe file for the IVM toolbox version 0.22 Thursday, April 22, 2004 at 03:00:22
Written by Neil D. Lawrence.

This is the second release of my IVM software, it contains basic IVM functionality including point selection and kernel optimisation. 


This version introduces wholesale structural changes from the last. It is now easier to introduces your own kernels and noise models. Two perl scripts are provided as an aid to doing this. 


1) Kernel Types

Several example kernels are given:

     'ard' For backward compatability with the ard kernel in release 0.1. It combines linear and rbf ard kernels.

     'sqexp' For backwards compatability this is equivalent to the 'rbf' kernel in release 0.1.

     'mlp', 'mlpard' The multi-layer perceptron kernel from Williams' Computing with infinite networks paper. An ARD version is also provided.

     'rbf', 'rbfard' The standard radial basis function kernel and an ARD version.

     'lin', 'linard' A linear kernel and an ARD version.

     'white' Is just a white noise kernel. It is not designed to be used alone, but as an element in the compound kernel

     'bias' is for adding a bias variance term to the kernel (a positive offset) on it's own it is not a valid kernel.

     'cmpnd' The compound kernel is for creating new kernels which are linear combinations of other kernels.

The perl script for generating code for new kernels is kernelGenerator.pl

It is run with two arguments, the first is the short name for the noise model, e.g. rbf, the second is the long name, e.g. radial\ basis\ function.

2) Noise Types

Three main noise models are also provided:

      'gaussian' is the standard Gaussian noise model.

      'probit' is the probit model for classification.

      'ordered' is an ordered categorical model based on the probit.

Also there is

      'cmpnd' is for associating different noise models to different processes when learning multiple processes together. The ability to learn multiple processes is mainly included so that the next release of GPLVM code can use this IVM code base, but it may also be useful for multi-class classification noise models.

      'mgaussian' which is designed to allow multiple processes to have individually different variances (mainly for the GPLVM).

The perl script for generating code for new noise models is noiseGenerator.pl

It is run with two arguments, the first is the short name for the noise model, e.g. gaussian, the second is the long name, e.g. Gaussian\ noise\ model.

3) Demos

Four demos are provided: demClassification1, demClassification2, demRegression1 and demOrdered1 each runs a different noise model with a different kernel configuration. They display their results as they run and therefore they don't use the ivmRun function which is the normal recommended way for running code.

4) General comments

The code is now far more modular than before, this was done in an effort to improve it's readability and reduce the need for re-writes. However it may be slower than the previous version as a result.

Yet to be implemented functionality still includes:

EP updates, multi-class noise models, point removal and randomised greed selection.

Brief descriptions of the included files are given below.

ardKernCompute.m: Compute the kernel given the parameters and X.
ardKernDiagCompute.m: Compute diagonal of ard kernel.
ardKernDiagGradX.m: Gradient of ARD kernel's diagonal with respect to a point x.
ardKernDisplay.m: Display parameters of ARD kernel.
ardKernExpandParam.m: Create kernel structure from ARD parameters.
ardKernExtractParam.m: Extract parameters from ard kernel structure.
ardKernGradX.m: Gradient of ARD kernel with respect to a point x.
ardKernGradient.m: Gradient of ard kernel's parameters.
ardKernParamInit.m: ARD kernel parameter initialisation.
biasKernCompute.m: Compute the bias kernel given the parameters and X.
biasKernDiagCompute.m: Compute diagonal of bias kernel.
biasKernDiagGradX.m: Gradient of bias kernel's diagonal with respect to a point x.
biasKernDisplay.m: Display parameters of bias kernel.
biasKernExpandParam.m: Create kernel structure from bias's parameters.
biasKernExtractParam.m: Extract parameters from bias kernel structure.
biasKernGradX.m: Gradient of bias kernel with respect to a point x.
biasKernGradient.m: Gradient of bias kernel's parameters.
biasKernParamInit.m: bias kernel parameter initialisation.
cmpndGradX.m: Gradient wrt x of log-likelihood for compound noise model.
cmpndKernCompute.m: Compute the kernel given the parameters and X.
cmpndKernDiagCompute.m: Compute diagonal of compound kernel.
cmpndKernDiagGradX.m: Gradient of compound kernel's diagonal with respect to a point x.
cmpndKernExpandParam.m: Create kernel structure from ARD parameters.
cmpndKernExtractParam.m: Extract parameters from compound kernel structure.
cmpndKernGradX.m: Gradient of compound kernel with respect to a point x.
cmpndKernGradient.m: Gradient of compound kernel's parameters.
cmpndKernParamInit.m: Compound kernel parameter initialisation.
cmpndLikelihood.m: Likelihood of data under compound noise model.
cmpndLogLikelihood.m: Log-likelihood of data under compound noise model.
cmpndNoiseExpandParam.m: Expand probit noise structure from param vector.
cmpndNoiseExtractParam.m: Extract parameters from compound noise model.
cmpndNoiseGradVals.m: Gradient wrt x of log-likelihood for compound noise model.
cmpndNoiseGradientParam.m: Gradient of the compound noise model's parameters.
cmpndNoiseOut.m: Output from compound noise model.
cmpndNoiseParamInit.m: Compound noise model's parameter initialisation.
cmpndTieParameters.m: Tie parameters together.
computeInfoChange.m: Compute the information change associated with each point.
covarianceGradient.m: The gradient of the likelihood approximation wrt the covariance.
cumGaussian.m: Cumulative distribution for Gaussian.
demClassification1.m: Test IVM code on a toy feature selection
demClassification2.m: Try the IVM for classification.
demOrdered1.m: Run a demonstration of the ordered categories noise model.
demRegression1.m: The data-set is sampled from a GP with known parameters.
expTransform.m: Constrains a parameter to be positive through exponentiation.
gaussOverDiffCumGaussian.m: A gaussian in x over the difference between two cumulative Gaussians. 
gaussOverDiffCumGaussian1.m: A gaussian in x over the difference between two cumulative Gaussians. 
gaussianLikelihood.m: Likelihood of data under Gaussian noise model.
gaussianLogLikelihood.m: Log-likelihood of data under Gaussian noise model.
gaussianNoiseDisplay.m: Display the parameters of the Gaussian noise model.
gaussianNoiseExpandParam.m: Expand probit noise structure from param vector.
gaussianNoiseExtractParam.m: Extract parameters from Gaussian noise model.
gaussianNoiseGradVals.m: Gradient wrt mu and varsigma of log-likelihood for gaussian noise model.
gaussianNoiseGradientParam.m: Gradient of the Gaussian noise model's parameters.
gaussianNoiseOut.m: Output from Gaussian noise model.
gaussianNoiseParamInit.m: Gaussian noise model's parameter initialisation.
generateRegressionData.m: Tries to load a sampled data set otherwise generates it.
gnmGradX.m: Gradient wrt x of log-likelihood for gap noise model.
gnmGradientParam.m: Gradient of the gap noise model's parameters.
gnmLogLikelihood.m: Log-likelihood of data under gap noise model.
gnmNoiseExpandParam.m: Expand probit noise structure from param vector.
gnmNoiseExtractParam.m: Extract parameters from gap noise model.
gnmUpdateParams.m: Update parameters for gap noise model.
gnmUpdateSites.m: Update site parameters for gap noise model.
gradFactLinearBound.m: Gradient multiplier for linear bound.
gradLogCumGaussian.m: Gradient of the log of the cumulative Gaussian.
invCumGaussian.m: Inverser of the cumulative Gaussian.
invLinearBound.m: Constrains a parameter to be positive.
invSigmoid.m: The inverse of the sigmoid function.
ivm.m: Initialise an IVM model.
ivmAddPoint.m: Add a point.
ivmDeconstruct.m: break IVM in pieces for saving.
ivmInit.m: Initialise the IVM model.
ivmLikelihoods.m: Return the likelihood for each point for the IVM.
ivmLogLikelihood.m: Return the log-likelihood for the IVM.
ivmOptimise.m: Optimise the IVM.
ivmOptimiseIVM.m: Optimises an IVM model.
ivmOptimiseKernel.m: Optimise the kernel parameters.
ivmOptimiseNoise.m: Optimise the noise parameters.
ivmOut.m: Evaluate the output of an ivm model.
ivmPosteriorGradMeanVar.m: Gradient of mean and variances of the posterior wrt X.
ivmPosteriorMeanVar.m: Mean and variances of the posterior at points given b X.
ivmReconstruct.m: Load an IVM structure.
ivmRun.m: Run ivm on a data set.
ivmSelectPoint.m: Choose a point for inclusion from the inactive set.
ivmUpdateM.m: Update matrix M, L, v and mu.
ivmUpdateNuG.m: Update nu and g parameters associated with noise model.
ivmUpdateSites.m: Update site parameters.
kernCompute.m: Compute the kernel given the parameters and X.
kernCreate.m: Initialise a kernel structure.
kernDiagCompute.m: Compute the kernel given the parameters and X.
kernDiagGradX.m: Compute the gradient of the  kernel wrt X.
kernExpandParam.m: Expand parameters to form a kernel structure.
kernExtractParam.m: Extract parameters from kernel structure.
kernGradX.m: Compute the gradient of the  kernel wrt X.
kernGradient.m: Compute the gradient of the kernel's parameters.
kernParamInit.m: Kernel parameter initialisation.
kernTest.m: Run some tests on the specified kernel.
kernel.m: Initialise a kernel structure.
kernelGradient.m: Gradient of likelihood approximation wrt kernel parameters.
kernelObjective.m: Likelihood approximation.
linKernCompute.m: Compute the kernel given the parameters and X.
linKernDiagCompute.m: Compute diagonal of linear kernel.
linKernDiagGradX.m: Gradient of linear kernel's diagonal with respect to a point x.
linKernDisplay.m: Display parameters of linear kernel.
linKernExpandParam.m: Create kernel structure from linear kernel parameters.
linKernExtractParam.m: Extract parameters from linear kernel structure.
linKernGradX.m: Gradient of linear kernel with respect to a point X.
linKernGradient.m: Gradient of lin kernel's parameters.
linKernParamInit.m: Linear kernel parameter initialisation.
linardKernCompute.m: Compute the linear ARD kernel given the parameters and X.
linardKernDiagCompute.m: Compute diagonal of linear ARD kernel.
linardKernDiagGradX.m: Gradient of linear ARD kernel's diagonal with respect to a point x.
linardKernDisplay.m: Display parameters of linear ARD kernel.
linardKernExpandParam.m: Create kernel structure from linear ARD's parameters.
linardKernExtractParam.m: Extract parameters from linear ARD kernel structure.
linardKernGradX.m: Gradient of linear ARD kernel with respect to a point x.
linardKernGradient.m: Gradient of linear ARD kernel's parameters.
linardKernParamInit.m: linear ARD kernel parameter initialisation.
lnCumGaussian.m: log cumulative distribution for Gaussian.
logdet.m: The log of the determinant when argument is positive definite.
mgaussianLikelihood.m: Likelihood of data under Variable variance Gaussian noise model.
mgaussianLogLikelihood.m: Log-likelihood of data under Variable variance Gaussian noise model.
mgaussianNoiseDisplay.m: Display  parameters from Variable variance Gaussian noise model.
mgaussianNoiseExpandParam.m: Expand Variable variance Gaussian noise model's structure from param vector.
mgaussianNoiseExtractParam.m: Extract parameters from Variable variance Gaussian noise model.
mgaussianNoiseGradVals.m: Gradient wrt mu and varsigma of log-likelihood for Variable variance Gaussian noise model.
mgaussianNoiseGradientParam.m: Gradient of the Variable variance Gaussian noise model's parameters.
mgaussianNoiseOut.m: Ouput from Variable variance Gaussian noise model.
mgaussianNoiseParamInit.m: Variable variance Gaussian noise model's parameter initialisation.
mlpKernCompute.m: Compute the multi-layer perceptron kernel given the parameters and X.
mlpKernDiagCompute.m: Compute diagonal of multi-layer perceptron kernel.
mlpKernDiagGradX.m: Gradient of  multi-layer perceptron kernel's diagonal with respect to a point x.
mlpKernDisplay.m: Display parameters of multi-layer perceptron kernel.
mlpKernExpandParam.m: Create kernel structure from multi-layer perceptron's parameters.
mlpKernExtractParam.m: Extract parameters from multi-layer perceptron kernel structure.
mlpKernGradX.m: Gradient of multi-layer perceptron kernel with respect to a point X.
mlpKernGradient.m: Gradient of multi-layer perceptron kernel's parameters.
mlpKernParamInit.m: multi-layer perceptron kernel parameter initialisation.
mlpardKernCompute.m: Compute the multi-layer perceptron ARD kernel given the parameters and X.
mlpardKernDiagCompute.m: Compute diagonal of multi-layer perceptron ARD kernel.
mlpardKernDiagGradX.m: Gradient of multi-layer perceptron ARD kernel's diagonal with respect to a point x.
mlpardKernDisplay.m: Display parameters of multi-layer perceptron ARD kernel.
mlpardKernExpandParam.m: Create kernel structure from multi-layer perceptron ARD's parameters.
mlpardKernExtractParam.m: Extract parameters from multi-layer perceptron ARD kernel structure.
mlpardKernGradX.m: Gradient of multi-layer perceptron ARD kernel with respect to a point x.
mlpardKernGradient.m: Gradient of multi-layer perceptron ARD kernel's parameters.
mlpardKernParamInit.m: multi-layer perceptron ARD kernel parameter initialisation.
negIvmGradientNoise.m: Wrapper function for calling noise param gradients.
negIvmLogLikelihood.m: Wrapper function for calling ivm likelihoods.
negLogLogitTransform.m: Constrains a parameter to be positive.
negNoiseGradientParam.m: Wrapper function for calling noise gradients.
negNoiseLogLikelihood.m: Wrapper function for calling noise likelihoods.
ngaussian.m: Compute a Gaussian with mean 0 and variance 1.
noiseCreate.m: Initialise a noise structure.
noiseExpandParam.m: Expand the noise model's parameters from params vector.
noiseExtractParam.m: Extract the noise model's parameters.
noiseGradVals.m: Gradient of noise model wrt mu and varsigma.
noiseGradientParam.m: Gradient of the noise model's parameters.
noiseLikelihood.m: Return the likelihood for each point under the noise model.
noiseLogLikelihood.m: Return the log-likelihood under the noise model.
noiseOut.m: Give the output of the noise model given the mean and variance.
noiseParamInit.m: Noise model's parameter initialisation.
noiseTest.m: Run some tests on the specified noise model.
optimiseParams.m: Optimise parameters.
orderedLikelihood.m: Likelihood of data under ordered categorical noise model.
orderedLogLikelihood.m: Log-likelihood of data under ordered categorical noise model.
orderedNoiseDisplay.m: Display the parameters of the ordered categorical noise model.
orderedNoiseExpandParam.m: Expand ordered categorical noise model's structure from param vector.
orderedNoiseExtractParam.m: Extract parameters from ordered categorical noise model.
orderedNoiseGradVals.m: Gradient wrt mu and varsigma of log-likelihood for ordered categorical noise model.
orderedNoiseGradientParam.m: Gradient of the ordered categorical noise model's parameters.
orderedNoiseOut.m: Output from ordered categorical noise model.
orderedNoiseParamInit.m: Ordered categorical noise model's parameter initialisation.
pdinv.m: Computes the inverse of a positive definite matrix
probitLikelihood.m: Likelihood of data under probit noise model.
probitLogLikelihood.m: Log-likelihood of data under probit noise model.
probitNoiseDisplay.m: Display the parameters of the Probit noise model.
probitNoiseExpandParam.m: Expand probit noise structure from param vector.
probitNoiseExtractParam.m: Extract parameters from probit noise model.
probitNoiseGradVals.m: Gradient wrt mu and varsigma of log-likelihood for probit noise model.
probitNoiseGradientParam.m: Gradient of the probit noise model's parameters.
probitNoiseOut.m: Output from probit noise model.
probitNoiseParamInit.m: probistic classification model's parameter initialisation.
rbfKernCompute.m: Compute the kernel given the parameters and X.
rbfKernDiagCompute.m: Compute diagonal of rbf kernel.
rbfKernDiagGradX.m: Gradient of Radial basis function kernel's diagonal with respect to a point x.
rbfKernDisplay.m: Display parameters of radial basis function kernel.
rbfKernExpandParam.m: Create kernel structure from rbf parameters.
rbfKernExtractParam.m: Extract parameters from rbf kernel structure.
rbfKernGradX.m: Gradient of Radial basis function kernel with respect to a point X.
rbfKernGradient.m: Gradient of rbf kernel's parameters.
rbfKernParamInit.m: RBF kernel parameter initialisation.
rbfardKernCompute.m: Compute the radial basis function ARD kernel given the parameters and X.
rbfardKernDiagCompute.m: Compute diagonal of radial basis function ARD kernel.
rbfardKernDiagGradX.m: Gradient of radial basis function ARD kernel's diagonal with respect to a point x.
rbfardKernDisplay.m: Display parameters of radial basis function ARD kernel.
rbfardKernExpandParam.m: Create kernel structure from radial basis function ARD's parameters.
rbfardKernExtractParam.m: Extract parameters from radial basis function ARD kernel structure.
rbfardKernGradX.m: Gradient of radial basis function ARD kernel with respect to a point x.
rbfardKernGradient.m: Gradient of radial basis function ARD kernel's parameters.
rbfardKernParamInit.m: radial basis function ARD kernel parameter initialisation.
sigmoid.m: The sigmoid function
sigmoidBound.m: Constrains a parameter to be between 0 and 1.
sigmoidTransform.m: Constrains a parameter to be between 0 and 1.
sqexpKernCompute.m: Compute the squared exponential kernel given the parameters and X.
sqexpKernDiagCompute.m: Compute diagonal of squared exponential kernel.
sqexpKernDiagGradX.m: Gradient of squared exponential kernel's diagonal with respect to a point x.
sqexpKernDisplay.m: Display parameters of squared exponential kernel.
sqexpKernExpandParam.m: Create kernel structure from squared exponential's parameters.
sqexpKernExtractParam.m: Extract parameters from squared exponential kernel structure.
sqexpKernGradX.m: Gradient of squared exponential kernel with respect to a point X.
sqexpKernGradient.m: Gradient of squared exponential kernel's parameters.
sqexpKernParamInit.m: squared exponential kernel parameter initialisation.
thetaConstrain.m: Prevent kernel parameters from getting too big or small.
vrsGradX.m: Gradient wrt x of log-likelihood for various noise models.
vrsGradientParam.m: Gradient of the various noise models's parameters.
vrsLogLikelihood.m: Log-likelihood of data under various noise models.
vrsNoiseExpandParam.m: Expand probit noise structure from param vector.
vrsNoiseExtractParam.m: Extract parameters from various noise models.
vrsNoiseParamInit.m: various noise models's parameter initialisation.
whiteKernCompute.m: Compute the white noise kernel given the parameters and X.
whiteKernDiagCompute.m: Compute diagonal of white noise kernel.
whiteKernDiagGradX.m: Gradient of white noise kernel's diagonal with respect to a point x.
whiteKernDisplay.m: Display parameters of white noise kernel.
whiteKernExpandParam.m: Create kernel structure from white noise's parameters.
whiteKernExtractParam.m: Extract parameters from white noise kernel structure.
whiteKernGradX.m: Gradient of white noise kernel with respect to a point x.
whiteKernGradient.m: Gradient of white noise kernel's parameters.
whiteKernParamInit.m: white noise kernel parameter initialisation.
