import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure HopfBifurcationPackage where
  stateSpace : Type u
  parameterSpace : Type v
  groupAction : stateSpace → stateSpace
  linearization : stateSpace → stateSpace
  eigenvalueCrossing : Prop
  periodicOrbitExistence : Prop
  eigenvalueCrossingTerm : eigenvalueCrossing
  periodicOrbitExistenceTerm : periodicOrbitExistence

def HopfBifurcationClosed (H : HopfBifurcationPackage) : Prop :=
  H.eigenvalueCrossing ∧ H.periodicOrbitExistence

theorem hopf_bifurcation_closed (H : HopfBifurcationPackage) : HopfBifurcationClosed H := by
  exact And.intro H.eigenvalueCrossingTerm H.periodicOrbitExistenceTerm

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse