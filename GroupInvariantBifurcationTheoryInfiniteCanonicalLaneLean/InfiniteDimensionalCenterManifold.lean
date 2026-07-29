import GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean.EquivariantBranching

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure InfiniteDimensionalCenterManifoldPackage (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P) where
  centerManifold : Type u
  reducedFlow : centerManifold → centerManifold
  exponentialDichotomy : Prop
  invariantManifold : Prop
  reductionToCenter : Prop
  smoothness : ℕ

structure InfiniteDimensionalCenterManifoldEvidence (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P)
    (R : InfiniteDimensionalCenterManifoldPackage A P Q) where
  exponentialDichotomyClosed : R.exponentialDichotomy
  invariantManifoldClosed : R.invariantManifold
  reductionToCenterClosed : R.reductionToCenter
  smoothnessClosed : R.smoothness ≥ 1

def InfiniteDimensionalCenterManifoldClosed (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P)
    (R : InfiniteDimensionalCenterManifoldPackage A P Q) : Prop :=
  R.exponentialDichotomy ∧ R.invariantManifold ∧
  R.reductionToCenter ∧ R.smoothness ≥ 1

theorem infinite_dimensional_center_manifold_closed_from_evidence (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P)
    (R : InfiniteDimensionalCenterManifoldPackage A P Q)
    (E : InfiniteDimensionalCenterManifoldEvidence A P Q R) :
    InfiniteDimensionalCenterManifoldClosed A P Q R := by
  exact And.intro E.exponentialDichotomyClosed
    (And.intro E.invariantManifoldClosed
      (And.intro E.reductionToCenterClosed E.smoothnessClosed))

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse