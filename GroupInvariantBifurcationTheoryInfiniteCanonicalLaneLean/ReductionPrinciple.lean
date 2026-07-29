import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure ReductionPrinciplePackage where
  stateSpace : Type u
  parameterSpace : Type v
  groupAction : stateSpace → stateSpace
  centerManifoldExists : Prop
  reducedSystemDefined : Prop
  bifurcationPreserved : Prop
  centerManifoldExistsTerm : centerManifoldExists
  reducedSystemDefinedTerm : reducedSystemDefined
  bifurcationPreservedTerm : bifurcationPreserved

def ReductionPrincipleClosed (R : ReductionPrinciplePackage) : Prop :=
  R.centerManifoldExists ∧ R.reducedSystemDefined ∧ R.bifurcationPreserved

theorem reduction_principle_closed (R : ReductionPrinciplePackage) : ReductionPrincipleClosed R := by
  exact And.intro R.centerManifoldExistsTerm (And.intro R.reducedSystemDefinedTerm R.bifurcationPreservedTerm)

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse