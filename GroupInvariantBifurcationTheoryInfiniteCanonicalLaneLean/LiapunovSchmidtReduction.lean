import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure LiapunovSchmidtReductionPackage (B : BifurcationStructurePackage) where
  splittingKernelRange : Prop
  projectionOntoKernel : Type u
  projectionOntoRange : Type v
  reducedEquation : Type w
  kernelFiniteDimensional : Prop
  reducedEquationDerived : Prop

structure LiapunovSchmidtReductionEvidence {B : BifurcationStructurePackage} (L : LiapunovSchmidtReductionPackage B) where
  kernelFiniteDimensionalClosed : L.kernelFiniteDimensional
  reducedEquationDerivedClosed : L.reducedEquationDerived

def LiapunovSchmidtReductionClosed {B : BifurcationStructurePackage} (L : LiapunovSchmidtReductionPackage B) : Prop :=
  L.kernelFiniteDimensional ∧ L.reducedEquationDerived

theorem liapunov_schmidt_reduction_closed_from_evidence {B : BifurcationStructurePackage} (L : LiapunovSchmidtReductionPackage B) (E : LiapunovSchmidtReductionEvidence L) :
    LiapunovSchmidtReductionClosed L := by
  exact And.intro E.kernelFiniteDimensionalClosed E.reducedEquationDerivedClosed

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse
