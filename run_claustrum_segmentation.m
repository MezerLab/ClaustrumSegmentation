inDir = ''; % Directory in which the following three input files are saved
% Input files given for subject 100206 form HCP's Young Adult dataset.

cd(inDir)
t1wFile = fullfile(inDir,'T1w_acpc_dc_restore_brain.nii.gz');
tt5File = fullfile(inDir,'T1w_acpc_dc_restore_5TT.nii.gz');
fslSegFile = fullfile(inDir,'first_all_none_firstseg.nii.gz');

% Right hemisphere
outFile = fullfile(inDir,'claustrum_output','rh_claustrum.nii.gz');
segment_claustrum_rh(t1wFile, tt5File, fslSegFile, outFile)

% Left hemisphere
outFile = fullfile(inDir,'claustrum_output','lh_claustrum.nii.gz');
segment_claustrum_lh(t1wFile, tt5File, fslSegFile, outFile)
