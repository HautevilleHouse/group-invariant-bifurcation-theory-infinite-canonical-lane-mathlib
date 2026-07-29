import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure GroupInvariantBifurcationPackage where
  groupAction : Type u
  groupAction_ : GroupAction groupAction
  parameterSpace : Type v
  parameterSpace_ : TopologicalSpace parameterSpace
  stateSpace : Type w
  stateSpace_ : TopologicalSpace stateSpace
  groupEquivariantFamily : Type (max u v w)
  groupEquivariantFamily_ : GroupEquivariantFamily groupAction parameterSpace stateSpace groupEquivariantFamily
  bifurcationEquation : Prop
  symmetricSolutionBranch : Prop
  bifurcationEquationClosed : bifurcationEquation
  symmetricSolutionBranchClosed : symmetricSolutionBranch

structure GroupInvariantBifurcationEvidence (P : GroupInvariantBifurcationPackage) where
  bifurcationEquationClosed : P.bifurcationEquation
  symmetricSolutionBranchClosed : P.symmetricSolutionBranch

def GroupInvariantBifurcationClosed (P : GroupInvariantBifurcationPackage) : Prop :=
  P.bifurcationEquation ∧ P.symmetricSolutionBranch

theorem group_invariant_bifurcation_closed_from_evidence (P : GroupInvariantBifurcationPackage) (E : GroupInvariantBifurcationEvidence P) :
    GroupInvariantBifurcationClosed P := by
  exact And.intro E.bifurcationEquationClosed E.symmetricSolutionBranchClosed

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse