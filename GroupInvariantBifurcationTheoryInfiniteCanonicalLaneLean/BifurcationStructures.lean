import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure BifurcationStructurePackage where
  groupAction : Type u
  parameterSpace : Type v
  stateSpace : Type w
  equivariantVectorField : Type x
  symmetryGroup : Type y
  groupActing : groupAction → parameterSpace → stateSpace → stateSpace
  parameterSmooth : Prop
  stateSmooth : Prop
  equivarianceCondition : Prop

structure BifurcationStructureEvidence (B : BifurcationStructurePackage) where
  parameterSmoothClosed : B.parameterSmooth
  stateSmoothClosed : B.stateSmooth
  equivarianceConditionClosed : B.equivarianceCondition

def BifurcationStructureClosed (B : BifurcationStructurePackage) : Prop :=
  B.parameterSmooth ∧ B.stateSmooth ∧ B.equivarianceCondition

theorem bifurcation_structure_closed_from_evidence (B : BifurcationStructurePackage) (E : BifurcationStructureEvidence B) :
    BifurcationStructureClosed B := by
  exact And.intro E.parameterSmoothClosed (And.intro E.stateSmoothClosed E.equivarianceConditionClosed)

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse
