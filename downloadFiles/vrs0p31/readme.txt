ReadMe file for the IVM toolbox version 0.31 Monday, July 12, 2004 at 19:31:18
Written by Neil D. Lawrence.

License Info
------------

This software is free for academic use. Please contact Neil Lawrence if you are interested in using the software for commercial purposes.

This software must not be distributed or modified without prior permission of the author.


This is the fourth major release of my IVM software, it contains basic IVM functionality including point selection, point removal, EP updates and kernel and noise parameter optimisation.

For details on this algorithm see the (forthcoming) technical report at
http://ext.dcs.sheffield.ac.uk/~u0015/bibpage.cgi?keyName=Lawrence:ivmTech04

It should be available from Aug/Sep 2003.
 
Changes in vs 0.31
------------------

The options are now held in a structure whose values are set in ivmOptions.m
There were some missing files in the last release, these have now been added.

The EP updates are currently unstable numerically and should be used with caution.

This version of the software now relies on the following toolboxes:

KERN vs 0.12
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

Demos
-----

Six toy demos are provided: demClassification1, demClassification2, demRegression1, demRegression2, demOrdered1 and demOrdered2. Each runs a different noise model with. They display their results as they run and therefore they don't use the ivmRun function which is the normal recommended way for running code.

Three large scale experiments are provided on the USPS data-set, demUsps1-3. The use three different types of kernel.

General comments
----------------

Since version 0.22 the code is far more modular, this was done in an effort to improve its readability and reduce the need for re-writes. However it may be slower than the previous version as a result. 

Yet to be implemented functionality still includes:

Multi-class noise models (which will probably be done mostly in the NOISE toolbox) and randomised greed selection.

File Listing
------------

demClassification1.m: Test IVM code on a toy feature selection
demClassification2.m: IVM for classification on a data-set sampled from a GP.
demOrdered1.m: Run a demonstration of the ordered categories noise model.
demOrdered2.m: Run a demonstration of the ordered categories noise model.
demRegression1.m: The data-set is sampled from a GP with known parameters.
demRegression2.m: The data-set is sampled from a GP with known parameters.
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
ivmPosteriorGradMeanVar.m: Gradient of mean and variances of the posterior wrt X.
ivmPosteriorMeanVar.m: Mean and variances of the posterior at points given by X.
ivmReconstruct.m: Load an IVM structure.
ivmRun.m: Run ivm on a data set.
ivmSelectPoint.m: Choose a point for inclusion or removal.
ivmSelectPoints.m: Selects the point for an IVM.
ivmSelectVisualise.m: Visualise the selected point.
ivmTwoDPlot.m: Make a 2-D plot of the IVM.
ivmUpdateM.m: Update matrix M, L, v and mu.
ivmUpdateNuG.m: Update nu and g parameters associated with noise model.
ivmUpdateSites.m: Update site parameters.
