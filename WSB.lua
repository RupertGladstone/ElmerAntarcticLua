
datadir = "/projappl/project_2002875/data/antarctic/"
outdir = "./vtuoutputs"
meshdb = "../mesh2D_WSB_refined"

-- ## Inversion regularisation
-- ## Lambda=1.0e10

-- ## Min threshold value for Ice thickness (Real)
MINH=100.0

-- ## levels in the vertical 30
MLEV=15  

-- ## controlling steady state iterations
IMIN=10
IMAX=300

Tol=0.01
DPtol = 0.001

-- ## for block preconditioner 
blocktol=0.001

-- ##
name = "WSB_S0"

-- ## Mesh refinement parameters

-- ##  the name of the mesh to optimize
MESH_IN="mesh2D_WSB"

MESH_OUT="mesh2D_WSB_refined"

-- ## Tolerated errors on U and H
U_err=6
H_err=500.0


-- ## mesh size limits in different regions

-- ## absolute minimum mesh size
Mminfine=450.0

-- ## minimum mesh size far from grounding line (may be higher than
-- ## Mminfine to prevent detailed refinement in slow flowing far 
-- ## inland regions).  Set equal to Mminfine if you don't want this.
Mmincoarse=1000.0

-- ## Maximum mesh size far from the grounding line 15000
Mmaxfar=8000.0

-- ## Maximum mesh size close to the grounding line 2000
Mmaxclose=600.0

-- ## maximum mesh size for ice shelves (set this to larger than
-- ## Mmaxfar if you want it to be ignored)
Mmaxshelf=1000.0

-- ## reference velocity used in refinement to set upper limit on
-- ## element size (together with distance from GL).  Sections of
-- ## grounding line with flow speeds higher than this limit will
-- ## have max mesh size Mmaxclose.  Max mesh is allowed to be
-- ## coarser for sections of slower flowing GL.  Set this very
-- ## small (e.g. 0.1) if you want it to be ignored.
refvel = 500

-- ## The distance from grounding line at which the upper limit for
-- ## the maximum mesh size is reached
GLdistlim=200000.0

-- ## The distance from the boundary at which the upper limit for
-- ## the maximum mesh size is reached 80000
Bdistlim=70000.0

-- ## For distances beyond distlim, the minimum mesh size may be
-- ## increased towards Mmincoarse on this distance scale 400000
distscale=300000.0

TOPOGRAPHY_DATA="/projappl/project_2002875/data/antarctic/BedMachineAntarctica_V3_extended.nc"
-- VELOCITY_DATA="/projappl/project_2002875/data/antarctic/antarctica_m2slim.nc"
VELOCITY_DATA="/projappl/project_2002875/data/antarctic/antarctic_ice_vel_phase_map_v01_slim.nc"
