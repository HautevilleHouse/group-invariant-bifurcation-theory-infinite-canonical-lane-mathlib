import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BifurcationInfiniteClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse