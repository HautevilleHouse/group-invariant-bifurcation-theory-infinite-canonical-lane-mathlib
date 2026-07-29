import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure BifurcationConditionPackage where
  stateSpace : Type u
  parameterSpace : Type v
  bifurcationFunction : stateSpace → parameterSpace → stateSpace
  groupAction : stateSpace → stateSpace
  equivariance : ∀ (x : stateSpace) (μ : parameterSpace), bifurcationFunction (groupAction x) μ = groupAction (bifurcationFunction x μ)
  nondegeneracy : Prop
  equivarianceTerm : equivariance
  nondegeneracyTerm : nondegeneracy

def BifurcationConditionClosed (B : BifurcationConditionPackage) : Prop :=
  B.equivariance ∧ B.nondegeneracy

theorem bifurcation_condition_closed (B : BifurcationConditionPackage) : BifurcationConditionClosed B := by
  exact And.intro B.equivarianceTerm B.nondegeneracyTerm

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse