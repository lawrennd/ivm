IVM software
Version 0.32		Tuesday 22 Nov 2005 at 08:18
Copyright (c) 2005 Neil D. Lawrence

Changes in vs 0.32
------------------

This code no longer works under MATLAB 6.1, it requires MATLAB 7.0 or higher to run.
 
This version of the software now relies on the following toolboxes:

KERN vs 0.14
------------

This toolbox implements the different kernels. IVM interacts with this toolbox through an interface which involves files starting with kern.

NOISE vs 0.12
-------------

This toolbox implements the different noise models. IVM interacts with this toolbox through an interface which involves files starting with noise.

NDLUTIL vs 0.12
---------------

This toolbox implements some generic functions which could be used beyond the ivm toolbox, for example sigmoid.m, cumGaussian.m

OPTIMI vs 0.12
--------------

This toolbox implements functions which allow non-linear transformations between parameters to be optimised. For example it allows variances to be optimised in log space.

PRIOR vs 0.12
-------------

This toolbox allows priors to be placed over parameters, at the moment this is used so that MAP solutions can be found for the parameters rather than type-II maximum likelihood. The priors were written for the Null Category Noise Model (see NCNM toolbox) so that an exponential prior could be placed over the process variances. The rest of its funcitonality has not been tested.

ROCHOL vs 0.12
--------------

This toolbox implements the rank one Cholesky updates. These are need when points are removed or EP updates are applied to selected points.

Changes in vs 0.31
------------------

The options are now held in a structure whose values are set in ivmOptions.m
There were some missing files in the last release, these have now been added.

The EP updates are currently unstable numerically and should be used with caution.

Demos
-----

Six toy demos are provided: demClassification1, demClassification2, demRegression1, demRegression2, demOrdered1 and demOrdered2. Each runs a different noise model with. They display their results as they run and therefore they don't use the ivmRun function which is the normal recommended way for running code.

Three large scale experiments are provided on the USPS data-set, demUsps1-3. The use three different types of kernel.

General comments
----------------

Since version 0.22 the code is far more modular, this was done in an effort to improve its readability and reduce the need for re-writes. However it may be slower than the previous version as a result. 

Yet to be implemented functionality still includes:

Multi-class noise models (which will probably be done mostly in the NOISE toolbox) and randomised greed selection.


MATLAB Files
------------

Matlab files associated with the toolbox are:

demClassification1.m: Test IVM code on a toy feature selection
demClassification2.m: IVM for classification on a data-set sampled from a GP.
demClassification3.m: IVM for classification on a data-set sampled from a GP.
demMlpMouthData2.m: Try on Ismael's vowels number 2.
demMouthData2.m: Try on Ismael's vowels number 2.
demOrdered1.m: Run a demonstration of the ordered categories noise model.
demOrdered2.m: Run a demonstration of the ordered categories noise model.
demPumadyn1.m: Try the IVM on the pumadyn robot arm data.
demPumadyn2.m: Try the IVM on the pumadyn robot arm data.
demPumadyn3.m: Try the IVM on the pumadyn robot arm data.
demPumadyn4.m: Try the IVM on the pumadyn robot arm data.
demPumadynSeeger1.m: Try the IVM on the pumadyn robot arm data.
demRegression1.m: The data-set is sampled from a GP with known parameters.
demRegression2.m: The data-set is sampled from a GP with known parameters.
demRegression3.m: The data-set is sampled from a GP with known parameters.
demRegression4.m: The data-set is sampled from a GP with known parameters.
demUsps1.m: Try the IVM on the USPS digits data.
demUsps2.m: Try the IVM on the USPS digits data.
demUsps3.m: Try the ARD IVM on some digits data.
ivm.m: Initialise an IVM model.
ivm3dPlot.m: Make a 3-D or contour plot of the IVM.
ivmAddPoint.m: Add a point.
ivmApproxGradX.m: Returns the gradient of the approximat log-likelihood wrt x.
ivmApproxLogLikeKernGrad.m: Gradient of the approximate likelihood wrt kernel parameters.
ivmApproxLogLikelihood.m: Return the approximate log-likelihood for the IVM.
ivmComputeInfoChange.m: Compute the information change associated with each point.
ivmContour.m: Special contour plot showing decision boundary.
ivmCovarianceGradient.m: The gradient of the likelihood approximation wrt the covariance.
ivmDeconstruct.m: break IVM in pieces for saving.
ivmDisplay.m: Display parameters of ivm model.
ivmDowndateM.m: Remove point from M, L, mu and varSigma.
ivmDowndateNuG.m: Downdate nu and g parameters associated with noise model.
ivmDowndateSites.m: Downdate site parameters.
ivmEpOptimise.m: Optimise the IVM making use of point removal.
ivmEpUpdateM.m: Update matrix M, L, varSigma and mu for EP.
ivmEpUpdatePoint.m: Do an EP update of a point.
ivmGradX.m: Returns the gradient of the log-likelihood wrt x.
ivmGunnarData.m: Script for running experiments on Gunnar data.
ivmInit.m: Initialise the IVM model.
ivmKernelGradient.m: Gradient of likelihood approximation wrt kernel parameters.
ivmKernelObjective.m: Likelihood approximation.
ivmLikelihoods.m: Return the likelihood for each point for the IVM.
ivmLoadData.m: Load a dataset.
ivmLogLikelihood.m: Return the log-likelihood for the IVM.
ivmMeshVals.m: Give the output of the IVM for contour plot display.
ivmNegGradientNoise.m: Wrapper function for calling noise param gradients.
ivmNegLogLikelihood.m: Wrapper function for calling ivm likelihoods.
ivmOptimise.m: Optimise the IVM.
ivmOptimiseIVM.m: Selects the points for an IVM model.
ivmOptimiseKernel.m: Optimise the kernel parameters.
ivmOptimiseNoise.m: Optimise the noise parameters.
ivmOptions.m: Initialise an options structure.
ivmOut.m: Evaluate the output of an ivm model.
ivmPath.m: Brings dependent toolboxes into the path.
ivmPosteriorGradMeanVar.m: Gradient of mean and variances of the posterior wrt X.
ivmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
ivmReconstruct.m: Reconstruct an IVM form component parts.
ivmRun.m: Run ivm on a data set.
ivmRunDataSet.m: Try the IVM on a data set and save the results.
ivmRunDataSetRegression.m: Try the IVM on a data set and save the results.
ivmRunDataSetRegression2.m: Try the IVM on a data set and save the results.
ivmSelectPoint.m: Choose a point for inclusion or removal.
ivmSelectPoints.m: Selects the point for an IVM.
ivmSelectVisualise.m: Visualise the selected point.
ivmTwoDPlot.m: Make a 2-D plot of the IVM.
ivmUpdateM.m: Update matrix M, L, v and mu.
ivmUpdateNuG.m: Update nu and g parameters associated with noise model.
ivmUpdateSites.m: Update site parameters.
ivmUspsResults.m: Summarise the USPS result files in LaTeX.
ivmVers.m: Brings dependent toolboxes into the path.
ivmVirtual.m: Create virtual data points with the specified invariance.
vivmRunDataSet.m: Try the virtual IVM on a data set and save the results.
vivmRunDataSetLearn.m: Try the virtual IVM on a data set and save the results.
vivmUspsResults.m: Summarise the USPS result files in LaTeX.
