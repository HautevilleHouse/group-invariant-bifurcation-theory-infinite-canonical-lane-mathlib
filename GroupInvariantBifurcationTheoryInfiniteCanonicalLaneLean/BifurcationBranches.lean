import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure BifurcationBranchesPackage {P : GroupInvariantBifurcationPackage} {R : InfiniteDimensionalReductionPackage P} where
  bifurcationEquationReduced : Prop
  symmetryBreakingBranches : Prop
  stabilityAnalysis : Prop
  bifurcationEquationReducedClosed : bifurcationEquationReduced
  symmetryBreakingBranchesClosed : symmetryBreakingBranches
  stabilityAnalysisClosed : stabilityAnalysis

structure BifurcationBranchesEvidence {P : GroupInvariantBifurcationPackage} {R : InfiniteDimensionalReductionPackage P} (B : BifurcationBranchesPackage P R) where
  bifurcationEquationReducedClosed : B.bifurcationEquationReduced
  symmetryBreakingBranchesClosed : B.symmetryBreakingBranches
  stabilityAnalysisClosed : B.stabilityAnalysis

def BifurcationBranchesClosed {P : GroupInvariantBifurcationPackage} {R : InfiniteDimensionalReductionPackage P} (B : BifurcationBranchesPackage P R) : Prop :=
  B.bifurcationEquationReduced ∧ B.symmetryBreakingBranches ∧ B.stabilityAnalysis

theorem bifurcation_branches_closed_from_evidence {P : GroupInvariantBifurcationPackage} {R : InfiniteDimensionalReductionPackage P} (B : BifurcationBranchesPackage P R) (E : BifurcationBranchesEvidence B) :
    BifurcationBranchesClosed B := by
  exact And.intro E.bifurcationEquationReducedClosed
    (And.intro E.symmetryBreakingBranchesClosed E.stabilityAnalysisClosed)

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse