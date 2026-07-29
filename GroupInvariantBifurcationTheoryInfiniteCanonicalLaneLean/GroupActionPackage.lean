import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure GroupActionPackage where
  group : Type u
  groupLaw : Group group
  manifold : Type v
  action : group → manifold → manifold
  smoothAction : Prop
  actionIsSmooth : smoothAction

structure GroupActionEvidence (G : GroupActionPackage) where
  groupLawClosed : G.groupLaw
  actionIsSmoothClosed : G.smoothAction

def GroupActionClosed (G : GroupActionPackage) : Prop :=
  G.groupLaw ∧ G.smoothAction

theorem group_action_closed_from_evidence (G : GroupActionPackage) (E : GroupActionEvidence G) : GroupActionClosed G := by
  exact And.intro E.groupLawClosed E.actionIsSmoothClosed

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse