import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure InfiniteDimensionalReductionPackage {P : GroupInvariantBifurcationPackage} where
  lyapunovSchmidtReduction : Prop
  centerManifoldReduction : Prop
  equivariantBasisChoice : Prop
  lyapunovSchmidtReductionClosed : lyapunovSchmidtReduction
  centerManifoldReductionClosed : centerManifoldReduction
  equivariantBasisChoiceClosed : equivariantBasisChoice

structure InfiniteDimensionalReductionEvidence {P : GroupInvariantBifurcationPackage} (R : InfiniteDimensionalReductionPackage P) where
  lyapunovSchmidtReductionClosed : R.lyapunovSchmidtReduction
  centerManifoldReductionClosed : R.centerManifoldReduction
  equivariantBasisChoiceClosed : R.equivariantBasisChoice

def InfiniteDimensionalReductionClosed {P : GroupInvariantBifurcationPackage} (R : InfiniteDimensionalReductionPackage P) : Prop :=
  R.lyapunovSchmidtReduction ∧ R.centerManifoldReduction ∧ R.equivariantBasisChoice

theorem infinite_dimensional_reduction_closed_from_evidence {P : GroupInvariantBifurcationPackage} (R : InfiniteDimensionalReductionPackage P) (E : InfiniteDimensionalReductionEvidence R) :
    InfiniteDimensionalReductionClosed R := by
  exact And.intro E.lyapunovSchmidtReductionClosed
    (And.intro E.centerManifoldReductionClosed E.equivariantBasisChoiceClosed)

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse