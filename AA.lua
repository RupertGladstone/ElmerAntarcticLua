
datadir = "/projappl/project_2002875/data/antarctic/"
outdir = "./vtuoutputs"
-- meshdb = "mesh2D_AA_V7c"
meshdb = "mesh2D_AA_ZC_2kmrefined"

-- ## Inversion regularisation
Lambda=1.0e10

-- ## Min threshold value for Ice thickness (Real)
MINH=80.0

-- ## levels in the vertical
MLEV=15

-- ## controlling steady state iterations
IMIN=10
IMAX=100

Tol=0.01

DPtol = 0.001

-- ## for block preconditioner 
blocktol          = 0.0001  -- linear system convergence tolerance for individual blocks 1-3 in block preconditioner
blocktol_pressure = 0.00001 -- linear system convergence tolerance for individual block 4 in block preconditioner
blockOutInterval  = 20      -- output interval for blocks in block preconditioner
OuterOutInterval  = 10      -- output interval for outer loop in block preconditioner
OuterMaxIter      = 100000  -- Maximum linear iterations for outer loop in block preconditioner
blockMaxIter      = 2000    -- Maximum linear iterations for blocks in block preconditioner
outerLinTol       = 1e-6    -- Linear convergence tolerance for outer loop in block preconditioner

TOPOGRAPHY_DATA = "/projappl/project_2002875/data/antarctic/bedmachineantarctica_2019-11-05_v01_vostok.nc"
VELOCITY_DATA = "/projappl/project_2002875/data/antarctic/antarctica_m2slim.nc"
DHDT_DATA = ""
SLIP_DATA = "/projappl/project_2002875/data/antarctic/aa_v3_e8_l11_beta.nc"
SMB_DATA = "/projappl/project_2002875/data/antarctic/smbref_1995_2014_mar.nc"
VISCOSITY_DATA = "/projappl/project_2002875/data/antarctic/ant08_b2_future25-06_hist0001_MuMean_pat94.nc"