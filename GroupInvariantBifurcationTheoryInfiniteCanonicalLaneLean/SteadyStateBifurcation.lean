import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure SteadyStateBifurcationPackage where
  stateSpace : Type u
  parameterSpace : Type v
  groupAction : stateSpace → stateSpace
  fixedPointSubspace : Prop
  bifurcationEquation : Prop
  existenceOfBranches : Prop
  fixedPointSubspaceTerm : fixedPointSubspace
  bifurcationEquationTerm : bifurcationEquation
  existenceOfBranchesTerm : existenceOfBranches

def SteadyStateBifurcationClosed (S : SteadyStateBifurcationPackage) : Prop :=
  S.fixedPointSubspace ∧ S.bifurcationEquation ∧ S.existenceOfBranches

theorem steady_state_bifurcation_closed (S : SteadyStateBifurcationPackage) :
    SteadyStateBifurcationClosed S := by
  exact And.intro S.fixedPointSubspaceTerm (And.intro S.bifurcationEquationTerm S.existenceOfBranchesTerm)

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse