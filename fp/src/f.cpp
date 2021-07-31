#include <AMReX_FArrayBox.H>

using namespace amrex;

Real f ()
{
    FArrayBox fab(Box(IntVect(0),IntVect(15)));
    fab.setVal<RunOn::Device>(1.0);
    return fab.sum<RunOn::Device>(0);
}
