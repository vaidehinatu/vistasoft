function cortMag = ph2deg(cortMag)
if cortMag.peripheralPhase == cortMag.fovealPhase
   phRange = angle(exp(sqrt(-1)*(cortMag.peripheralPhase - cortMag.fovealPhase)));
degPerRadian = cortMag.stimulusRadius/phRange;

% We have the foveal phase estimate from the fitStandardCMF
% Here, we set the estimated foveal phase to fall on the x-axis
allUPhRad = complexPh2PositiveRad(cortMag.allMeanPh) - cortMag.fitParms.fovealPhase;
cortMag.allStimDeg = degPerRadian*allUPhRad;
return;