import canonicalLaneMathlib.FixedPointSubspacePackage

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure LyapunovSchmidtReductionPackage {G : GroupActionPackage} {E : BifurcationEquationPackage G} (F : FixedPointSubspacePackage G E) where
  reducedEquation : Prop
  finiteDimensional : Prop
  groupActionOnReduced : Prop
  bifurcationPoints : Prop
  reducedEquationClosed : reducedEquation
  finiteDimensionalClosed : finiteDimensional
  groupActionOnReducedClosed : groupActionOnReduced
  bifurcationPointsClosed : bifurcationPoints

structure LyapunovSchmidtReductionEvidence {G : GroupActionPackage} {E : BifurcationEquationPackage G} {F : FixedPointSubspacePackage G E} (L : LyapunovSchmidtReductionPackage G E F) where
  reducedEquationClosed : L.reducedEquation
  finiteDimensionalClosed : L.finiteDimensional
  groupActionOnReducedClosed : L.groupActionOnReduced
  bifurcationPointsClosed : L.bifurcationPoints

def LyapunovSchmidtReductionClosed {G : GroupActionPackage} {E : BifurcationEquationPackage G} {F : FixedPointSubspacePackage G E} (L : LyapunovSchmidtReductionPackage G E F) : Prop :=
  L.reducedEquation ∧ L.finiteDimensional ∧ L.groupActionOnReduced ∧ L.bifurcationPoints

theorem lyapunov_schmidt_reduction_closed_from_evidence {G : GroupActionPackage} {E : BifurcationEquationPackage G} {F : FixedPointSubspacePackage G E} (L : LyapunovSchmidtReductionPackage G E F) (Ev : LyapunovSchmidtReductionEvidence L) : LyapunovSchmidtReductionClosed L := by
  exact And.intro Ev.reducedEquationClosed (And.intro Ev.finiteDimensionalClosed (And.intro Ev.groupActionOnReducedClosed Ev.bifurcationPointsClosed))

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse