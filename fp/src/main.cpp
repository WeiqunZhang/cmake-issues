#include <AMReX.H>
#include <AMReX_REAL.H>
#include <AMReX_Print.H>

amrex::Real f ();

int main (int argc, char* argv[])
{
    amrex::Initialize(argc, argv);
    {
        amrex::Print() << "f() = " << f() << std::endl;
    }
    amrex::Finalize();
}
