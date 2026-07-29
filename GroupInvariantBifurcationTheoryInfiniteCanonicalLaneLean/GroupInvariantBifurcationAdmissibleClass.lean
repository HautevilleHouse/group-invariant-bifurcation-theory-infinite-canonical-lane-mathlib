import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure BifurcationAdmissibleObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  groupAction : carrier → carrier
  invariantUnderGroup : Prop
  bifurcationParameter : ℝ
  parameterInfiniteDimensional : Prop
  conclusion : invariantUnderGroup ∧ bifurcationParameter = 0

structure AdmissibleClass where
  object : BifurcationAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BifurcationWitnessClosed (O : BifurcationAdmissibleObject) : Prop :=
  O.invariantUnderGroup ∧ O.bifurcationParameter = 0

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse