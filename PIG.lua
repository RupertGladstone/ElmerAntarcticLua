
datadir = "/projappl/project_2002875/data/antarctic/"
outdir = "./vtuoutputs"
meshdb = "../mesh2D_PIG4"


-- ## Min threshold value for Ice thickness (Real)
MINH = 150.0
-- ## MINH = 200.0

-- ## levels in the vertical
MLEV = 15

-- ## controlling steady state iterations
IMIN = 10
IMAX = 300

Tol = 0.01

DPtol = 0.001

-- ## timestep for transient runs on this mesh
DTTRANS = 0.06

-- #################################################
-- ## For GlaDS
Aglen = 2.5e-25*yearinsec*MPainPa^3.0

-- ## For the sheet
betas = 1.5
Ar = Aglen
-- ## Ks = 0.05*yearinsec*(1.0/MPainPa)^(1.0-betas)
Ks = 0.0005*yearinsec*(1.0/MPainPa)^(1.0-betas)

-- ##  For the Channels
betac = 1.5
Kc = 0.1*yearinsec*(1.0/MPainPa)^(1.0-betac)
Ac = Aglen
Cw = 4220.0*yearinsec^2
Lw = 334000.0*yearinsec^2



-- ## for block preconditioner 
blocktol          = 0.0001  -- linear system convergence tolerance for individual blocks 1-3 in block preconditioner
blocktol_pressure = 0.00001 -- linear system convergence tolerance for individual block 4 in block preconditioner
blockOutInterval  = 20      -- output interval for blocks in block preconditioner
OuterOutInterval  = 10      -- output interval for outer loop in block preconditioner
OuterMaxIter      = 100000   -- Maximum linear iterations for outer loop in block preconditioner
blockMaxIter      = 2000    -- Maximum linear iterations for blocks in block preconditioner
outerLinTol       = 1e-6    -- Linear convergence tolerance for outer loop in block preconditioner

VELOCITY_DATA = "/projappl/project_2002875/data/antarctic/antarctica_m2slim.nc"
