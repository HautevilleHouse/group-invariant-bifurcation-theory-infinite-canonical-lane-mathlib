import GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure LyapunovSchmidtReductionPackage (A : AdmissibleClass) where
  infiniteDimensionalSpace : Type u
  liEpsilon : ℕ → ℝ
  invariantSubspace : Prop
  reducedBifurcationEquation : Prop
  finiteDimensionalReduction : Prop
  persistenceUnderPerturbation : Prop

structure LyapunovSchmidtReductionEvidence (A : AdmissibleClass) (P : LyapunovSchmidtReductionPackage A) where
  invariantSubspaceClosed : P.invariantSubspace
  reducedBifurcationEquationClosed : P.reducedBifurcationEquation
  finiteDimensionalReductionClosed : P.finiteDimensionalReduction
  persistenceUnderPerturbationClosed : P.persistenceUnderPerturbation

def LyapunovSchmidtReductionClosed (A : AdmissibleClass) (P : LyapunovSchmidtReductionPackage A) : Prop :=
  P.invariantSubspace ∧ P.reducedBifurcationEquation ∧
  P.finiteDimensionalReduction ∧ P.persistenceUnderPerturbation

theorem lyapunov_schmidt_reduction_closed_from_evidence (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (E : LyapunovSchmidtReductionEvidence A P) :
    LyapunovSchmidtReductionClosed A P := by
  exact And.intro E.invariantSubspaceClosed
    (And.intro E.reducedBifurcationEquationClosed
      (And.intro E.finiteDimensionalReductionClosed E.persistenceUnderPerturbationClosed))

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse