import GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean.InfiniteDimensionalCenterManifold

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure BifurcationContinuationPackage (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P)
    (R : InfiniteDimensionalCenterManifoldPackage A P Q) where
  solutionCurve : ℝ → R.centerManifold
  continuationParameter : ℝ → ℝ
  implicitFunctionTheoremApplied : Prop
  branchSwitchingDetected : Prop
  stabilityChangeAlongCurve : Prop

structure BifurcationContinuationEvidence (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P)
    (R : InfiniteDimensionalCenterManifoldPackage A P Q)
    (S : BifurcationContinuationPackage A P Q R) where
  implicitFunctionTheoremAppliedClosed : S.implicitFunctionTheoremApplied
  branchSwitchingDetectedClosed : S.branchSwitchingDetected
  stabilityChangeAlongCurveClosed : S.stabilityChangeAlongCurve

def BifurcationContinuationClosed (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P)
    (R : InfiniteDimensionalCenterManifoldPackage A P Q)
    (S : BifurcationContinuationPackage A P Q R) : Prop :=
  S.implicitFunctionTheoremApplied ∧ S.branchSwitchingDetected ∧
  S.stabilityChangeAlongCurve

theorem bifurcation_continuation_closed_from_evidence (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P)
    (R : InfiniteDimensionalCenterManifoldPackage A P Q)
    (S : BifurcationContinuationPackage A P Q R)
    (E : BifurcationContinuationEvidence A P Q R S) :
    BifurcationContinuationClosed A P Q R S := by
  exact And.intro E.implicitFunctionTheoremAppliedClosed
    (And.intro E.branchSwitchingDetectedClosed E.stabilityChangeAlongCurveClosed)

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse